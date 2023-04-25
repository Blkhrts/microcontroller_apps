
_main:
	MOV SP+0, #128
;serial_mikroC.c,5 :: 		void main() {
;serial_mikroC.c,7 :: 		UART1_Init(4800);  //Initializare modul UART la 4800 biti/s
	ORL PCON+0, #128
	MOV TH1+0, #245
	MOV TL1+0, #245
	LCALL _UART1_Init+0
;serial_mikroC.c,8 :: 		Delay_ms(100);     // Asteptare stabilizare UART
	MOV R6, 163
	MOV R7, 30
	DJNZ R7, 
	DJNZ R6, 
	NOP
;serial_mikroC.c,10 :: 		P0=0x00;                // stingere LED-uri
	MOV P0+0, #0
;serial_mikroC.c,11 :: 		P1=0x00;
	MOV P1+0, #0
;serial_mikroC.c,12 :: 		P2=0x00;
	MOV P2+0, #0
;serial_mikroC.c,13 :: 		P3=0x03;            // cu exceptia pinilor implicati de comunicatia seriala
	MOV P3+0, #3
;serial_mikroC.c,14 :: 		viteza=100;
	MOV _viteza+0, #100
	MOV _viteza+1, #0
;serial_mikroC.c,15 :: 		oprire=0;
	MOV _oprire+0, #0
;serial_mikroC.c,17 :: 		while (1) {                    // Bucla infinita
L_main0:
;serial_mikroC.c,18 :: 		if (UART1_Data_Ready()) {     // Daca a sosit un caracter,
	LCALL _UART1_Data_Ready+0
	MOV A, R0
	JZ L_main2
;serial_mikroC.c,19 :: 		caracter_sosit = UART1_Read();     // acesta este citit,
	LCALL _UART1_Read+0
	MOV _caracter_sosit+0, 0
;serial_mikroC.c,20 :: 		UART1_Write(caracter_sosit);       // si trimis inapoi ca ecou
	MOV FARG_UART1_Write_data_+0, 0
	LCALL _UART1_Write+0
;serial_mikroC.c,21 :: 		}
L_main2:
;serial_mikroC.c,23 :: 		switch (caracter_sosit) {                  // Test caracter sosit
	SJMP L_main3
;serial_mikroC.c,24 :: 		case '1': comanda=caracter_sosit;  break;
L_main5:
	MOV _comanda+0, _caracter_sosit+0
	LJMP L_main4
;serial_mikroC.c,25 :: 		case '2': comanda=caracter_sosit;  break;
L_main6:
	MOV _comanda+0, _caracter_sosit+0
	LJMP L_main4
;serial_mikroC.c,26 :: 		case '3': comanda=caracter_sosit;  break;
L_main7:
	MOV _comanda+0, _caracter_sosit+0
	LJMP L_main4
;serial_mikroC.c,27 :: 		case '4': comanda=caracter_sosit;  break;
L_main8:
	MOV _comanda+0, _caracter_sosit+0
	LJMP L_main4
;serial_mikroC.c,28 :: 		case 'A': comanda=caracter_sosit;  break;
L_main9:
	MOV _comanda+0, _caracter_sosit+0
	LJMP L_main4
;serial_mikroC.c,29 :: 		case 'S': comanda=caracter_sosit;  break;
L_main10:
	MOV _comanda+0, _caracter_sosit+0
	LJMP L_main4
;serial_mikroC.c,30 :: 		case 'P': oprire=0; break;
L_main11:
	MOV _oprire+0, #0
	LJMP L_main4
;serial_mikroC.c,31 :: 		case 'O': oprire=1; break;
L_main12:
	MOV _oprire+0, #1
	LJMP L_main4
;serial_mikroC.c,32 :: 		case 'F': if(viteza>10) viteza=viteza-10; break;
L_main13:
	SETB C
	MOV A, _viteza+0
	SUBB A, #10
	MOV A, _viteza+1
	SUBB A, #0
	JC L_main14
	CLR C
	MOV A, _viteza+0
	SUBB A, #10
	MOV _viteza+0, A
	MOV A, _viteza+1
	SUBB A, #0
	MOV _viteza+1, A
L_main14:
	SJMP L_main4
;serial_mikroC.c,33 :: 		case 'W': viteza=viteza+10; break;
L_main15:
	MOV A, #10
	ADD A, _viteza+0
	MOV _viteza+0, A
	MOV A, #0
	ADDC A, _viteza+1
	MOV _viteza+1, A
	SJMP L_main4
;serial_mikroC.c,34 :: 		}
L_main3:
	MOV A, _caracter_sosit+0
	XRL A, #49
	JZ L_main5
	MOV A, _caracter_sosit+0
	XRL A, #50
	JZ L_main6
	MOV A, _caracter_sosit+0
	XRL A, #51
	JZ L_main7
	MOV A, _caracter_sosit+0
	XRL A, #52
	JZ L_main8
	MOV A, _caracter_sosit+0
	XRL A, #65
	JZ L_main9
	MOV A, _caracter_sosit+0
	XRL A, #83
	JZ L_main10
	MOV A, _caracter_sosit+0
	XRL A, #80
	JZ L_main11
	MOV A, _caracter_sosit+0
	XRL A, #79
	JZ L_main12
	MOV A, _caracter_sosit+0
	XRL A, #70
	JZ L_main13
	MOV A, _caracter_sosit+0
	XRL A, #87
	JZ L_main15
L_main4:
;serial_mikroC.c,35 :: 		caracter_sosit='y';
	MOV _caracter_sosit+0, #121
;serial_mikroC.c,37 :: 		if(oprire==0) {
	MOV A, _oprire+0
	JNZ L_main16
;serial_mikroC.c,38 :: 		switch (comanda) {                  // Test caracter sosit
	SJMP L_main17
;serial_mikroC.c,39 :: 		case '1': Efect1();  break;
L_main19:
	LCALL _Efect1+0
	SJMP L_main18
;serial_mikroC.c,40 :: 		case '2': Efect2();  break;
L_main20:
	LCALL _Efect2+0
	SJMP L_main18
;serial_mikroC.c,41 :: 		case '3': Efect3();  break;
L_main21:
	LCALL _Efect3+0
	SJMP L_main18
;serial_mikroC.c,42 :: 		case '4': Efect4();  break;
L_main22:
	LCALL _Efect4+0
	SJMP L_main18
;serial_mikroC.c,43 :: 		case 'A': Aprinde(); break;
L_main23:
	LCALL _Aprinde+0
	SJMP L_main18
;serial_mikroC.c,44 :: 		case 'S': Stinge();  break;
L_main24:
	LCALL _Stinge+0
	SJMP L_main18
;serial_mikroC.c,45 :: 		}
L_main17:
	MOV A, _comanda+0
	XRL A, #49
	JZ L_main19
	MOV A, _comanda+0
	XRL A, #50
	JZ L_main20
	MOV A, _comanda+0
	XRL A, #51
	JZ L_main21
	MOV A, _comanda+0
	XRL A, #52
	JZ L_main22
	MOV A, _comanda+0
	XRL A, #65
	JZ L_main23
	MOV A, _comanda+0
	XRL A, #83
	JZ L_main24
L_main18:
;serial_mikroC.c,46 :: 		}
L_main16:
;serial_mikroC.c,47 :: 		}
	LJMP L_main0
;serial_mikroC.c,48 :: 		}
	SJMP #254
