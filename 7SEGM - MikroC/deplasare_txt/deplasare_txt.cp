#line 1 "C:/Users/User/Desktop/IMED/MPMC/proiect/7SEGM - MikroC/deplasare_txt/deplasare_txt.c"

 sbit Chip_Select at P1_1_bit;


unsigned char comanda,caracter_sosit,oprire, temp_char;
unsigned int viteza, s, d;
void afiseaza_txt(),stanga(), dreapta();

char text[16]={0x67, 0x06, 0x5b, 0x06, 0x4e, 0x3e, 0x0f, 0x4f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
char afis_on[8]={0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
char afis_off[8]={0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};


void max7219_init1() {
 Chip_Select = 0;
 SPI1_write(0x09);
 SPI1_write(0x00);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(0x0A);
 SPI1_write(0x0F);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(0x0B);
 SPI1_write(0x07);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(0x0C);
 SPI1_write(0x01);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(0x00);
 SPI1_write(0xFF);
 Chip_Select = 1;
}
void afiseaza_txt(char *text){
 Chip_Select = 0;
 SPI1_write(8);
 SPI1_write(text[0]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(7);
 SPI1_write(text[1]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(6);
 SPI1_write(text[2]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(5);
 SPI1_write(text[3]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(4);
 SPI1_write(text[4]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(3);
 SPI1_write(text[5]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(2);
 SPI1_write(text[6]);
 Chip_Select = 1;

 Chip_Select = 0;
 SPI1_write(1);
 SPI1_write(text[7]);
 Chip_Select = 1;
}

void main() {
viteza=100;
oprire=0;
s=0;

UART1_Init(4800);
delay_ms(100);

SPI1_init();
max7219_init1();
afiseaza_txt(text);

while(1) {
 if(UART1_Data_Ready())
 {
 caracter_sosit = UART1_Read();
 UART1_Write(caracter_sosit);
 }

 switch(caracter_sosit)
 {
 case 'A': oprire=1; afiseaza_txt(afis_on); break;
 case 'S': oprire=1; afiseaza_txt(afis_off); break;
 case 'P': oprire=0; break;
 case 'O': oprire=1; break;
 case 'F': if(viteza>10) viteza-=10; break;
 case 'W': viteza+=10; break;
 case 'L': comanda=caracter_sosit; break;
 case 'R': comanda=caracter_sosit; break;
 }
 caracter_sosit='y';
if(oprire==0){
switch(comanda) {
 case 'L': stanga(); break;
 case 'R': dreapta(); break;
 case 'A': afiseaza_txt(afis_on); break;
 case 'S': afiseaza_txt(afis_off); break;
}}}}
void stanga()
{if (oprire==0){
 temp_char=text[0];
 for (s=0; s<15; s++){
 text[s]=text[s+1];}
 text[15]=temp_char;
 afiseaza_txt(text);
 vdelay_ms(viteza);}}
void dreapta()
{if (oprire==0){
 temp_char=text[15];
 for (d=15; d>0; d--){
 text[d]=text[d-1];}
 text[0]=temp_char;
 afiseaza_txt(text);
 vdelay_ms(viteza);}}
