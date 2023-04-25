
_CopyConst2Ram:
;temperatura.c,30 :: 		char * CopyConst2Ram(char * dest, const char * src){
;temperatura.c,32 :: 		d = dest;
	MOV CopyConst2Ram_d_L0+0, FARG_CopyConst2Ram_dest+0
;temperatura.c,33 :: 		for(;*dest++ = *src++;)
L_CopyConst2Ram0:
	MOV R0, FARG_CopyConst2Ram_dest+0
	INC FARG_CopyConst2Ram_dest+0
	MOV R2, FARG_CopyConst2Ram_src+0
	MOV R3, FARG_CopyConst2Ram_src+1
	MOV A, #1
	ADD A, FARG_CopyConst2Ram_src+0
	MOV FARG_CopyConst2Ram_src+0, A
	MOV A, #0
	ADDC A, FARG_CopyConst2Ram_src+1
	MOV FARG_CopyConst2Ram_src+1, A
	MOV 130, 2
	MOV 131, 3
	CLR A
	MOVC A, @A+DPTR
	MOV R1, A
	MOV @R0, 1
	MOV A, @R0
	JZ L_CopyConst2Ram1
;temperatura.c,34 :: 		;
	SJMP L_CopyConst2Ram0
L_CopyConst2Ram1:
;temperatura.c,35 :: 		return d;
	MOV R0, CopyConst2Ram_d_L0+0
;temperatura.c,36 :: 		}
	RET
; end of _CopyConst2Ram

_main:
	MOV SP+0, #128
;temperatura.c,46 :: 		void main() {
;temperatura.c,47 :: 		UART1_Init(4800);  //Initializare modul UART la 4800 biti/s
	ORL PCON+0, #128
	MOV TH1+0, #245
	MOV TL1+0, #245
	LCALL _UART1_Init+0
;temperatura.c,48 :: 		delay_ms(100);     // Asteptare stabilizare UART
	MOV R6, 163
	MOV R7, 30
	DJNZ R7, 
	DJNZ R6, 
	NOP
;temperatura.c,49 :: 		UART1_Write_Text("Start");
	MOV FARG_UART1_Write_Text_uart_text+0, #?lstr1_temperatura+0
	LCALL _UART1_Write_Text+0
;temperatura.c,51 :: 		oprire=0;
	MOV _oprire+0, #0
;temperatura.c,52 :: 		conti=0;
	MOV _conti+0, #0
;temperatura.c,54 :: 		Lcd_Init();                                    // Initialize LCD
	LCALL _Lcd_Init+0
;temperatura.c,55 :: 		Lcd_Cmd(_LCD_CLEAR);                           // Clear LCD
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;temperatura.c,56 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                      // Turn cursor off
	MOV FARG_Lcd_Cmd_out_char+0, #12
	LCALL _Lcd_Cmd+0
;temperatura.c,57 :: 		Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,58 :: 		Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt1));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt1+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt1+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #11
	LCALL _LCD_Out+0
;temperatura.c,59 :: 		Lcd_Out(2, 1, CopyConst2Ram(msg,text_temp0));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_text_temp0+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_text_temp0+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,60 :: 		Lcd_Chr(2,15,178);
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #15
	MOV FARG_Lcd_Chr_out_char+0, #178
	LCALL _Lcd_Chr+0
;temperatura.c,61 :: 		Lcd_Chr(2,16,'C');
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #16
	MOV FARG_Lcd_Chr_out_char+0, #67
	LCALL _Lcd_Chr+0