; end of _main

_Efect1:
;serial_mikroC.c,50 :: 		void Efect1() {
;serial_mikroC.c,51 :: 		P0=0x08;
	MOV P0+0, #8
;serial_mikroC.c,52 :: 		P1=0x18;
	MOV P1+0, #24
;serial_mikroC.c,53 :: 		P2=0x88;
	MOV P2+0, #136
;serial_mikroC.c,54 :: 		P3=0xF7;
	MOV P3+0, #247
;serial_mikroC.c,55 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,57 :: 		P2=0x8A;
	MOV P2+0, #138
;serial_mikroC.c,58 :: 		P3=0xF3;
	MOV P3+0, #243
;serial_mikroC.c,59 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,61 :: 		P1=0x1A;
	MOV P1+0, #26
;serial_mikroC.c,62 :: 		P2=0x88;
	MOV P2+0, #136
;serial_mikroC.c,63 :: 		P3=0xF3;
	MOV P3+0, #243
;serial_mikroC.c,64 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,66 :: 		P0=0x09;
	MOV P0+0, #9
;serial_mikroC.c,67 :: 		P1=0x18;
	MOV P1+0, #24
;serial_mikroC.c,68 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,70 :: 		P0=0x48;
	MOV P0+0, #72
;serial_mikroC.c,71 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,73 :: 		P0=0x08;
	MOV P0+0, #8
;serial_mikroC.c,74 :: 		P1=0x58;
	MOV P1+0, #88
;serial_mikroC.c,75 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,77 :: 		P0=0x28;
	MOV P0+0, #40
;serial_mikroC.c,78 :: 		P1=0x18;
	MOV P1+0, #24
;serial_mikroC.c,79 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,81 :: 		P0=0x18;
	MOV P0+0, #24
;serial_mikroC.c,82 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,84 :: 		P1_4_bit=0;
	CLR P1_4_bit+0
;serial_mikroC.c,85 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,87 :: 		P1_4_bit=1;
	SETB P1_4_bit+0
;serial_mikroC.c,88 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,90 :: 		P1_4_bit=0;
	CLR P1_4_bit+0
;serial_mikroC.c,91 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,93 :: 		P0=0x18;
	MOV P0+0, #24
;serial_mikroC.c,94 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,96 :: 		P0=0x28;
	MOV P0+0, #40
;serial_mikroC.c,97 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,99 :: 		P0=0x48;
	MOV P0+0, #72
;serial_mikroC.c,100 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,102 :: 		P0=0x88;
	MOV P0+0, #136
;serial_mikroC.c,103 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,104 :: 		}
	RET
