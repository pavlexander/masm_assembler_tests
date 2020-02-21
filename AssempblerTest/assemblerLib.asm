.586              ;Target processor.  Use instructions for Pentium class machines
.MODEL FLAT, C    ;Use the flat memory model. Use C calling conventions
.STACK 100h           ;Define a stack segment of 1KB (Not required for this example)
.DATA             ;Create a near data segment.  Local variables are declared after
                  ;this directive (Not required for this example)
;	test DWORD 0
.CODE             ;Indicates the start of a code segment.

clear PROC
	mov eax, 1 ;
	mov ebx, 0 ; running sum
	mov ecx, 1 ; outer loop increment
	
outerLoop:
	mov edx, 3
	mul edx
	jo overflowcause
	add ebx, eax
	jo overflowcause
	inc ecx
	cmp ecx, 10
	jle outerLoop

overflowcause:
	nop

   ret 

   ; imbedded procedure..
testCall:
	nop
	ret

clear ENDP 

; procedure
testCall2 proc
	nop
	ret
testCall2 ENDP

   ; imbedded procedure..
testCall3:
	nop
	ret

END 