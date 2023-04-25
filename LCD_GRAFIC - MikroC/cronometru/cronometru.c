int sec=0, mnt=0, ora=0;
char *txt_afis1, *txt_afis2;
char s_ore[3],s_mnt[3],s_sec[3];
unsigned char comanda, caracter_sosit, oprire=0;
// Glcd module connections
        char GLCD_DataPort at P2;

        sbit GLCD_CS1 at P0_2_bit;
        sbit GLCD_CS2 at P0_3_bit;
        sbit GLCD_RS  at P0_4_bit;
        sbit GLCD_RW  at P0_5_bit;
        sbit GLCD_EN  at P0_6_bit;
        sbit GLCD_RST at P0_7_bit;
// End Glcd module connections

void main() {
  comanda='y';

  UART1_Init(4800);               // Initializare modul UART1
  delay_ms(100);                 // Asteptare stabilizare UART

  Glcd_Init();               // Initializare GLCD
  Glcd_Fill(0x00);           // Stergere GLCD
  Glcd_Set_Font(Character8x7, 8, 7, 32);   // setare font, latime 8, inaltime 7, offset 32
  txt_afis1 = "CRONOMETRU";
  txt_afis2 = " 00 - 00 - 00";
  Glcd_Write_Text(txt_afis1, 20 , 3, 1);
  Glcd_Write_Text(txt_afis2, 1 , 5, 1);
  Glcd_Write_Char('-', 37, 5, 1);
  Glcd_Write_Char('-', 82, 5, 1);
  oprire=0;
  while(1)  {
  if(UART1_Data_Ready())
  {
  caracter_sosit = UART1_Read();
  UART1_Write(caracter_sosit);  //Este trimis inapoi ca un ecou
  }

  switch(caracter_sosit)          //Test caracter sosit
  {
  case 'P': oprire=0;                  break;
  case 'O': oprire=1;                  break;
  case 'R': ora=0,mnt=0,sec=0, GLCD_Write_Text(txt_afis2, 1, 5, 1), oprire=1;      break;
  }
  caracter_sosit='y';
  if(oprire==0)
  {
  delay_ms(1000);
  sec=sec+1;
  ByteToStr(sec,s_sec);
  Glcd_Write_Text(s_sec, 91, 5, 1);
  if (sec<10)
  {
  GLcd_Write_Text("0",100,5,1);
  }
  if(sec==60)
  {
  sec=0;
  mnt=mnt+1;
  ByteToStr(mnt,s_mnt);
  Glcd_Write_Text(s_mnt, 46, 5, 1);
  if (mnt<10)
  {
  GLcd_Write_Text("0",55,5,1);
  }}
if(mnt==60)
  {
  mnt=0;
  ora=ora+1;
  ByteToStr(ora,s_ore);
  Glcd_Write_Text(s_ore, 1, 5, 1);
  if (ora<10)
  {
  GLcd_Write_Text("0",10,5,1);
  }
  if(ora==99)
  {
  ora=0;
  mnt=0;
  sec=0;
}}}}}
