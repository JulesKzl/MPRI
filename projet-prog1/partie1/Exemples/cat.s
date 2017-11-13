.data 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $1, %rax 
	 movq %rax ,-24(%rbp) 
.while_0: 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_0 
	 movq $0, %rax 
	 jmp .cmp_1 
.cmp_0: 
	 movq $1, %rax 
.cmp_1: 
	 cmpq $0, %rax 
	 je .while_1 
	 subq $8, %rsp 
	 movq $.str_0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fopen 
	 movslq %eax, %rax 
	 movq %rax ,-40(%rbp) 
.while_2: 
	 movq $1, %rax 
	 negq %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fgetc 
	 movslq %eax, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_2 
	 movq $0, %rax 
	 jmp .cmp_3 
.cmp_2: 
	 movq $1, %rax 
.cmp_3: 
	 cmpq $1, %rax 
	 je .eif_0 
	 movq $1, %rax 
	 jmp .eif_1 
.eif_0: 
	 movq $0, %rax 
.eif_1: 
	 cmpq $0, %rax 
	 je .while_3 
	 movq stdout, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fputc 
	 movslq %eax, %rax 
	 jmp .while_2 
.while_3: 
	 movq -40(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fclose 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 jmp .while_0 
.while_1: 
	 movq stdout, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
.section .rodata 
 	 .align 8 
.str_0:
 	 .string "r" 
