	 ORG  0000H
	 JMP  MAIN
		
	 ORG  0023H			; vector de intrerupere comunicatie 
	 JMP  SERIAL 			;   SERIALA 

COMANDA  DATA	30H			;comanda memoreaza comanda aferenta efectului care ruleaza
VITEZA	 DATA   31H			; VITEZA - variabila prin care se controleaza viteza de afisare a efectelor
OPRIRE	 BIT	0			; OPRIRE=1 - efectele sunt oprite
					; OPRIRE=0 - efectele ruleaza	 
	 ORG   100H
MAIN:	 MOV   SP,#60H      
	 MOV   IE,# 90H 		; validare intreruperi seriale
	 CALL  PROGSER 			; programare comunicatie seriala
	
	 MOV   COMANDA,#00H
	 MOV   VITEZA,#80H
	 CLR   OPRIRE	

	 MOV   P0,#00H			; stingere LED-uri port P0
	 MOV   P1,#00H			; stingere LED-uri port P1
	 MOV   P2,#00H			; stingere LED-uri port P2
	 MOV   P3,#03H			; stingere LED-uri port P3 cu
					;  exceptia P3.0 si P3.1 care 
					;    trebuie mentinute pe 1 logic 
					;    pentru a evita blocarea
					;    comunicatiei seriale 

  LOOP:	    JB	 OPRIRE,SF1
	    MOV	 A,COMANDA
	    CJNE A,#'1',CONTIX1 	; comparare cu cifra 1
     EFE1:  CALL EFECT1			; pornire efectul 1
	    JMP  SF1

   CONTIX1:  CJNE A,#'2',CONTIX2 	; comparare cu cifra 2
     EFE2:   CALL EFECT2		; pornire efectul 2
	     JMP  SF1

   CONTIX2:  CJNE A,#'3',CONTIX3  	; comparare cu cifra 3
     EFE3:   CALL EFECT3		; pornire efectul 3
	     JMP  SF1

   CONTIX3:  CJNE A,#'4',CONTIX4		; comparare cu cifra 4
     EFE4:   CALL EFECT4		; pornire efectul 4
	     JMP  SF1

   CONTIX4:  CJNE A,#'A',CONTIX5  	; comparare cu cifra 3
     APR1:   CALL APRINDE		; aprinderea LED-urilor
	     JMP  SF1

   CONTIX5:  CJNE A,#'S',SF1		; comparare cu cifra 4
     STG1:   CALL STINGE		; stingerea LED-urilor

   SF1:	     JMP  LOOP			; intreruperilor seriale

PROGSER: MOV   TMOD,#20H  		; subrutina pentru programare UART
      	 MOV   TH1,#245   		; baud rate = 4800, fUNI-DS6=10MHz  
	 MOV   TH0,#245
	 MOV   PCON,#128                                       
      	 MOV   SCON,#50H
         SETB  TR1
     	 CLR   TI      			; Clear transmit flag
     	 CLR   RI      			; Clear receive flag
 	 RET


; Subrutina de comunicatie seriala
SERIAL:     PUSH ACC
	    JB 	TI,SF	 		; TI=1 inseamna Transmisie
  RECEPTIE: MOV A,SBUF    		; citire caracter sosit
	    MOV	SBUF,A    		; trimitere ecou


	    CJNE A,#'1',CONTI1 		; comparare cu cifra 1
     EF1:   MOV COMANDA,A	
	    JMP  SF

   CONTI1:  CJNE A,#'2',CONTI2 		; comparare cu cifra 2
     EF2:   MOV COMANDA,A	
	    JMP  SF

   CONTI2:  CJNE A,#'3',CONTI3  	; comparare cu cifra 3
     EF3:   MOV COMANDA,A	
	    JMP  SF

   CONTI3:  CJNE A,#'4',CONTI4		; comparare cu cifra 4
     EF4:   MOV COMANDA,A
	    JMP SF		

   CONTI4:  CJNE A,#'A',CONTI5		; comparare cu litera A
     APRI:  MOV COMANDA,A
	    JMP  SF	
  	
   CONTI5:  CJNE A,#'S',CONTI6		; comparare cu litera S
     STIN:  MOV COMANDA,A
	    JMP	 SF

   CONTI6:  CJNE A,#'P',CONTI7		; comparare cu litera A
    PORNIRE: CLR OPRIRE
	    JMP  SF	
  	
   CONTI7:  CJNE A,#'O',CONTI8		; comparare cu litera S
    OPR:    SETB OPRIRE
	    JMP SF		

   CONTI8:  CJNE A,#'F',CONTI9		; comparare cu litera F
    FAST:   MOV A,VITEZA
	    CJNE A,#10H,SCAD
	    JMP SF
    SCAD:   SUBB A,#10H
	    MOV VITEZA,A
	    JMP SF

   CONTI9:  CJNE A,#'W',SF		; comparare cu litera W
    SLOW:   MOV A,VITEZA
	    CJNE A,#0F0H,ADUN
	    JMP SF
    ADUN:   ADD A,#10H
	    MOV VITEZA,A

