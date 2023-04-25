// LCD module connections
sbit LCD_RS at P1_2_bit;
sbit LCD_EN at P1_5_bit;

sbit LCD_D4 at P3_4_bit;
sbit LCD_D5 at P3_5_bit;
sbit LCD_D6 at P3_6_bit;
sbit LCD_D7 at P3_7_bit;
// End LCD module connections

// OneWire pinout
sbit OW_Bit at P2_1_bit;
// end OneWire definition

//  Set TEMP_RESOLUTION to the corresponding resolution of used DS18x20 sensor:
//  18S20: 9  (default setting; can be 9,10,11,or 12)
//  18B20: 12
const unsigned short TEMP_RESOLUTION = 9;

unsigned char caracter_sosit,oprire,conti;
unsigned temp;
void Display_Temperature(unsigned temp), Citeste_temp(), m_conti_on(), m_conti_off(), m_single(), m_clear();

char text[] = "000.0000";
char text1[] = "00.00";

char msg[17]; //declare array set to max size required plus 1 [for terminator] for copying into

// copy const to ram string
char * CopyConst2Ram(char * dest, const char * src){
  char * d ;
  d = dest;
  for(;*dest++ = *src++;)
    ;
  return d;
}

const char mod_lucru_txt[] = "M. LUCRU:";
const char mod_lucru_txt1[] = "C.ON";
const char mod_lucru_txt2[] = "C.OFF";
const char mod_lucru_txt3[] = "SINGLE";
const char mod_lucru_txt4[] = "CLEAR";

const char text_temp0[] = "Temp-->";

void main() {
  UART1_Init(4800);  //Initializare modul UART la 4800 biti/s
  delay_ms(100);     // Asteptare stabilizare UART
  UART1_Write_Text("Start");

  oprire=0;
  conti=0;

  Lcd_Init();                                    // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                           // Clear LCD
  Lcd_Cmd(_LCD_CURSOR_OFF);                      // Turn cursor off
  Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
  Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt1));
  Lcd_Out(2, 1, CopyConst2Ram(msg,text_temp0));
  Lcd_Chr(2,15,178);
  Lcd_Chr(2,16,'C');


  //--- main loop
  while (1) {
  if (UART1_Data_Ready()) {
  caracter_sosit=UART1_Read();

  }
  switch (caracter_sosit) {
  case 'O': m_conti_on(); break;   //Mod continuu on
  case 'F': m_conti_off(); break;  //Mod continuu off
  case 'S': m_single(); break;     //Mod single
  case 'X': m_clear(); break;      //Mod clear
  }
  caracter_sosit='y';
  if (oprire==0){
  if (conti==0) {
           Citeste_temp();
         LCD_OUT(2,9,"     ");
         delay_ms(500);
         Display_Temperature(temp);
         delay_ms(1000);
  }
  else
  {
  Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
  Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt4));
  }
   if (oprire==1)
  {
   if (conti==0)
  {

   }
  else
  {
   Citeste_temp();
   Display_Temperature(temp);

}
}
}
}
}

void m_conti_on(){
 oprire=0;
 conti=0;
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
  Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt1));
  Lcd_out(2,1,CopyConst2Ram(msg,text_temp0));
  Lcd_Chr(2,15,178);
  Lcd_Chr(2,16,'C');
 }
 void m_conti_off(){
 oprire=1;
 conti=0;
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
  Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt2));
  Lcd_out(2,1,CopyConst2Ram(msg,text_temp0));
  Lcd_Chr(2,15,178);
  Lcd_Chr(2,16,'C');
}
 void m_single(){
 oprire=1;
 conti=1;
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
  Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt3));
  Lcd_out(2,1,CopyConst2Ram(msg,text_temp0));
  Citeste_temp();
  Display_Temperature(temp);
  Lcd_Chr(2,15,178);
  Lcd_Chr(2,16,'C');
}
 void m_clear(){
 oprire=0;
 conti=1;
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
  Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt4));
  Lcd_Out(2, 1, CopyConst2Ram(msg,text_temp0));
 }


void Citeste_temp()  {
    //--- perform temperature reading
    Ow_Reset();                                  // Onewire reset signal
    Ow_Write(0xCC);                              // Issue command SKIP_ROM
    Ow_Write(0x44);                              // Issue command CONVERT_T
    Delay_us(120);

    Ow_Reset();
    Ow_Write(0xCC);                              // Issue command SKIP_ROM
    Ow_Write(0xBE);                              // Issue command READ_SCRATCHPAD

    temp =  Ow_Read();
    temp = (Ow_Read() << 8) + temp;
  }



void Display_Temperature(unsigned int temp2write) {
  const unsigned short RES_SHIFT = TEMP_RESOLUTION - 8;
  char temp_whole;
  unsigned int temp_fraction;

  // check if temperature is negative
  if (temp2write & 0x8000) {
    text[0] = '-';
    temp2write = ~temp2write + 1;
  }

  // extract temp_whole
  temp_whole = temp2write >> RES_SHIFT ;

  // convert temp_whole to characters
  if (temp_whole/100)
     text[0] = temp_whole/100  + 48;
  else
     text[0] = '0';

  text[1] = (temp_whole/10)%10 + 48;             // Extract tens digit
  text1[0]=text[1];
  text[2] =  temp_whole%10     + 48;             // Extract ones digit
  text1[1]=text[2];
  // extract temp_fraction and convert it to unsigned int
  temp_fraction  = temp2write << (4-RES_SHIFT);
  temp_fraction &= 0x000F;
  temp_fraction *= 625;

  // convert temp_fraction to characters
  text[4] =  temp_fraction/1000    + 48;         // Extract thousands digit
  text[5] = (temp_fraction/100)%10 + 48;         // Extract hundreds digit
  text[6] = (temp_fraction/10)%10  + 48;         // Extract tens digit
  text[7] =  temp_fraction%10      + 48;         // Extract ones digit
  text1[3]=text[4];
  text1[4]=text[5];

  // print temperature on LCD

  Lcd_Out(2, 9, text1);
}
