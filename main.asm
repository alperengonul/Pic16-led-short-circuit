
      list p=16f628a
      #include "p16f628a.inc"             ; Include register definition file
      
      org h'0000'
      clrf PORTB
      BANKSEL TRISB       ;   
      MOVLW b'11111110'  ;B PORTLARININ RB0 OUTPUT
      movwf TRISB
      MOVLW b'11111111'  ; BAPORTLARININ HEPSİ İNPUT
      MOVWF TRISA
      
      BANKSEL PORTB
      MOVLW b'00000111'
      MOVWF CMCON    ;GELEN 5V ALRI 1 VE 0 YAPAR
      
test
      btfsc PORTA,0
      bsf PORTB,0
      goto test
      
       
      end
      
      
      
      
      
      
      
      