;temperatura.c,65 :: 		while (1) {
L_main3:
;temperatura.c,66 :: 		if (UART1_Data_Ready()) {
	LCALL _UART1_Data_Ready+0
	MOV A, R0
	JZ L_main5
;temperatura.c,67 :: 		caracter_sosit=UART1_Read();
	LCALL _UART1_Read+0
	MOV _caracter_sosit+0, 0
;temperatura.c,69 :: 		}
L_main5:
;temperatura.c,70 :: 		switch (caracter_sosit) {
	SJMP L_main6
;temperatura.c,71 :: 		case 'O': m_conti_on(); break;   //Mod continuu on
L_main8:
	LCALL _m_conti_on+0
	SJMP L_main7
;temperatura.c,72 :: 		case 'F': m_conti_off(); break;  //Mod continuu off
L_main9:
	LCALL _m_conti_off+0
	SJMP L_main7
;temperatura.c,73 :: 		case 'S': m_single(); break;     //Mod single
L_main10:
	LCALL _m_single+0
	SJMP L_main7
;temperatura.c,74 :: 		case 'X': m_clear(); break;      //Mod clear
L_main11:
	LCALL _m_clear+0
	SJMP L_main7
;temperatura.c,75 :: 		}
L_main6:
	MOV A, _caracter_sosit+0
	XRL A, #79
	JZ L_main8
	MOV A, _caracter_sosit+0
	XRL A, #70
	JZ L_main9
	MOV A, _caracter_sosit+0
	XRL A, #83
	JZ L_main10
	MOV A, _caracter_sosit+0
	XRL A, #88
	JZ L_main11
L_main7:
;temperatura.c,76 :: 		caracter_sosit='y';
	MOV _caracter_sosit+0, #121
;temperatura.c,77 :: 		if (oprire==0){
	MOV A, _oprire+0
	JZ #3
	LJMP L_main12
;temperatura.c,78 :: 		if (conti==0) {
	MOV A, _conti+0
	JNZ L_main13
;temperatura.c,79 :: 		Citeste_temp();
	LCALL _Citeste_temp+0
;temperatura.c,80 :: 		LCD_OUT(2,9,"     ");
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #9
	MOV FARG_LCD_Out_text+0, #?lstr2_temperatura+0
	LCALL _LCD_Out+0
;temperatura.c,81 :: 		delay_ms(500);
	MOV R5, 4
	MOV R6, 43
	MOV R7, 157
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;temperatura.c,82 :: 		Display_Temperature(temp);
	MOV FARG_Display_Temperature_temp+0, _temp+0
	MOV FARG_Display_Temperature_temp+1, _temp+1
	LCALL _Display_Temperature+0
;temperatura.c,83 :: 		delay_ms(1000);
	MOV R5, 7
	MOV R6, 86
	MOV R7, 60
	DJNZ R7, 
	DJNZ R6, 
	DJNZ R5, 
;temperatura.c,84 :: 		}
	SJMP L_main14
L_main13:
;temperatura.c,87 :: 		Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,88 :: 		Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt4));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt4+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt4+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #11
	LCALL _LCD_Out+0
;temperatura.c,89 :: 		}
L_main14:
;temperatura.c,90 :: 		if (oprire==1)
	MOV A, _oprire+0
	XRL A, #1
	JNZ L_main15
;temperatura.c,92 :: 		if (conti==0)
	MOV A, _conti+0
	JNZ L_main16
;temperatura.c,95 :: 		}
	SJMP L_main17
L_main16:
;temperatura.c,98 :: 		Citeste_temp();
	LCALL _Citeste_temp+0
;temperatura.c,99 :: 		Display_Temperature(temp);
	MOV FARG_Display_Temperature_temp+0, _temp+0
	MOV FARG_Display_Temperature_temp+1, _temp+1
	LCALL _Display_Temperature+0
;temperatura.c,101 :: 		}
L_main17:
;temperatura.c,102 :: 		}
L_main15:
;temperatura.c,103 :: 		}
L_main12:
;temperatura.c,104 :: 		}
	LJMP L_main3
;temperatura.c,105 :: 		}
	SJMP #254
; end of _main

_m_conti_on:
;temperatura.c,107 :: 		void m_conti_on(){
;temperatura.c,108 :: 		oprire=0;
	MOV _oprire+0, #0
;temperatura.c,109 :: 		conti=0;
	MOV _conti+0, #0
;temperatura.c,110 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;temperatura.c,111 :: 		Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,112 :: 		Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt1));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt1+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt1+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #11
	LCALL _LCD_Out+0
;temperatura.c,113 :: 		Lcd_out(2,1,CopyConst2Ram(msg,text_temp0));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_text_temp0+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_text_temp0+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,114 :: 		Lcd_Chr(2,15,178);
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #15
	MOV FARG_Lcd_Chr_out_char+0, #178
	LCALL _Lcd_Chr+0
;temperatura.c,115 :: 		Lcd_Chr(2,16,'C');
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #16
	MOV FARG_Lcd_Chr_out_char+0, #67
	LCALL _Lcd_Chr+0
