
_max7219_init1:
;deplasare_txt.c,14 :: 		void max7219_init1() {
;deplasare_txt.c,15 :: 		Chip_Select = 0;           // SELECT MAX
	CLR P1_1_bit+0
;deplasare_txt.c,16 :: 		SPI1_write(0x09);
	MOV FARG_SPI1_Write_data_out+0, #9
	LCALL _SPI1_Write+0
;deplasare_txt.c,17 :: 		SPI1_write(0x00);             // Raw mode for digit decoding
	MOV FARG_SPI1_Write_data_out+0, #0
	LCALL _SPI1_Write+0
;deplasare_txt.c,18 :: 		Chip_Select = 1;           // DESELECT MAX
	SETB P1_1_bit+0
;deplasare_txt.c,20 :: 		Chip_Select = 0;           // SELECT MAX
	CLR P1_1_bit+0
;deplasare_txt.c,21 :: 		SPI1_write(0x0A);
	MOV FARG_SPI1_Write_data_out+0, #10
	LCALL _SPI1_Write+0
;deplasare_txt.c,22 :: 		SPI1_write(0x0F);          // Segment luminosity intensity
	MOV FARG_SPI1_Write_data_out+0, #15
	LCALL _SPI1_Write+0
;deplasare_txt.c,23 :: 		Chip_Select = 1;           // DESELECT MAX
	SETB P1_1_bit+0
;deplasare_txt.c,25 :: 		Chip_Select = 0;           // SELECT MAX
	CLR P1_1_bit+0
;deplasare_txt.c,26 :: 		SPI1_write(0x0B);
	MOV FARG_SPI1_Write_data_out+0, #11
	LCALL _SPI1_Write+0
;deplasare_txt.c,27 :: 		SPI1_write(0x07);          // Display refresh - toti digitii
	MOV FARG_SPI1_Write_data_out+0, #7
	LCALL _SPI1_Write+0
;deplasare_txt.c,28 :: 		Chip_Select = 1;           // DESELECT MAX
	SETB P1_1_bit+0
;deplasare_txt.c,30 :: 		Chip_Select = 0;           // SELECT MAX
	CLR P1_1_bit+0
;deplasare_txt.c,31 :: 		SPI1_write(0x0C);
	MOV FARG_SPI1_Write_data_out+0, #12
	LCALL _SPI1_Write+0
;deplasare_txt.c,32 :: 		SPI1_write(0x01);          // Turn on the display
	MOV FARG_SPI1_Write_data_out+0, #1
	LCALL _SPI1_Write+0
;deplasare_txt.c,33 :: 		Chip_Select = 1;           // DESELECT MAX
	SETB P1_1_bit+0
;deplasare_txt.c,35 :: 		Chip_Select = 0;           // SELECT MAX
	CLR P1_1_bit+0
;deplasare_txt.c,36 :: 		SPI1_write(0x00);
	MOV FARG_SPI1_Write_data_out+0, #0
	LCALL _SPI1_Write+0
;deplasare_txt.c,37 :: 		SPI1_write(0xFF);          // No test
	MOV FARG_SPI1_Write_data_out+0, #255
	LCALL _SPI1_Write+0
;deplasare_txt.c,38 :: 		Chip_Select = 1;           // DESELECT MAX
	SETB P1_1_bit+0
;deplasare_txt.c,39 :: 		}
	RET
; end of _max7219_init1