; end of _Efect1

_Efect2:
;serial_mikroC.c,106 :: 		void Efect2() {
;serial_mikroC.c,107 :: 		P0=0xFF;
	MOV P0+0, #255
;serial_mikroC.c,108 :: 		P1=0xFF;
	MOV P1+0, #255
;serial_mikroC.c,109 :: 		P2=0xFF;
	MOV P2+0, #255
;serial_mikroC.c,110 :: 		P3=0xFF;
	MOV P3+0, #255
;serial_mikroC.c,111 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,113 :: 		P2=0xF7;
	MOV P2+0, #247
;serial_mikroC.c,114 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,116 :: 		P1=0xF3;
	MOV P1+0, #243
;serial_mikroC.c,117 :: 		P2=0xFB;
	MOV P2+0, #251
;serial_mikroC.c,118 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,120 :: 		P0=0xE1;
	MOV P0+0, #225
;serial_mikroC.c,121 :: 		P1=0xE3;
	MOV P1+0, #227
;serial_mikroC.c,122 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,124 :: 		P0=0xC1;
	MOV P0+0, #193
;serial_mikroC.c,125 :: 		P1=0x83;
	MOV P1+0, #131
;serial_mikroC.c,126 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,128 :: 		P2_3_bit=0;
	CLR P2_3_bit+0
;serial_mikroC.c,129 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,131 :: 		P2_3_bit=1;
	SETB P2_3_bit+0
;serial_mikroC.c,132 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,134 :: 		P2_3_bit=0;
	CLR P2_3_bit+0
;serial_mikroC.c,135 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,137 :: 		P0=0xFF;
	MOV P0+0, #255
;serial_mikroC.c,138 :: 		P1=0xFF;
	MOV P1+0, #255
;serial_mikroC.c,139 :: 		P2=0xFF;
	MOV P2+0, #255
;serial_mikroC.c,140 :: 		P3=0xFF;
	MOV P3+0, #255
;serial_mikroC.c,141 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,143 :: 		P0=0x00;
	MOV P0+0, #0
;serial_mikroC.c,144 :: 		P1=0x00;
	MOV P1+0, #0
;serial_mikroC.c,145 :: 		P2=0x00;
	MOV P2+0, #0
;serial_mikroC.c,146 :: 		P2=0x03;
	MOV P2+0, #3
;serial_mikroC.c,147 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,149 :: 		P0=0x7E;
	MOV P0+0, #126
;serial_mikroC.c,150 :: 		P1=0x42;
	MOV P1+0, #66
;serial_mikroC.c,151 :: 		P2=0x52;
	MOV P2+0, #82
;serial_mikroC.c,152 :: 		P3=0x77;
	MOV P3+0, #119
;serial_mikroC.c,153 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,155 :: 		P1=0x12;
	MOV P1+0, #18
;serial_mikroC.c,156 :: 		P2=0x12;
	MOV P2+0, #18
;serial_mikroC.c,157 :: 		P3=0x7F;
	MOV P3+0, #127
;serial_mikroC.c,158 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,160 :: 		P1=0x04;
	MOV P1+0, #4
;serial_mikroC.c,161 :: 		P2=0x04;
	MOV P2+0, #4
;serial_mikroC.c,162 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,164 :: 		P1=0x4A;
	MOV P1+0, #74
;serial_mikroC.c,165 :: 		P2=0x4A;
	MOV P2+0, #74
;serial_mikroC.c,166 :: 		P3=0x43;
	MOV P3+0, #67
;serial_mikroC.c,167 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,169 :: 		P1=0x42;
	MOV P1+0, #66
;serial_mikroC.c,170 :: 		P2=0x42;
	MOV P2+0, #66
;serial_mikroC.c,171 :: 		P3=0x7F;
	MOV P3+0, #127
;serial_mikroC.c,172 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,174 :: 		P0=0x3E;
	MOV P0+0, #62
;serial_mikroC.c,175 :: 		P1=0x40;
	MOV P1+0, #64
;serial_mikroC.c,176 :: 		P2=0x40;
	MOV P2+0, #64
;serial_mikroC.c,177 :: 		P3=0x3F;
	MOV P3+0, #63
;serial_mikroC.c,178 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,180 :: 		P0=0x7E;
	MOV P0+0, #126
;serial_mikroC.c,181 :: 		P1=0x4A;
	MOV P1+0, #74
;serial_mikroC.c,182 :: 		P2=0x4A;
	MOV P2+0, #74
;serial_mikroC.c,183 :: 		P3=0x43;
	MOV P3+0, #67
;serial_mikroC.c,184 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,186 :: 		P0=0x7E;
	MOV P0+0, #126
;serial_mikroC.c,187 :: 		P1=0x1A;
	MOV P1+0, #26
;serial_mikroC.c,188 :: 		P2=0x2A;
	MOV P2+0, #42
;serial_mikroC.c,189 :: 		P3=0x4F;
	MOV P3+0, #79
;serial_mikroC.c,190 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,192 :: 		P0=0x64;
	MOV P0+0, #100
;serial_mikroC.c,193 :: 		P1=0x10;
	MOV P1+0, #16
;serial_mikroC.c,194 :: 		P2=0x10;
	MOV P2+0, #16
;serial_mikroC.c,195 :: 		P3=0x67;
	MOV P3+0, #103
;serial_mikroC.c,196 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,198 :: 		P0=0x00;
	MOV P0+0, #0
;serial_mikroC.c,199 :: 		P1=0x00;
	MOV P1+0, #0
;serial_mikroC.c,200 :: 		P2=0x00;
	MOV P2+0, #0
;serial_mikroC.c,201 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,202 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,203 :: 		}
	RET
