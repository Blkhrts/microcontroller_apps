
_main:
	MOV SP+0, #128
;cronometru.c,16 :: 		void main() {
;cronometru.c,17 :: 		comanda='y';
	MOV _comanda+0, #121
;cronometru.c,19 :: 		UART1_Init(4800);               // Initializare modul UART1
	ORL PCON+0, #128
	MOV TH1+0, #245
	MOV TL1+0, #245
	LCALL _UART1_Init+0
;cronometru.c,20 :: 		delay_ms(100);                 // Asteptare stabilizare UART
	MOV R6, 163
	MOV R7, 30
	DJNZ R7, 
	DJNZ R6, 
	NOP
;cronometru.c,22 :: 		Glcd_Init();               // Initializare GLCD
	LCALL _Glcd_Init+0
;cronometru.c,23 :: 		Glcd_Fill(0x00);           // Stergere GLCD
	MOV FARG_Glcd_Fill_pattern+0, #0
	LCALL _Glcd_Fill+0
;cronometru.c,24 :: 		Glcd_Set_Font(Character8x7, 8, 7, 32);   // setare font, latime 8, inaltime 7, offset 32
	MOV FARG_Glcd_Set_Font_activeFont+0, #_Character8x7+0
	MOV FARG_Glcd_Set_Font_activeFont+1, hi(#_Character8x7+0)
	MOV FARG_Glcd_Set_Font_aFontWidth+0, #8
	MOV FARG_Glcd_Set_Font_aFontHeight+0, #7
	MOV FARG_Glcd_Set_Font_aFontOffs+0, #32
	MOV FARG_Glcd_Set_Font_aFontOffs+1, #0
	LCALL _Glcd_Set_Font+0
;cronometru.c,25 :: 		txt_afis1 = "CRONOMETRU";
	MOV _txt_afis1+0, #?lstr1_cronometru+0
;cronometru.c,26 :: 		txt_afis2 = " 00 - 00 - 00";
	MOV _txt_afis2+0, #?lstr2_cronometru+0
;cronometru.c,27 :: 		Glcd_Write_Text(txt_afis1, 20 , 3, 1);
	MOV FARG_Glcd_Write_Text_text+0, #?lstr1_cronometru+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #20
	MOV FARG_Glcd_Write_Text_page_num+0, #3
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,28 :: 		Glcd_Write_Text(txt_afis2, 1 , 5, 1);
	MOV FARG_Glcd_Write_Text_text+0, _txt_afis2+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #1
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,29 :: 		Glcd_Write_Char('-', 37, 5, 1);
	MOV FARG_Glcd_Write_Char_chr+0, #45
	MOV FARG_Glcd_Write_Char_x_pos+0, #37
	MOV FARG_Glcd_Write_Char_page_num+0, #5
	MOV FARG_Glcd_Write_Char_color+0, #1
	LCALL _Glcd_Write_Char+0
;cronometru.c,30 :: 		Glcd_Write_Char('-', 82, 5, 1);
	MOV FARG_Glcd_Write_Char_chr+0, #45
	MOV FARG_Glcd_Write_Char_x_pos+0, #82
	MOV FARG_Glcd_Write_Char_page_num+0, #5
	MOV FARG_Glcd_Write_Char_color+0, #1
	LCALL _Glcd_Write_Char+0
;cronometru.c,31 :: 		oprire=0;
	MOV _oprire+0, #0
;cronometru.c,32 :: 		while(1)  {
L_main0:
;cronometru.c,33 :: 		if(UART1_Data_Ready())
	LCALL _UART1_Data_Ready+0
	MOV A, R0
	JZ L_main2
;cronometru.c,35 :: 		caracter_sosit = UART1_Read();
	LCALL _UART1_Read+0
	MOV _caracter_sosit+0, 0
;cronometru.c,36 :: 		UART1_Write(caracter_sosit);  //Este trimis inapoi ca un ecou
	MOV FARG_UART1_Write_data_+0, 0
	LCALL _UART1_Write+0
;cronometru.c,37 :: 		}
L_main2:
;cronometru.c,39 :: 		switch(caracter_sosit)          //Test caracter sosit
	SJMP L_main3
;cronometru.c,41 :: 		case 'P': oprire=0;                  break;
L_main5:
	MOV _oprire+0, #0
	SJMP L_main4
;cronometru.c,42 :: 		case 'O': oprire=1;                  break;
L_main6:
	MOV _oprire+0, #1
	SJMP L_main4
;cronometru.c,43 :: 		case 'R': ora=0,mnt=0,sec=0, GLCD_Write_Text(txt_afis2, 1, 5, 1), oprire=1;      break;
L_main7:
	MOV _ora+0, #0
	MOV _ora+1, #0
	MOV _mnt+0, #0
	MOV _mnt+1, #0
	MOV _sec+0, #0
	MOV _sec+1, #0
	MOV FARG_Glcd_Write_Text_text+0, _txt_afis2+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #1
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
	MOV _oprire+0, #1
	SJMP L_main4
;cronometru.c,44 :: 		}
L_main3:
	MOV A, _caracter_sosit+0
	XRL A, #80
	JZ L_main5
	MOV A, _caracter_sosit+0
	XRL A, #79
	JZ L_main6
	MOV A, _caracter_sosit+0
	XRL A, #82
	JZ L_main7
L_main4:
;cronometru.c,45 :: 		caracter_sosit='y';
	MOV _caracter_sosit+0, #121
;cronometru.c,46 :: 		if(oprire==0)
	MOV A, _oprire+0
	JZ #3
	LJMP L_main8
;cronometru.c,48 :: 		delay_ms(1000);
	MOV R5, 7
	MOV R6, 86
	MOV R7, 60
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;cronometru.c,49 :: 		sec=sec+1;
	MOV A, #1
	ADD A, _sec+0
	MOV _sec+0, A
	MOV A, #0
	ADDC A, _sec+1
	MOV _sec+1, A
;cronometru.c,50 :: 		ByteToStr(sec,s_sec);
	MOV FARG_ByteToStr_input+0, _sec+0
	MOV FARG_ByteToStr_output+0, #_s_sec+0
	LCALL _ByteToStr+0
;cronometru.c,51 :: 		Glcd_Write_Text(s_sec, 91, 5, 1);
	MOV FARG_Glcd_Write_Text_text+0, #_s_sec+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #91
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,52 :: 		if (sec<10)
	CLR C
	MOV A, _sec+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _sec+1
	XRL A, #128
	SUBB A, R0
	JNC L_main9
;cronometru.c,54 :: 		GLcd_Write_Text("0",100,5,1);
	MOV FARG_Glcd_Write_Text_text+0, #?lstr3_cronometru+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #100
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,55 :: 		}
L_main9:
;cronometru.c,56 :: 		if(sec==60)
	MOV A, #60
	XRL A, _sec+0
	JNZ L__main15
	MOV A, #0
	XRL A, _sec+1