_afiseaza_txt:
;deplasare_txt.c,40 :: 		void afiseaza_txt(char *text){
;deplasare_txt.c,41 :: 		Chip_Select = 0;           // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,42 :: 		SPI1_write(8);             // selectie digit 8
	MOV FARG_SPI1_Write_data_out+0, #8
	LCALL _SPI1_Write+0
;deplasare_txt.c,43 :: 		SPI1_write(text[0]); // afis. caracter 1
	MOV R0, FARG_afiseaza_txt_text+0
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,44 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,46 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,47 :: 		SPI1_write(7);            // selectie digit 7
	MOV FARG_SPI1_Write_data_out+0, #7
	LCALL _SPI1_Write+0
;deplasare_txt.c,48 :: 		SPI1_write(text[1]); // afis. caracter 2
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #1
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,49 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,51 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,52 :: 		SPI1_write(6);            // selectie digit 6
	MOV FARG_SPI1_Write_data_out+0, #6
	LCALL _SPI1_Write+0
;deplasare_txt.c,53 :: 		SPI1_write(text[2]); // afis. caracter 3
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #2
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,54 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,56 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,57 :: 		SPI1_write(5);            // selectie digit 5
	MOV FARG_SPI1_Write_data_out+0, #5
	LCALL _SPI1_Write+0
;deplasare_txt.c,58 :: 		SPI1_write(text[3]); // afis. caracter 4
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #3
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,59 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,61 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,62 :: 		SPI1_write(4);            // selectie digit 4
	MOV FARG_SPI1_Write_data_out+0, #4
	LCALL _SPI1_Write+0
;deplasare_txt.c,63 :: 		SPI1_write(text[4]); // afis. caracter 5
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #4
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,64 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,66 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,67 :: 		SPI1_write(3);            // selectie digit 3
	MOV FARG_SPI1_Write_data_out+0, #3
	LCALL _SPI1_Write+0
;deplasare_txt.c,68 :: 		SPI1_write(text[5]); // afis. caracter 6
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #5
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,69 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,71 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,72 :: 		SPI1_write(2);            // selectie digit 2
	MOV FARG_SPI1_Write_data_out+0, #2
	LCALL _SPI1_Write+0
;deplasare_txt.c,73 :: 		SPI1_write(text[6]); // afis. caracter 7
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #6
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,74 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,76 :: 		Chip_Select = 0;          // select max7219
	CLR P1_1_bit+0
;deplasare_txt.c,77 :: 		SPI1_write(1);            // selectie digit 1
	MOV FARG_SPI1_Write_data_out+0, #1
	LCALL _SPI1_Write+0
;deplasare_txt.c,78 :: 		SPI1_write(text[7]); // afis. caracter 8
	MOV A, FARG_afiseaza_txt_text+0
	ADD A, #7
	MOV R0, A
	MOV FARG_SPI1_Write_data_out+0, @R0
	LCALL _SPI1_Write+0
;deplasare_txt.c,79 :: 		Chip_Select = 1;          // deselect max7219
	SETB P1_1_bit+0
;deplasare_txt.c,80 :: 		}
	RET
; end of _afiseaza_txt

_main:
	MOV SP+0, #128