; end of _Efect2

_Efect3:
;serial_mikroC.c,205 :: 		void Efect3() {
;serial_mikroC.c,206 :: 		P0=0x00;
	MOV P0+0, #0
;serial_mikroC.c,207 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,208 :: 		P2=0x40;
	MOV P2+0, #64
;serial_mikroC.c,209 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,210 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,212 :: 		P0=0xE0;
	MOV P0+0, #224
;serial_mikroC.c,213 :: 		P1=0x40;
	MOV P1+0, #64
;serial_mikroC.c,214 :: 		P2=0xE0;
	MOV P2+0, #224
;serial_mikroC.c,215 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,216 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,218 :: 		P0=0x00;
	MOV P0+0, #0
;serial_mikroC.c,219 :: 		P1=0xE1;
	MOV P1+0, #225
;serial_mikroC.c,220 :: 		P2=0x41;
	MOV P2+0, #65
;serial_mikroC.c,221 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,222 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,224 :: 		P1=0xF3;
	MOV P1+0, #243
;serial_mikroC.c,225 :: 		P2=0x43;
	MOV P2+0, #67
;serial_mikroC.c,226 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,228 :: 		P1=0xEE;
	MOV P1+0, #238
;serial_mikroC.c,229 :: 		P2=0x46;
	MOV P2+0, #70
;serial_mikroC.c,230 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,232 :: 		P0=0xE1;
	MOV P0+0, #225
;serial_mikroC.c,233 :: 		P1=0x40;
	MOV P1+0, #64
;serial_mikroC.c,234 :: 		P2=0xE0;
	MOV P2+0, #224
;serial_mikroC.c,235 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,236 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,238 :: 		P0=0xF3;
	MOV P0+0, #243
;serial_mikroC.c,239 :: 		P1=0x41;
	MOV P1+0, #65
;serial_mikroC.c,240 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,242 :: 		P0=0xEB;
	MOV P0+0, #235
;serial_mikroC.c,243 :: 		P1=0x43;
	MOV P1+0, #67
;serial_mikroC.c,244 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,246 :: 		P0=0xEE;
	MOV P0+0, #238
;serial_mikroC.c,247 :: 		P1=0x46;
	MOV P1+0, #70
;serial_mikroC.c,248 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,249 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,251 :: 		P0=0x00;
	MOV P0+0, #0
;serial_mikroC.c,252 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,253 :: 		P2=0x41;
	MOV P2+0, #65
;serial_mikroC.c,254 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,255 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,257 :: 		P2=0x41;
	MOV P2+0, #65
;serial_mikroC.c,258 :: 		P3=0xF3;
	MOV P3+0, #243
;serial_mikroC.c,259 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,261 :: 		P1=0xE1;
	MOV P1+0, #225
;serial_mikroC.c,262 :: 		P2=0x43;
	MOV P2+0, #67
;serial_mikroC.c,263 :: 		P3=0xEF;
	MOV P3+0, #239
;serial_mikroC.c,264 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,266 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,267 :: 		P2=0x40;
	MOV P2+0, #64
;serial_mikroC.c,268 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,269 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,271 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,272 :: 		P2=0x40;
	MOV P2+0, #64
;serial_mikroC.c,273 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,274 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,276 :: 		P1=0x70;
	MOV P1+0, #112
;serial_mikroC.c,277 :: 		P2=0x20;
	MOV P2+0, #32
;serial_mikroC.c,278 :: 		P3=0x73;
	MOV P3+0, #115
;serial_mikroC.c,279 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,281 :: 		P1=0x38;
	MOV P1+0, #56
;serial_mikroC.c,282 :: 		P2=0x10;
	MOV P2+0, #16
;serial_mikroC.c,283 :: 		P3=0x3B;
	MOV P3+0, #59
;serial_mikroC.c,284 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,286 :: 		P1=0x1C;
	MOV P1+0, #28
;serial_mikroC.c,287 :: 		P2=0x08;
	MOV P2+0, #8
;serial_mikroC.c,288 :: 		P3=0x1F;
	MOV P3+0, #31
;serial_mikroC.c,289 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,291 :: 		P1=0x0E;
	MOV P1+0, #14
;serial_mikroC.c,292 :: 		P2=0x04;
	MOV P2+0, #4
;serial_mikroC.c,293 :: 		P3=0x0F;
	MOV P3+0, #15
;serial_mikroC.c,294 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,296 :: 		P1=0x07;
	MOV P1+0, #7
;serial_mikroC.c,297 :: 		P2=0x02;
	MOV P2+0, #2
;serial_mikroC.c,298 :: 		P3=0x07;
	MOV P3+0, #7
;serial_mikroC.c,299 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,301 :: 		P1=0x01;
	MOV P1+0, #1
;serial_mikroC.c,302 :: 		P2=0x00;
	MOV P2+0, #0
;serial_mikroC.c,303 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,304 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,306 :: 		P1=0x00;
	MOV P1+0, #0
;serial_mikroC.c,307 :: 		P2=0x00;
	MOV P2+0, #0
;serial_mikroC.c,308 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,309 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,310 :: 		}
	RET