L__main15:
	JNZ L_main10
;cronometru.c,58 :: 		sec=0;
	MOV _sec+0, #0
	MOV _sec+1, #0
;cronometru.c,59 :: 		mnt=mnt+1;
	MOV A, #1
	ADD A, _mnt+0
	MOV _mnt+0, A
	MOV A, #0
	ADDC A, _mnt+1
	MOV _mnt+1, A
;cronometru.c,60 :: 		ByteToStr(mnt,s_mnt);
	MOV FARG_ByteToStr_input+0, _mnt+0
	MOV FARG_ByteToStr_output+0, #_s_mnt+0
	LCALL _ByteToStr+0
;cronometru.c,61 :: 		Glcd_Write_Text(s_mnt, 46, 5, 1);
	MOV FARG_Glcd_Write_Text_text+0, #_s_mnt+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #46
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,62 :: 		if (mnt<10)
	CLR C
	MOV A, _mnt+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _mnt+1
	XRL A, #128
	SUBB A, R0
	JNC L_main11
;cronometru.c,64 :: 		GLcd_Write_Text("0",55,5,1);
	MOV FARG_Glcd_Write_Text_text+0, #?lstr4_cronometru+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #55
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,65 :: 		}}
L_main11:
L_main10:
;cronometru.c,66 :: 		if(mnt==60)
	MOV A, #60
	XRL A, _mnt+0
	JNZ L__main16
	MOV A, #0
	XRL A, _mnt+1
L__main16:
	JNZ L_main12
;cronometru.c,68 :: 		mnt=0;
	MOV _mnt+0, #0
	MOV _mnt+1, #0
;cronometru.c,69 :: 		ora=ora+1;
	MOV A, #1
	ADD A, _ora+0
	MOV _ora+0, A
	MOV A, #0
	ADDC A, _ora+1
	MOV _ora+1, A
;cronometru.c,70 :: 		ByteToStr(ora,s_ore);
	MOV FARG_ByteToStr_input+0, _ora+0
	MOV FARG_ByteToStr_output+0, #_s_ore+0
	LCALL _ByteToStr+0
;cronometru.c,71 :: 		Glcd_Write_Text(s_ore, 1, 5, 1);
	MOV FARG_Glcd_Write_Text_text+0, #_s_ore+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #1
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,72 :: 		if (ora<10)
	CLR C
	MOV A, _ora+0
	SUBB A, #10
	MOV A, #0
	XRL A, #128
	MOV R0, A
	MOV A, _ora+1
	XRL A, #128
	SUBB A, R0
	JNC L_main13
;cronometru.c,74 :: 		GLcd_Write_Text("0",10,5,1);
	MOV FARG_Glcd_Write_Text_text+0, #?lstr5_cronometru+0
	MOV FARG_Glcd_Write_Text_x_pos+0, #10
	MOV FARG_Glcd_Write_Text_page_num+0, #5
	MOV FARG_Glcd_Write_Text_color+0, #1
	LCALL _Glcd_Write_Text+0
;cronometru.c,75 :: 		}
L_main13:
;cronometru.c,76 :: 		if(ora==100)
	MOV A, #100
	XRL A, _ora+0
	JNZ L__main17
	MOV A, #0
	XRL A, _ora+1
L__main17:
	JNZ L_main14
;cronometru.c,78 :: 		ora=0;
	MOV _ora+0, #0
	MOV _ora+1, #0
;cronometru.c,79 :: 		mnt=0;
	MOV _mnt+0, #0
	MOV _mnt+1, #0
;cronometru.c,80 :: 		sec=0;
	MOV _sec+0, #0
	MOV _sec+1, #0
;cronometru.c,81 :: 		}}}}}
L_main14:
L_main12:
L_main8:
	LJMP L_main0
	SJMP #254
; end of _main