;temperatura.c,116 :: 		}
	RET
; end of _m_conti_on

_m_conti_off:
;temperatura.c,117 :: 		void m_conti_off(){
;temperatura.c,118 :: 		oprire=1;
	MOV _oprire+0, #1
;temperatura.c,119 :: 		conti=0;
	MOV _conti+0, #0
;temperatura.c,120 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;temperatura.c,121 :: 		Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,122 :: 		Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt2));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt2+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt2+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #11
	LCALL _LCD_Out+0
;temperatura.c,123 :: 		Lcd_out(2,1,CopyConst2Ram(msg,text_temp0));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_text_temp0+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_text_temp0+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,124 :: 		Lcd_Chr(2,15,178);
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #15
	MOV FARG_Lcd_Chr_out_char+0, #178
	LCALL _Lcd_Chr+0
;temperatura.c,125 :: 		Lcd_Chr(2,16,'C');
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #16
	MOV FARG_Lcd_Chr_out_char+0, #67
	LCALL _Lcd_Chr+0
;temperatura.c,126 :: 		}
	RET
; end of _m_conti_off

_m_single:
;temperatura.c,127 :: 		void m_single(){
;temperatura.c,128 :: 		oprire=1;
	MOV _oprire+0, #1
;temperatura.c,129 :: 		conti=1;
	MOV _conti+0, #1
;temperatura.c,130 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;temperatura.c,131 :: 		Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,132 :: 		Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt3));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt3+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt3+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #11
	LCALL _LCD_Out+0
;temperatura.c,133 :: 		Lcd_out(2,1,CopyConst2Ram(msg,text_temp0));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_text_temp0+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_text_temp0+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,134 :: 		Citeste_temp();
	LCALL _Citeste_temp+0
;temperatura.c,135 :: 		Display_Temperature(temp);
	MOV FARG_Display_Temperature_temp+0, _temp+0
	MOV FARG_Display_Temperature_temp+1, _temp+1
	LCALL _Display_Temperature+0
;temperatura.c,136 :: 		Lcd_Chr(2,15,178);
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #15
	MOV FARG_Lcd_Chr_out_char+0, #178
	LCALL _Lcd_Chr+0
;temperatura.c,137 :: 		Lcd_Chr(2,16,'C');
	MOV FARG_Lcd_Chr_row+0, #2
	MOV FARG_Lcd_Chr_column+0, #16
	MOV FARG_Lcd_Chr_out_char+0, #67
	LCALL _Lcd_Chr+0
;temperatura.c,138 :: 		}
	RET
; end of _m_single