; end of _Efect3

_Efect4:
;serial_mikroC.c,312 :: 		void Efect4() {
;serial_mikroC.c,313 :: 		P0=0xEB;
	MOV P0+0, #235
;serial_mikroC.c,314 :: 		P1=0xD5;
	MOV P1+0, #213
;serial_mikroC.c,315 :: 		P2=0xEB;
	MOV P2+0, #235
;serial_mikroC.c,316 :: 		P3=0xD7;
	MOV P3+0, #215
;serial_mikroC.c,317 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,319 :: 		P0=0xD5;
	MOV P0+0, #213
;serial_mikroC.c,320 :: 		P1=0xEB;
	MOV P1+0, #235
;serial_mikroC.c,321 :: 		P2=0xD5;
	MOV P2+0, #213
;serial_mikroC.c,322 :: 		P3=0xEB;
	MOV P3+0, #235
;serial_mikroC.c,323 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,325 :: 		P0=0xEB;
	MOV P0+0, #235
;serial_mikroC.c,326 :: 		P1=0xD5;
	MOV P1+0, #213
;serial_mikroC.c,327 :: 		P2=0xC1;
	MOV P2+0, #193
;serial_mikroC.c,328 :: 		P3=0xC3;
	MOV P3+0, #195
;serial_mikroC.c,329 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,331 :: 		P0=0xC1;
	MOV P0+0, #193
;serial_mikroC.c,332 :: 		P1=0xC1;
	MOV P1+0, #193
;serial_mikroC.c,333 :: 		P2=0xEB;
	MOV P2+0, #235
;serial_mikroC.c,334 :: 		P3=0xD7;
	MOV P3+0, #215
;serial_mikroC.c,335 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,337 :: 		P0=0xEB;
	MOV P0+0, #235
;serial_mikroC.c,338 :: 		P1=0xD5;
	MOV P1+0, #213
;serial_mikroC.c,339 :: 		P2=0xEB;
	MOV P2+0, #235
;serial_mikroC.c,340 :: 		P3=0xD7;
	MOV P3+0, #215
;serial_mikroC.c,341 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,343 :: 		P0=0xD5;
	MOV P0+0, #213
;serial_mikroC.c,344 :: 		P1=0xEB;
	MOV P1+0, #235
;serial_mikroC.c,345 :: 		P2=0xD5;
	MOV P2+0, #213
;serial_mikroC.c,346 :: 		P3=0xEB;
	MOV P3+0, #235
;serial_mikroC.c,347 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,349 :: 		P1=0xE9;
	MOV P1+0, #233
;serial_mikroC.c,350 :: 		P3=0xEB;
	MOV P3+0, #235
;serial_mikroC.c,351 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,353 :: 		P0=0xD1;
	MOV P0+0, #209
;serial_mikroC.c,354 :: 		P2=0xD1;
	MOV P2+0, #209
;serial_mikroC.c,355 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,357 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,358 :: 		P2=0xD0;
	MOV P2+0, #208
;serial_mikroC.c,359 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,360 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,362 :: 		P0=0xC1;
	MOV P0+0, #193
;serial_mikroC.c,363 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,364 :: 		P2=0xC0;
	MOV P2+0, #192
;serial_mikroC.c,365 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,366 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,368 :: 		P0=0xC0;
	MOV P0+0, #192
;serial_mikroC.c,369 :: 		P1=0xC0;
	MOV P1+0, #192
;serial_mikroC.c,370 :: 		P2=0xC0;
	MOV P2+0, #192
;serial_mikroC.c,371 :: 		P3=0xC3;
	MOV P3+0, #195
;serial_mikroC.c,372 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,374 :: 		P1=0xE0;
	MOV P1+0, #224
;serial_mikroC.c,375 :: 		P2=0xE0;
	MOV P2+0, #224
;serial_mikroC.c,376 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,378 :: 		P0=0xE0;
	MOV P0+0, #224
;serial_mikroC.c,379 :: 		P1=0xD0;
	MOV P1+0, #208
;serial_mikroC.c,380 :: 		P2=0xD0;
	MOV P2+0, #208
;serial_mikroC.c,381 :: 		P3=0xE3;
	MOV P3+0, #227
;serial_mikroC.c,382 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,384 :: 		P0=0xF0;
	MOV P0+0, #240
;serial_mikroC.c,385 :: 		P1=0xC8;
	MOV P1+0, #200
;serial_mikroC.c,386 :: 		P2=0xC8;
	MOV P2+0, #200
;serial_mikroC.c,387 :: 		P3=0xF3;
	MOV P3+0, #243
;serial_mikroC.c,388 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,390 :: 		P0=0xD8;
	MOV P0+0, #216
;serial_mikroC.c,391 :: 		P1=0xE4;
	MOV P1+0, #228
;serial_mikroC.c,392 :: 		P2=0xE4;
	MOV P2+0, #228
;serial_mikroC.c,393 :: 		P3=0xDB;
	MOV P3+0, #219
;serial_mikroC.c,394 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,396 :: 		P0=0xCC;
	MOV P0+0, #204
;serial_mikroC.c,397 :: 		P1=0xD2;
	MOV P1+0, #210
;serial_mikroC.c,398 :: 		P2=0xD2;
	MOV P2+0, #210
;serial_mikroC.c,399 :: 		P3=0xCF;
	MOV P3+0, #207
;serial_mikroC.c,400 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,402 :: 		P0=0xC6;
	MOV P0+0, #198
;serial_mikroC.c,403 :: 		P1=0xC9;
	MOV P1+0, #201
;serial_mikroC.c,404 :: 		P2=0xC9;
	MOV P2+0, #201
;serial_mikroC.c,405 :: 		P3=0xC7;
	MOV P3+0, #199
;serial_mikroC.c,406 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,407 :: 		}
	RET
