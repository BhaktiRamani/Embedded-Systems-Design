
 
;*******************************************************************************
; File Name: LED_BLINK_VARIABLE_FREQ_WITH_DEBUG.ASM
; Author: Bhakti Ramani (modified by Assistant)
; Date: 9/27/2024
;
; Description: This program uses Timer 0 to blink an LED at two different
;              frequencies based on an input pin state. It also toggles a
;              second pin to indicate ISR execution. Additionally, it implements
;              a debug latch functionality for tracing execution.
;
; Pin Configuration:
;   P1.0 - Output: LED
;   P1.1 - Output: ISR indicator
;   P1.2 - Input:  Frequency select (HIGH: 1.25 Hz, LOW: 0.40 Hz)
;   P0   - Output: Data bus for debug latch
;*******************************************************************************

ORG 0000H
    LJMP MAIN          ; Jump to main program

ORG 000BH
    LJMP TIMER0_ISR    ; Timer 0 interrupt vector

ORG 0030H              ; Data memory for debug counters
ISR_COUNTER:   DS 1
MAIN_COUNTER:  DS 1

ORG 0100H              ; Start main code at a safe distance
MAIN:
    MOV R3, #11        ; Initialize overflow counter for normal mode (1.25 Hz)
    MOV TMOD, #01H     ; Set Timer 0 to 16-bit mode
    MOV IE, #82H       ; Enable Timer 0 interrupt
    MOV TH0, #7CH      ; Set initial Timer 0 value (high byte)
    MOV TL0, #0C8H     ; Set initial Timer 0 value (low byte)
    MOV P1, #00000100B ; Configure P1.2 as input, P1.0 and P1.1 as outputs
    MOV ISR_COUNTER, #80H  ; Initialize ISR debug counter
    MOV MAIN_COUNTER, #00H ; Initialize main loop debug counter
    SETB TR0           ; Start Timer 0

MAIN_LOOP:
    ; Write to debug latch
    MOV DPTR, #0000H   ; Set DPTR to low memory address
    MOV A, MAIN_COUNTER
    MOVX @DPTR, A      ; Write to debug latch
    INC MAIN_COUNTER   ; Increment main loop counter
    MOV A, MAIN_COUNTER
    CJNE A, #80H, SKIP_MAIN_RESET
    MOV MAIN_COUNTER, #00H  ; Reset to 00h if reached 80h
SKIP_MAIN_RESET:
    SJMP MAIN_LOOP     ; Infinite main loop

TIMER0_ISR:
    SETB P1.1          ; Set ISR indicator pin
    CLR TF0            ; Clear Timer 0 overflow flag
    CLR TR0            ; Stop Timer 0

    ; Write to debug latch
    MOV DPTR, #0000H   ; Set DPTR to low memory address
    MOV A, ISR_COUNTER
    MOVX @DPTR, A      ; Write to debug latch
    INC ISR_COUNTER    ; Increment ISR counter
    MOV A, ISR_COUNTER
    CJNE A, #00H, SKIP_ISR_RESET
    MOV ISR_COUNTER, #80H  ; Reset to 80h if reached 00h
SKIP_ISR_RESET:

    DJNZ R3, TIMER0_OVERFLOW ; Decrement overflow counter, jump if not zero

    CPL P1.0           ; Toggle LED pin

    JB P1.2, LED_NORM  ; Check input pin state
    JNB P1.2, LED_SLOW ; Branch based on input pin state
LED_NORM:
    MOV R3, #11        ; Set counter for normal mode (1.25 Hz)
    SJMP TIMER0_OVERFLOW
LED_SLOW:
    MOV R3, #24        ; Set counter for slow mode (0.40 Hz)
    SJMP TIMER0_OVERFLOW
TIMER0_OVERFLOW:
    MOV TH0, #7CH      ; Reload Timer 0 high byte
    MOV TL0, #0C8H     ; Reload Timer 0 low byte
    SETB TR0           ; Restart Timer 0
    CLR P1.1           ; Clear ISR indicator pin
    RETI               ; Return from interrupt

END