;deplasare_txt.c,82 :: 		void main() {
;deplasare_txt.c,83 :: 		viteza=100;
	MOV _viteza+0, #100
	MOV _viteza+1, #0
;deplasare_txt.c,84 :: 		oprire=0;
	MOV _oprire+0, #0
;deplasare_txt.c,85 :: 		s=0;
	MOV _s+0, #0
	MOV _s+1, #0
;deplasare_txt.c,87 :: 		UART1_Init(4800);               // Initializare modul UART1
	ORL PCON+0, #128
	MOV TH1+0, #245
	MOV TL1+0, #245
	LCALL _UART1_Init+0
;deplasare_txt.c,88 :: 		delay_ms(100);                 // Asteptare stabilizare UART
	MOV R6, 163
	MOV R7, 30
	DJNZ R7, 
	DJNZ R6, 
	NOP
;deplasare_txt.c,90 :: 		SPI1_init();      // Initializare SPI module
	LCALL _SPI1_Init+0
;deplasare_txt.c,91 :: 		max7219_init1();  // initializare  max7219
	LCALL _max7219_init1+0
;deplasare_txt.c,92 :: 		afiseaza_txt(text);
	MOV FARG_afiseaza_txt_text+0, #_text+0
	LCALL _afiseaza_txt+0
;deplasare_txt.c,94 :: 		while(1) {
L_main0:
;deplasare_txt.c,95 :: 		if(UART1_Data_Ready())
	LCALL _UART1_Data_Ready+0
	MOV A, R0
	JZ L_main2
;deplasare_txt.c,97 :: 		caracter_sosit = UART1_Read();
	LCALL _UART1_Read+0
	MOV _caracter_sosit+0, 0
;deplasare_txt.c,98 :: 		UART1_Write(caracter_sosit);  //Este trimis inapoi ca un ecou
	MOV FARG_UART1_Write_data_+0, 0
	LCALL _UART1_Write+0
;deplasare_txt.c,99 :: 		}
L_main2:
;deplasare_txt.c,101 :: 		switch(caracter_sosit)          //Test caracter sosit
	SJMP L_main3
;deplasare_txt.c,103 :: 		case 'A': oprire=1; afiseaza_txt(afis_on);  break;
L_main5:
	MOV _oprire+0, #1
	MOV FARG_afiseaza_txt_text+0, #_afis_on+0
	LCALL _afiseaza_txt+0
	LJMP L_main4
;deplasare_txt.c,104 :: 		case 'S': oprire=1; afiseaza_txt(afis_off);  break;
L_main6:
	MOV _oprire+0, #1
	MOV FARG_afiseaza_txt_text+0, #_afis_off+0
	LCALL _afiseaza_txt+0
	LJMP L_main4
;deplasare_txt.c,105 :: 		case 'P': oprire=0; break;
L_main7:
	MOV _oprire+0, #0
	LJMP L_main4
;deplasare_txt.c,106 :: 		case 'O': oprire=1; break;
L_main8:
	MOV _oprire+0, #1
	LJMP L_main4
;deplasare_txt.c,107 :: 		case 'F': if(viteza>10) viteza-=10; break;
L_main9:
	SETB C
	MOV A, _viteza+0
	SUBB A, #10
	MOV A, _viteza+1
	SUBB A, #0
	JC L_main10
	CLR C
	MOV A, _viteza+0
	SUBB A, #10
	MOV _viteza+0, A
	MOV A, _viteza+1
	SUBB A, #0
	MOV _viteza+1, A
L_main10:
	SJMP L_main4
;deplasare_txt.c,108 :: 		case 'W': viteza+=10; break;
L_main11:
	MOV A, #10
	ADD A, _viteza+0
	MOV _viteza+0, A
	MOV A, #0
	ADDC A, _viteza+1
	MOV _viteza+1, A
	SJMP L_main4
;deplasare_txt.c,109 :: 		case 'L': comanda=caracter_sosit;  break;
L_main12:
	MOV _comanda+0, _caracter_sosit+0
	SJMP L_main4
;deplasare_txt.c,110 :: 		case 'R': comanda=caracter_sosit;  break;
L_main13:
	MOV _comanda+0, _caracter_sosit+0
	SJMP L_main4
;deplasare_txt.c,111 :: 		}
L_main3:
	MOV A, _caracter_sosit+0
	XRL A, #65
	JZ L_main5
	MOV A, _caracter_sosit+0
	XRL A, #83
	JZ L_main6
	MOV A, _caracter_sosit+0
	XRL A, #80
	JZ L_main7
	MOV A, _caracter_sosit+0
	XRL A, #79
	JZ L_main8
	MOV A, _caracter_sosit+0
	XRL A, #70
	JZ L_main9
	MOV A, _caracter_sosit+0
	XRL A, #87
	JZ L_main11
	MOV A, _caracter_sosit+0
	XRL A, #76
	JZ L_main12
	MOV A, _caracter_sosit+0
	XRL A, #82
	JZ L_main13
L_main4:
;deplasare_txt.c,112 :: 		caracter_sosit='y';
	MOV _caracter_sosit+0, #121
;deplasare_txt.c,113 :: 		if(oprire==0){
	MOV A, _oprire+0
	JNZ L_main14
;deplasare_txt.c,114 :: 		switch(comanda) {
	SJMP L_main15
;deplasare_txt.c,115 :: 		case 'L': stanga();  break;
L_main17:
	LCALL _stanga+0
	SJMP L_main16
;deplasare_txt.c,116 :: 		case 'R': dreapta();  break;
L_main18:
	LCALL _dreapta+0
	SJMP L_main16
;deplasare_txt.c,117 :: 		case 'A': afiseaza_txt(afis_on);  break;
L_main19:
	MOV FARG_afiseaza_txt_text+0, #_afis_on+0
	LCALL _afiseaza_txt+0
	SJMP L_main16
;deplasare_txt.c,118 :: 		case 'S': afiseaza_txt(afis_off);  break;
L_main20:
	MOV FARG_afiseaza_txt_text+0, #_afis_off+0
	LCALL _afiseaza_txt+0
	SJMP L_main16
;deplasare_txt.c,119 :: 		}}}}
L_main15:
	MOV A, _comanda+0
	XRL A, #76
	JZ L_main17
	MOV A, _comanda+0
	XRL A, #82
	JZ L_main18
	MOV A, _comanda+0
	XRL A, #65
	JZ L_main19
	MOV A, _comanda+0
	XRL A, #83
	JZ L_main20