; end of _Efect4

_Aprinde:
;serial_mikroC.c,409 :: 		void Aprinde() {
;serial_mikroC.c,410 :: 		P0=0xff;
	MOV P0+0, #255
;serial_mikroC.c,411 :: 		P1=0xff;
	MOV P1+0, #255
;serial_mikroC.c,412 :: 		P2=0xff;
	MOV P2+0, #255
;serial_mikroC.c,413 :: 		P3=0xff;
	MOV P3+0, #255
;serial_mikroC.c,414 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,415 :: 		}
	RET
; end of _Aprinde

_Stinge:
;serial_mikroC.c,417 :: 		void Stinge() {
;serial_mikroC.c,418 :: 		P0=0x00;
	MOV P0+0, #0
;serial_mikroC.c,419 :: 		P1=0x00;
	MOV P1+0, #0
;serial_mikroC.c,420 :: 		P2=0x00;
	MOV P2+0, #0
;serial_mikroC.c,421 :: 		P3=0x03;
	MOV P3+0, #3
;serial_mikroC.c,422 :: 		vdelay_ms(viteza);
	MOV FARG_VDelay_ms_Time_ms+0, _viteza+0
	MOV FARG_VDelay_ms_Time_ms+1, _viteza+1
	LCALL _VDelay_ms+0
;serial_mikroC.c,423 :: 		}
	RET
; end of _Stinge