_m_clear:
;temperatura.c,139 :: 		void m_clear(){
;temperatura.c,140 :: 		oprire=0;
	MOV _oprire+0, #0
;temperatura.c,141 :: 		conti=1;
	MOV _conti+0, #1
;temperatura.c,142 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOV FARG_Lcd_Cmd_out_char+0, #1
	LCALL _Lcd_Cmd+0
;temperatura.c,143 :: 		Lcd_out(1,1,CopyConst2Ram(msg,mod_lucru_txt));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,144 :: 		Lcd_out(1,11,CopyConst2Ram(msg,mod_lucru_txt4));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_mod_lucru_txt4+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_mod_lucru_txt4+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #1
	MOV FARG_LCD_Out_column+0, #11
	LCALL _LCD_Out+0
;temperatura.c,145 :: 		Lcd_Out(2, 1, CopyConst2Ram(msg,text_temp0));
	MOV FARG_CopyConst2Ram_dest+0, #_msg+0
	MOV FARG_CopyConst2Ram_src+0, #_text_temp0+0
	MOV FARG_CopyConst2Ram_src+1, hi(#_text_temp0+0)
	LCALL _CopyConst2Ram+0
	MOV FARG_LCD_Out_text+0, 0
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #1
	LCALL _LCD_Out+0
;temperatura.c,146 :: 		}
	RET
; end of _m_clear

_Citeste_temp:
;temperatura.c,149 :: 		void Citeste_temp()  {
;temperatura.c,151 :: 		Ow_Reset();                                  // Onewire reset signal
	LCALL _Ow_Reset+0
;temperatura.c,152 :: 		Ow_Write(0xCC);                              // Issue command SKIP_ROM
	MOV FARG_Ow_Write_par+0, #204
	LCALL _Ow_Write+0
;temperatura.c,153 :: 		Ow_Write(0x44);                              // Issue command CONVERT_T
	MOV FARG_Ow_Write_par+0, #68
	LCALL _Ow_Write+0
;temperatura.c,154 :: 		Delay_us(120);
	MOV R7, 49
	DJNZ R7, 
	NOP
;temperatura.c,156 :: 		Ow_Reset();
	LCALL _Ow_Reset+0
;temperatura.c,157 :: 		Ow_Write(0xCC);                              // Issue command SKIP_ROM
	MOV FARG_Ow_Write_par+0, #204
	LCALL _Ow_Write+0
;temperatura.c,158 :: 		Ow_Write(0xBE);                              // Issue command READ_SCRATCHPAD
	MOV FARG_Ow_Write_par+0, #190
	LCALL _Ow_Write+0
;temperatura.c,160 :: 		temp =  Ow_Read();
	LCALL _Ow_Read+0
	MOV _temp+0, 0
	CLR A
	MOV _temp+1, A
;temperatura.c,161 :: 		temp = (Ow_Read() << 8) + temp;
	LCALL _Ow_Read+0
	MOV R1, 0
	MOV R0, #0
	MOV R2, #0
	MOV A, R0
	ADD A, _temp+0
	MOV _temp+0, A
	MOV A, R1
	ADDC A, _temp+1
	MOV _temp+1, A
;temperatura.c,162 :: 		}
	RET
; end of _Citeste_temp

_Display_Temperature:
;temperatura.c,166 :: 		void Display_Temperature(unsigned int temp2write) {
;temperatura.c,172 :: 		if (temp2write & 0x8000) {
	MOV A, FARG_Display_Temperature_temp2write+0
	ANL A, #0
	MOV R0, A
	MOV A, FARG_Display_Temperature_temp2write+1
	ANL A, #128
	MOV R1, A
	MOV A, R0
	ORL A, R1
	JZ L_Display_Temperature18
;temperatura.c,173 :: 		text[0] = '-';
	MOV _text+0, #45
;temperatura.c,174 :: 		temp2write = ~temp2write + 1;
	XRL FARG_Display_Temperature_temp2write+0, #255
	XRL FARG_Display_Temperature_temp2write+1, #255
	MOV A, #1
	ADD A, FARG_Display_Temperature_temp2write+0
	MOV FARG_Display_Temperature_temp2write+0, A
	MOV A, #0
	ADDC A, FARG_Display_Temperature_temp2write+1
	MOV FARG_Display_Temperature_temp2write+1, A
;temperatura.c,175 :: 		}
L_Display_Temperature18:
;temperatura.c,178 :: 		temp_whole = temp2write >> RES_SHIFT ;
	MOV R2, #1
	MOV A, FARG_Display_Temperature_temp2write+1
	MOV R0, FARG_Display_Temperature_temp2write+0
	INC R2
	SJMP L__Display_Temperature21
L__Display_Temperature22:
	CLR C
	RRC A
	XCH A, R0
	RRC A
	XCH A, R0
L__Display_Temperature21:
	DJNZ R2, L__Display_Temperature22
	MOV R1, A
	MOV Display_Temperature_temp_whole_L0+0, 0
;temperatura.c,181 :: 		if (temp_whole/100)
	MOV B+0, #100
	MOV A, R0
	DIV AB
	MOV R0, A
	JZ L_Display_Temperature19
;temperatura.c,182 :: 		text[0] = temp_whole/100  + 48;
	MOV B+0, #100
	MOV A, Display_Temperature_temp_whole_L0+0
	DIV AB
	MOV R0, A
	ADD A, #48
	MOV _text+0, A
	SJMP L_Display_Temperature20
L_Display_Temperature19:
;temperatura.c,184 :: 		text[0] = '0';
	MOV _text+0, #48
L_Display_Temperature20:
;temperatura.c,186 :: 		text[1] = (temp_whole/10)%10 + 48;             // Extract tens digit
	MOV B+0, #10
	MOV A, Display_Temperature_temp_whole_L0+0
	DIV AB
	MOV R0, A
	MOV B+0, #10
	MOV A, R0
	DIV AB
	MOV A, B+0
	MOV R0, A
	ADD A, #48
	MOV R0, A
	MOV _text+1, 0
;temperatura.c,187 :: 		text1[0]=text[1];
	MOV _text1+0, 0
;temperatura.c,188 :: 		text[2] =  temp_whole%10     + 48;             // Extract ones digit
	MOV B+0, #10
	MOV A, Display_Temperature_temp_whole_L0+0
	DIV AB
	MOV A, B+0
	MOV R0, A
	ADD A, #48
	MOV R0, A
	MOV _text+2, 0
;temperatura.c,189 :: 		text1[1]=text[2];
	MOV _text1+1, 0
;temperatura.c,191 :: 		temp_fraction  = temp2write << (4-RES_SHIFT);
	MOV R2, #3
	MOV R1, FARG_Display_Temperature_temp2write+1
	MOV A, FARG_Display_Temperature_temp2write+0
	INC R2
	SJMP L__Display_Temperature23
L__Display_Temperature24:
	CLR C
	RLC A
	XCH A, R1
	RLC A
	XCH A, R1
L__Display_Temperature23:
	DJNZ R2, L__Display_Temperature24
	MOV R0, A
	MOV Display_Temperature_temp_fraction_L0+0, 0
	MOV Display_Temperature_temp_fraction_L0+1, 1
;temperatura.c,192 :: 		temp_fraction &= 0x000F;
	ANL 0, #15
	ANL 1, #0
	MOV Display_Temperature_temp_fraction_L0+0, 0
	MOV Display_Temperature_temp_fraction_L0+1, 1
;temperatura.c,193 :: 		temp_fraction *= 625;
	MOV R4, #113
	MOV R5, #2
	LCALL _Mul_16x16+0
	MOV Display_Temperature_temp_fraction_L0+0, 0
	MOV Display_Temperature_temp_fraction_L0+1, 1
;temperatura.c,196 :: 		text[4] =  temp_fraction/1000    + 48;         // Extract thousands digit
	MOV R4, #232
	MOV R5, #3
	LCALL _Div_16x16_U+0
	MOV A, #48
	ADD A, R0
	MOV _text+4, A
;temperatura.c,197 :: 		text[5] = (temp_fraction/100)%10 + 48;         // Extract hundreds digit
	MOV R4, #100
	MOV R5, #0
	MOV R0, Display_Temperature_temp_fraction_L0+0
	MOV R1, Display_Temperature_temp_fraction_L0+1
	LCALL _Div_16x16_U+0
	MOV R4, #10
	MOV R5, #0
	LCALL _Div_16x16_U+0
	MOV R0, 4
	MOV R1, 5
	MOV A, #48
	ADD A, R0
	MOV _text+5, A
;temperatura.c,198 :: 		text[6] = (temp_fraction/10)%10  + 48;         // Extract tens digit
	MOV R4, #10
	MOV R5, #0
	MOV R0, Display_Temperature_temp_fraction_L0+0
	MOV R1, Display_Temperature_temp_fraction_L0+1
	LCALL _Div_16x16_U+0
	MOV R4, #10
	MOV R5, #0
	LCALL _Div_16x16_U+0
	MOV R0, 4
	MOV R1, 5
	MOV A, #48
	ADD A, R0
	MOV _text+6, A
;temperatura.c,199 :: 		text[7] =  temp_fraction%10      + 48;         // Extract ones digit
	MOV R4, #10
	MOV R5, #0
	MOV R0, Display_Temperature_temp_fraction_L0+0
	MOV R1, Display_Temperature_temp_fraction_L0+1
	LCALL _Div_16x16_U+0
	MOV R0, 4
	MOV R1, 5
	MOV A, #48
	ADD A, R0
	MOV _text+7, A
;temperatura.c,200 :: 		text1[3]=text[4];
	MOV _text1+3, _text+4
;temperatura.c,201 :: 		text1[4]=text[5];
	MOV _text1+4, _text+5
;temperatura.c,205 :: 		Lcd_Out(2, 9, text1);
	MOV FARG_LCD_Out_row+0, #2
	MOV FARG_LCD_Out_column+0, #9
	MOV FARG_LCD_Out_text+0, #_text1+0
	LCALL _LCD_Out+0
;temperatura.c,206 :: 		}
	RET
; end of _Display_Temperature
