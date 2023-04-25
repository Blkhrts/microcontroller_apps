#line 1 "C:/Users/User/Desktop/IMED/MPMC/proiect/LCD_TEXT - MikroC/temperatura/temperatura.c"

sbit LCD_RS at P1_2_bit;
sbit LCD_EN at P1_5_bit;

sbit LCD_D4 at P3_4_bit;
sbit LCD_D5 at P3_5_bit;
sbit LCD_D6 at P3_6_bit;
sbit LCD_D7 at P3_7_bit;



sbit OW_Bit at P2_1_bit;





const unsigned short TEMP_RESOLUTION = 9;

unsigned char caracter_sosit,oprire,conti;
unsigned temp;
void Display_Temperature(unsigned temp), Citeste_temp(), m_conti_on(), m_conti_off(), m_single(), m_clear();

char text[] = "000.0000";
char text1[] = "00.00";

char msg[17];


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
 UART1_Init(4800);
 delay_ms(100);
 UART1_Write_Text("Start");

 oprire=0;
 conti=0;

 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
 Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt1));
 Lcd_Out(2, 1, CopyConst2Ram(msg,text_temp0));
 Lcd_Chr(2,15,178);
 Lcd_Chr(2,16,'C');



 while (1) {
 if (UART1_Data_Ready()) {
 caracter_sosit=UART1_Read();

 }
 switch (caracter_sosit) {
 case 'O': m_conti_on(); break;
 case 'F': m_conti_off(); break;
 case 'S': m_single(); break;
 case 'X': m_clear(); break;
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


void Citeste_temp() {

 Ow_Reset();
 Ow_Write(0xCC);
 Ow_Write(0x44);
 Delay_us(120);

 Ow_Reset();
 Ow_Write(0xCC);
 Ow_Write(0xBE);

 temp = Ow_Read();
 temp = (Ow_Read() << 8) + temp;
 }



void Display_Temperature(unsigned int temp2write) {
 const unsigned short RES_SHIFT = TEMP_RESOLUTION - 8;
 char temp_whole;
 unsigned int temp_fraction;


 if (temp2write & 0x8000) {
 text[0] = '-';
 temp2write = ~temp2write + 1;
 }


 temp_whole = temp2write >> RES_SHIFT ;


 if (temp_whole/100)
 text[0] = temp_whole/100 + 48;
 else
 text[0] = '0';

 text[1] = (temp_whole/10)%10 + 48;
 text1[0]=text[1];
 text[2] = temp_whole%10 + 48;
 text1[1]=text[2];

 temp_fraction = temp2write << (4-RES_SHIFT);
 temp_fraction &= 0x000F;
 temp_fraction *= 625;


 text[4] = temp_fraction/1000 + 48;
 text[5] = (temp_fraction/100)%10 + 48;
 text[6] = (temp_fraction/10)%10 + 48;
 text[7] = temp_fraction%10 + 48;
 text1[3]=text[4];
 text1[4]=text[5];



 Lcd_Out(2, 9, text1);
}
