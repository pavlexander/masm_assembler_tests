.586              ;Target processor.  Use instructions for Pentium class machines
.MODEL FLAT, C    ;Use the flat memory model. Use C calling conventions
.STACK 100h           ;Define a stack segment of 1KB (Not required for this example)
.DATA             ;Create a near data segment.  Local variables are declared after
                  ;this directive (Not required for this example)
	eEx DWORD 0
.CODE             ;Indicates the start of a code segment.

clear PROC
	mov ebx, 0 ; running sum
	mov ecx, 1 ; outer loop increment

	; itterate outer loop
outerLoop:
	mov eax, 3 ; set the start value wintin an inner loop
	
	cmp ecx, 1 ; compare
	je skipLoop ; if POWER equals to 1 - skip the loop (don't multiply)
	
	mov eEx, 2 ; set inner loop increment value to 2 (default)
	; itterate inner loop
innerLoop:
	; otherwise
	mov edx, 3 ; set by how much multiplication is done
	mul edx ; multiply
	inc eEx ; increase increment inside an inner loop
	cmp eEx, ecx ; compare
	jle innerLoop
	; repeat inner loop until inner counter is less or equals to outer counter
	; (i.e. inner 3, outer 2 = exit, but inner 3, outer 3 = repeat once more)
	
	 ; exit inner loop
skipLoop:
	add ebx, eax ; add to running sum

	; repeat until ecx equals X
	inc ecx
	cmp ecx, 20
	jle outerLoop

   ret 
clear ENDP 
END 














.586              ;Target processor.  Use instructions for Pentium class machines
.MODEL FLAT, C    ;Use the flat memory model. Use C calling conventions
.STACK 100h           ;Define a stack segment of 1KB (Not required for this example)
.DATA             ;Create a near data segment.  Local variables are declared after
                  ;this directive (Not required for this example)
;	eEx DWORD 0
.CODE             ;Indicates the start of a code segment.

clear PROC
	mov ebx, 0 ; running sum
	mov ecx, 1 ; outer loop increment
	
	mov eax, 3 ; set the start value wintin an inner loop
	; itterate outer loop
outerLoop:
	cmp ecx, 1 ; compare
	je skipLoop ; if POWER equals to 1 - skip the loop (don't multiply)
	
	mov edx, 03h ; set by how much multiplication is done
	mul edx ; multiply

	 ; exit inner loop
skipLoop:
	add ebx, eax ; add to running sum

	; repeat until ecx equals X
	inc ecx
	cmp ecx, 20
	jle outerLoop

   ret 
clear ENDP 
END 









.586              ;Target processor.  Use instructions for Pentium class machines
.MODEL FLAT, C    ;Use the flat memory model. Use C calling conventions
.STACK 100h           ;Define a stack segment of 1KB (Not required for this example)
.DATA             ;Create a near data segment.  Local variables are declared after
                  ;this directive (Not required for this example)
;	eEx DWORD 0
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
clear ENDP 
END 