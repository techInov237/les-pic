
_main:

;comp.c,1 :: 		void main() {
;comp.c,3 :: 		char nbre[] = { 0x06,0x5B,0x4F,0x66,0x6D, 0x7D, 0x07,0x7F, 0x6F} ; // 0x7F
	MOVLW      6
	MOVWF      main_nbre_L0+0
	MOVLW      91
	MOVWF      main_nbre_L0+1
	MOVLW      79
	MOVWF      main_nbre_L0+2
	MOVLW      102
	MOVWF      main_nbre_L0+3
	MOVLW      109
	MOVWF      main_nbre_L0+4
	MOVLW      125
	MOVWF      main_nbre_L0+5
	MOVLW      7
	MOVWF      main_nbre_L0+6
	MOVLW      127
	MOVWF      main_nbre_L0+7
	MOVLW      111
	MOVWF      main_nbre_L0+8
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;comp.c,6 :: 		TRISB = 0;
	CLRF       TRISB+0
;comp.c,7 :: 		PORTB = 0;
	CLRF       PORTB+0
;comp.c,8 :: 		TRISA = 1;
	MOVLW      1
	MOVWF      TRISA+0
;comp.c,10 :: 		while (1==1)
L_main0:
;comp.c,12 :: 		if  (PORTA.F0 == 1)
	BTFSS      PORTA+0, 0
	GOTO       L_main2
;comp.c,14 :: 		for (i= 0; i <9; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main3:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;comp.c,16 :: 		PORTB = nbre[i];
	MOVF       main_i_L0+0, 0
	ADDLW      main_nbre_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;comp.c,17 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;comp.c,14 :: 		for (i= 0; i <9; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;comp.c,18 :: 		}
	GOTO       L_main3
L_main4:
;comp.c,19 :: 		}
	GOTO       L_main7
L_main2:
;comp.c,22 :: 		for (i= 0; i <9; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main8:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;comp.c,24 :: 		PORTB = nbre[9-i];
	MOVF       main_i_L0+0, 0
	SUBLW      9
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	ADDLW      main_nbre_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;comp.c,25 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;comp.c,22 :: 		for (i= 0; i <9; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;comp.c,26 :: 		}
	GOTO       L_main8
L_main9:
;comp.c,27 :: 		}
L_main7:
;comp.c,28 :: 		}
	GOTO       L_main0
;comp.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
