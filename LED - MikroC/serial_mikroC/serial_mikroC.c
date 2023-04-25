unsigned char comanda,caracter_sosit,oprire;
unsigned int viteza;
void Efect1(),Efect2(),Efect3(),Efect4(),Aprinde(),Stinge();

void main() {

  UART1_Init(4800);  //Initializare modul UART la 4800 biti/s
  Delay_ms(100);     // Asteptare stabilizare UART

    P0=0x00;                // stingere LED-uri
    P1=0x00;
    P2=0x00;
    P3=0x03;            // cu exceptia pinilor implicati de comunicatia seriala
    viteza=100;
    oprire=0;

   while (1) {                    // Bucla infinita
    if (UART1_Data_Ready()) {     // Daca a sosit un caracter,
      caracter_sosit = UART1_Read();     // acesta este citit,
      UART1_Write(caracter_sosit);       // si trimis inapoi ca ecou
      }

   switch (caracter_sosit) {                  // Test caracter sosit
      case '1': comanda=caracter_sosit;  break;
      case '2': comanda=caracter_sosit;  break;
      case '3': comanda=caracter_sosit;  break;
      case '4': comanda=caracter_sosit;  break;
      case 'A': comanda=caracter_sosit;  break;
      case 'S': comanda=caracter_sosit;  break;
      case 'P': oprire=0; break;
      case 'O': oprire=1; break;
      case 'F': if(viteza>10) viteza=viteza-10; break;
      case 'W': viteza=viteza+10; break;
      }
      caracter_sosit='y';
      
 if(oprire==0) {
   switch (comanda) {                  // Test caracter sosit
      case '1': Efect1();  break;
      case '2': Efect2();  break;
      case '3': Efect3();  break;
      case '4': Efect4();  break;
      case 'A': Aprinde(); break;
      case 'S': Stinge();  break;
      }
    }
  }
}

void Efect1() {
     P0=0x08;
     P1=0x18;
     P2=0x88;
     P3=0xF7;
     vdelay_ms(viteza);

     P2=0x8A;
     P3=0xF3;
     vdelay_ms(viteza);

     P1=0x1A;
     P2=0x88;
     P3=0xF3;
     vdelay_ms(viteza);

     P0=0x09;
     P1=0x18;
     vdelay_ms(viteza);

     P0=0x48;
     vdelay_ms(viteza);

     P0=0x08;
     P1=0x58;
     vdelay_ms(viteza);

     P0=0x28;
     P1=0x18;
     vdelay_ms(viteza);

     P0=0x18;
     vdelay_ms(viteza);

     P1_4_bit=0;
     vdelay_ms(viteza);

     P1_4_bit=1;
     vdelay_ms(viteza);

     P1_4_bit=0;
     vdelay_ms(viteza);

     P0=0x18;
     vdelay_ms(viteza);

     P0=0x28;
     vdelay_ms(viteza);

     P0=0x48;
     vdelay_ms(viteza);

     P0=0x88;
     vdelay_ms(viteza);
}

void Efect2() {
     P0=0xFF;
     P1=0xFF;
     P2=0xFF;
     P3=0xFF;
     vdelay_ms(viteza);

     P2=0xF7;
     vdelay_ms(viteza);

     P1=0xF3;
     P2=0xFB;
     vdelay_ms(viteza);

     P0=0xE1;
     P1=0xE3;
     vdelay_ms(viteza);

     P0=0xC1;
     P1=0x83;
     vdelay_ms(viteza);

     P2_3_bit=0;
     vdelay_ms(viteza);

     P2_3_bit=1;
     vdelay_ms(viteza);

     P2_3_bit=0;
     vdelay_ms(viteza);

     P0=0xFF;
     P1=0xFF;
     P2=0xFF;
     P3=0xFF;
     vdelay_ms(viteza);

     P0=0x00;
     P1=0x00;
     P2=0x00;
     P2=0x03;
     vdelay_ms(viteza);

     P0=0x7E;
     P1=0x42;
     P2=0x52;
     P3=0x77;
     vdelay_ms(viteza);

     P1=0x12;
     P2=0x12;
     P3=0x7F;
     vdelay_ms(viteza);

     P1=0x04;
     P2=0x04;
     vdelay_ms(viteza);

     P1=0x4A;
     P2=0x4A;
     P3=0x43;
     vdelay_ms(viteza);

     P1=0x42;
     P2=0x42;
     P3=0x7F;
     vdelay_ms(viteza);

     P0=0x3E;
     P1=0x40;
     P2=0x40;
     P3=0x3F;
     vdelay_ms(viteza);

     P0=0x7E;
     P1=0x4A;
     P2=0x4A;
     P3=0x43;
     vdelay_ms(viteza);

     P0=0x7E;
     P1=0x1A;
     P2=0x2A;
     P3=0x4F;
     vdelay_ms(viteza);

     P0=0x64;
     P1=0x10;
     P2=0x10;
     P3=0x67;
     vdelay_ms(viteza);

     P0=0x00;
     P1=0x00;
     P2=0x00;
     P3=0x03;
     vdelay_ms(viteza);
}