L_main16:
L_main14:
	LJMP L_main0
	SJMP #254
; end of _main

_stanga:
;deplasare_txt.c,120 :: 		void stanga()
;deplasare_txt.c,121 :: 		{if (oprire==0){
	MOV A, _oprire+0
	JNZ L_stanga21
;deplasare_txt.c,122 :: 		temp_char=text[0];
	MOV _temp_char+0, _text+0
;deplasare_txt.c,123 :: 		for (s=0; s<15; s++){
	MOV _s+0, #0
	MOV _s+1, #0
L_stanga22:
	CLR C
	MOV A, _s+0
	SUBB A, #15
	MOV A, _s+1
	SUBB A, #0
	JNC L_stanga23
;deplasare_txt.c,124 :: 		text[s]=text[s+1];}
	MOV A, #_text+0
	ADD A, _s+0
	MOV R0, A
	MOV A, #1
	ADD A, _s+0
	MOV R1, A
	MOV A, #0
	ADDC A, _s+1
	MOV R2, A
	MOV A, #_text+0
	ADD A, R1
	MOV R1, A
	MOV A, @R1
	MOV @R0, A
;deplasare_txt.c,123 :: 		for (s=0; s<15; s++){
	MOV A, #1
	ADD A, _s+0
	MOV _s+0, A
	MOV A, #0
	ADDC A, _s+1
	MOV _s+1, A
;deplasare_txt.c,124 :: 		text[s]=text[s+1];}
	SJMP L_stanga22
L_stanga23:
;deplasare_txt.c,125 :: 		text[15]=temp_char;
	MOV _text+15, _temp_char+0
;deplasare_txt.c,126 :: 		afiseaza_txt(text);
	MOV FARG_afiseaza_txt_text+0, #_text+0
	LCALL _afiseaza_txt+0
;deplasare_txt.c,127 :: 		vdelay_ms(viteza);}}
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
L_stanga21:
	RET
; end of _stanga

_dreapta:
;deplasare_txt.c,128 :: 		void dreapta()
;deplasare_txt.c,129 :: 		{if (oprire==0){
	MOV A, _oprire+0
	JNZ L_dreapta25
;deplasare_txt.c,130 :: 		temp_char=text[15];
	MOV _temp_char+0, _text+15
;deplasare_txt.c,131 :: 		for (d=15; d>0; d--){
	MOV _d+0, #15
	MOV _d+1, #0
L_dreapta26:
	SETB C
	MOV A, _d+0
	SUBB A, #0
	MOV A, _d+1
	SUBB A, #0
	JC L_dreapta27
;deplasare_txt.c,132 :: 		text[d]=text[d-1];}
	MOV A, #_text+0
	ADD A, _d+0
	MOV R0, A
	CLR C
	MOV A, _d+0
	SUBB A, #1
	MOV R1, A
	MOV A, _d+1
	SUBB A, #0
	MOV R2, A
	MOV A, #_text+0
	ADD A, R1
	MOV R1, A
	MOV A, @R1
	MOV @R0, A
;deplasare_txt.c,131 :: 		for (d=15; d>0; d--){
	CLR C
	MOV A, _d+0
	SUBB A, #1
	MOV _d+0, A
	MOV A, _d+1
	SUBB A, #0
	MOV _d+1, A
;deplasare_txt.c,132 :: 		text[d]=text[d-1];}
	SJMP L_dreapta26
L_dreapta27:
;deplasare_txt.c,133 :: 		text[0]=temp_char;
	MOV _text+0, _temp_char+0
;deplasare_txt.c,134 :: 		afiseaza_txt(text);
	MOV FARG_afiseaza_txt_text+0, #_text+0
	LCALL _afiseaza_txt+0
;deplasare_txt.c,135 :: 		vdelay_ms(viteza);}}
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
L_dreapta25:
	RET
; end of _dreapta