SF:	    CLR  RI
	    CLR  TI
	    POP	 ACC
	    RETI

EFECT1:	
	MOV P0,#08H
	MOV P1,#18H
	MOV P2,#88H
	MOV P3,#0F7H
	CALL TEMP
	
	MOV P2,#8AH
	MOV P3,#0F3H
	CALL TEMP

	MOV P1,#1AH
	MOV P2,#88H
	MOV P3,#0F3H
	CALL TEMP

	MOV P0,#09H
	MOV P1,#18H
	CALL TEMP

	MOV P0,#48H
	CALL TEMP

	MOV P0,#08H
	MOV P1,#58H
	CALL TEMP

	MOV P0,#28H
	MOV P1,#18H
	CALL TEMP

	MOV P0,#18H
	CALL TEMP

	CLR P1.4
	CALL TEMP

	SETB P1.4
	CALL TEMP

	CLR P1.4
	CALL TEMP

	MOV P0,#18H
	CALL TEMP

	MOV P0,#28H
	CALL TEMP

	MOV P0,#48H
	CALL TEMP

	MOV P0,#88H
	CALL TEMP
	RET

EFECT2:			
	MOV P0,#0FFH
	MOV P1,#0FFH
	MOV P2,#0FFH
	MOV P3,#0FFH
	CALL TEMP
	
	MOV P2,#0F7H
	CALL TEMP

	MOV P1,#0F3H
	MOV P2,#0FBH
	CALL TEMP

	MOV P0,#0E1H
	MOV P1,#0E3H
	CALL TEMP

	MOV P0,#0C1H
	MOV P1,#83H
	CALL TEMP

	CLR P2.3
	CALL TEMP

	SETB P2.3
	CALL TEMP

	CLR P2.3
	CALL TEMP

	MOV P0,#0FFH
	MOV P1,#0FFH
	MOV P2,#0FFH
	MOV P3,#0FFH 
	CALL TEMP

	MOV P0,#00H
	MOV P1,#00H
	MOV P2,#00H
	MOV P3,#03H
	CALL TEMP

	MOV P0,#7EH
	MOV P1,#42H
	MOV P2,#52H
	MOV P3,#77H
	CALL TEMP

	MOV P1,#12H
	MOV P2,#12H
	MOV P3,#7FH
	CALL TEMP

	MOV P1,#04H
	MOV P2,#04H
	CALL TEMP

	MOV P1,#4AH
	MOV P2,#4AH
	MOV P3,#43H
	CALL TEMP
	
	MOV P1,#42H
	MOV P2,#42H
	MOV P3,#7FH
	CALL TEMP

	MOV P0,#3EH
	MOV P1,#40H
	MOV P2,#40H
	MOV P3,#3FH
	CALL TEMP

	MOV P0,#7EH
	MOV P1,#4AH
	MOV P2,#4AH
	MOV P3,#43H
	CALL TEMP

	MOV P0,#7EH
	MOV P1,#1AH
	MOV P2,#2AH
	MOV P3,#4FH
	CALL TEMP

	MOV P0,#64H
	MOV P1,#10H
	MOV P2,#10H
	MOV P3,#67H
	CALL TEMP


	MOV P0,#00H
	MOV P1,#00H
	MOV P2,#00H
	MOV P3,#03H
	CALL TEMP

	RET