void Efect3() {
     P0=0x00;
     P1=0xE0;
     P2=0x40;
     P3=0xE3;
     vdelay_ms(viteza);

     P0=0xE0;
     P1=0x40;
     P2=0xE0;
     P3=0x03;
     vdelay_ms(viteza);

     P0=0x00;
     P1=0xE1;
     P2=0x41;
     P3=0xE3;
     vdelay_ms(viteza);

     P1=0xF3;
     P2=0x43;
     vdelay_ms(viteza);

     P1=0xEE;
     P2=0x46;
     vdelay_ms(viteza);

     P0=0xE1;
     P1=0x40;
     P2=0xE0;
     P3=0x03;
     vdelay_ms(viteza);

     P0=0xF3;
     P1=0x41;
     vdelay_ms(viteza);

     P0=0xEB;
     P1=0x43;
     vdelay_ms(viteza);

     P0=0xEE;
     P1=0x46;
     P3=0x03;
     vdelay_ms(viteza);

     P0=0x00;
     P1=0xE0;
     P2=0x41;
     P3=0xE3;
     vdelay_ms(viteza);

     P2=0x41;
     P3=0xF3;
     vdelay_ms(viteza);

     P1=0xE1;
     P2=0x43;
     P3=0xEF;
     vdelay_ms(viteza);

     P1=0xE0;
     P2=0x40;
     P3=0xE3;
     vdelay_ms(viteza);

     P1=0xE0;
     P2=0x40;
     P3=0xE3;
     vdelay_ms(viteza);

     P1=0x70;
     P2=0x20;
     P3=0x73;
     vdelay_ms(viteza);

     P1=0x38;
     P2=0x10;
     P3=0x3B;
     vdelay_ms(viteza);

     P1=0x1C;
     P2=0x08;
     P3=0x1F;
     vdelay_ms(viteza);

     P1=0x0E;
     P2=0x04;
     P3=0x0F;
     vdelay_ms(viteza);

     P1=0x07;
     P2=0x02;
     P3=0x07;
     vdelay_ms(viteza);

     P1=0x01;
     P2=0x00;
     P3=0x03;
     vdelay_ms(viteza);

     P1=0x00;
     P2=0x00;
     P3=0x03;
     vdelay_ms(viteza);
}

void Efect4() {
     P0=0xEB;
     P1=0xD5;
     P2=0xEB;
     P3=0xD7;
     vdelay_ms(viteza);

     P0=0xD5;
     P1=0xEB;
     P2=0xD5;
     P3=0xEB;
     vdelay_ms(viteza);

     P0=0xEB;
     P1=0xD5;
     P2=0xC1;
     P3=0xC3;
     vdelay_ms(viteza);

     P0=0xC1;
     P1=0xC1;
     P2=0xEB;
     P3=0xD7;
     vdelay_ms(viteza);

     P0=0xEB;
     P1=0xD5;
     P2=0xEB;
     P3=0xD7;
     vdelay_ms(viteza);

     P0=0xD5;
     P1=0xEB;
     P2=0xD5;
     P3=0xEB;
     vdelay_ms(viteza);

     P1=0xE9;
     P3=0xEB;
     vdelay_ms(viteza);

     P0=0xD1;
     P2=0xD1;
     vdelay_ms(viteza);

     P1=0xE0;
     P2=0xD0;
     P3=0xE3;
     vdelay_ms(viteza);

     P0=0xC1;
     P1=0xE0;
     P2=0xC0;
     P3=0xE3;
     vdelay_ms(viteza);

     P0=0xC0;
     P1=0xC0;
     P2=0xC0;
     P3=0xC3;
     vdelay_ms(viteza);

     P1=0xE0;
     P2=0xE0;
     vdelay_ms(viteza);

     P0=0xE0;
     P1=0xD0;
     P2=0xD0;
     P3=0xE3;
     vdelay_ms(viteza);

     P0=0xF0;
     P1=0xC8;
     P2=0xC8;
     P3=0xF3;
     vdelay_ms(viteza);

     P0=0xD8;
     P1=0xE4;
     P2=0xE4;
     P3=0xDB;
     vdelay_ms(viteza);

     P0=0xCC;
     P1=0xD2;
     P2=0xD2;
     P3=0xCF;
     vdelay_ms(viteza);

     P0=0xC6;
     P1=0xC9;
     P2=0xC9;
     P3=0xC7;
     vdelay_ms(viteza);
}

void Aprinde() {
     P0=0xff;
     P1=0xff;
     P2=0xff;
     P3=0xff;
     vdelay_ms(viteza);
}

void Stinge() {
     P0=0x00;
     P1=0x00;
     P2=0x00;
     P3=0x03;
     vdelay_ms(viteza);
}
