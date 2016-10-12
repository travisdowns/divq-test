; write something here about the purpose of the binary

	;%define OFFSET 0

GLOBAL _start:function
	
_start:

	;mov eax, [abs 0]
	mov   rcx, 2
        mov   rbx, 31622777	; ceiling(sqrt(1000000000000037))
	cvtsi2sd  xmm6, rbx;
	mov   rbx, 1000000000000037
	jmp .L20
	; variable alignment goes here
ALIGN 32
	times OFFSET nop
	.L37:
	pxor       xmm0, xmm0
	cvtsi2sd   xmm0, rcx
	ucomisd    xmm6, xmm0
	jb  .L36   		; Exit the loop
	.L20:
	xor        edx, edx
	mov        rax, rbx
	div        rcx
	test       rdx, rdx
	je   .L30               ; Failed divisibility test 
	add        rcx, 1
	jns .L37

	mov eax, [abs 0]

.L30:
	mov edi, 1
	jmp .done	

.L36:
	xor edi, edi
.done:
    	mov eax, 231    ;  exit(0)
    	syscall


