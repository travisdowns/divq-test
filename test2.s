; write something here about the purpose of the binary

	;%define OFFSET 0

GLOBAL _start:function
	
_start:

	mov rcx, 10_000_000
	mov rbx, 1
	xor eax, eax
	xor edx, edx
ALIGN 32

	times 32  nop
.top:
	times 3 add r8, r9
	xor eax, eax
	div rbx
	xor edx, edx
	times 5 add eax, eax
	
	dec rcx
	jnz .top
	

.done:
    	mov eax, 231    ;  exit(0)
    	syscall