EFECT3:	
	MOV P0,#00H
	MOV P1,#0E0H
	MOV P2,#40H
	MOV P3,#0E3H
	CALL TEMP
	
	MOV P0,#0E0H
	MOV P1,#40H
	MOV P2,#0E0H
	MOV P3,#03H
	CALL TEMP

	MOV P0,#00H
	MOV P1,#0E1H
	MOV P2,#41H
	MOV P3,#0E3H
	CALL TEMP

	MOV P1,#0F3H
	MOV P2,#43H
	CALL TEMP

	MOV P1,#0EEH
	MOV P2,#46H
	CALL TEMP

	MOV P0,#0E1H
	MOV P1,#40H
	MOV P2,#0E0H
	MOV P3,#03H
	CALL TEMP

	MOV P0,#0F3H
	MOV P1,#41H
	CALL TEMP

	MOV P0,#0EBH
	MOV P1,#43H
	CALL TEMP

	MOV P0,#0EEH
	MOV P1,#46H
	MOV P3,#03H 
	CALL TEMP

	MOV P0,#00H
	MOV P1,#0E0H
	MOV P2,#41H
	MOV P3,#0E3H
	CALL TEMP

	MOV P2,#41H
	MOV P3,#0F3H
	CALL TEMP

	MOV P1,#0E1H
	MOV P2,#43H
	MOV P3,#0EFH
	CALL TEMP

	MOV P1,#0E0H
	MOV P2,#40H
	MOV P3,#0E3H
	CALL TEMP

	MOV P1,#0E0H
	MOV P2,#40H
	MOV P3,#0E3H
	CALL TEMP
	
	MOV P1,#70H
	MOV P2,#20H
	MOV P3,#73H
	CALL TEMP

	MOV P1,#38H
	MOV P2,#10H
	MOV P3,#3BH
	CALL TEMP

	MOV P1,#1CH
	MOV P2,#08H
	MOV P3,#1FH
	CALL TEMP

	MOV P1,#0EH
	MOV P2,#04H
	MOV P3,#0FH
	CALL TEMP

	MOV P1,#07H
	MOV P2,#02H
	MOV P3,#07H
	CALL TEMP

	MOV P1,#01H
	MOV P2,#00H
	MOV P3,#03H
	CALL TEMP

	MOV P1,#00H
	MOV P2,#00H
	MOV P3,#03H
	CALL TEMP

	RET

EFECT4:	
	MOV P0,#0EBH
	MOV P1,#0D5H
	MOV P2,#0EBH
	MOV P3,#0D7H
	CALL TEMP
	
	MOV P0,#0D5H
	MOV P1,#0EBH
	MOV P2,#0D5H
	MOV P3,#0EBH
	CALL TEMP

	MOV P0,#0EBH
	MOV P1,#0D5H
	MOV P2,#0C1H
	MOV P3,#0C3H
	CALL TEMP

	MOV P0,#0C1H
	MOV P1,#0C1H
	MOV P2,#0EBH
	MOV P3,#0D7H
	CALL TEMP

	MOV P0,#0EBH
	MOV P1,#0D5H
	MOV P2,#0EBH
	MOV P3,#0D7H
	CALL TEMP

	MOV P0,#0D5H
	MOV P1,#0EBH
	MOV P2,#0D5H
	MOV P3,#0EBH
	CALL TEMP

	MOV P1,#0E9H
	MOV P3,#0EBH
	CALL TEMP

	MOV P0,#0D1H
	MOV P2,#0D1H
	CALL TEMP

	MOV P1,#0E0H
	MOV P2,#0D0H
	MOV P3,#0E3H
	CALL TEMP

	MOV P0,#0C1H
	MOV P1,#0E0H
	MOV P2,#0C0H
	MOV P3,#0E3H
	CALL TEMP

	MOV P0,#0C0H
	MOV P1,#0C0H
	MOV P2,#0C0H
	MOV P3,#0C3H
	CALL TEMP

	MOV P1,#0E0H
	MOV P2,#0E0H
	CALL TEMP

	MOV P0,#0E0H
	MOV P1,#0D0H
	MOV P2,#0D0H
	MOV P3,#0E3H
	CALL TEMP

	MOV P0,#0F0H
	MOV P1,#0C8H
	MOV P2,#0C8H
	MOV P3,#0F3H
	CALL TEMP

	MOV P0,#0D8H
	MOV P1,#0E4H
	MOV P2,#0E4H
	MOV P3,#0DBH
	CALL TEMP
	
	MOV P0,#0CCH
	MOV P1,#0D2H
	MOV P2,#0D2H
	MOV P3,#0CFH
	CALL TEMP

	MOV P0,#0C6H
	MOV P1,#0C9H
	MOV P2,#0C9H
	MOV P3,#0C7H
	CALL TEMP

	RET

APRINDE:MOV P0,#0FFH
	MOV P1,#0FFH
	MOV P2,#0FFH
	MOV P3,#0FFH
	CALL TEMP
	RET

STINGE: MOV P0,#00H
	MOV P1,#00H
	MOV P2,#00H
	MOV P3,#03H
	CALL TEMP
	RET

TEMP:		MOV  R1,VITEZA
   ETI2:	MOV  R2,#0FFH
   ETI1:	NOP
		DJNZ R2,ETI1
		DJNZ R1,ETI2
		RET
END
