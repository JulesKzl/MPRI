.data 
	 .NULL: .space 8 
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
	 movq $4, %rax 
	 movq %rax ,-24(%rbp) 
	 pushq %rax 
	 movq $3, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq stdout, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.section .rodata 
 	 .align 8 
.str_0:
 	 .string "Valeur de j=%d (normalement 7), valeur de i=%d.\n" 
