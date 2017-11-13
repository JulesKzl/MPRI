.data 
	 .NULL: .space 8 
.text 
.globl main 
fact: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_0 
	 movq $0, %rax 
	 jmp .cmp_1 
.cmp_0: 
	 movq $1, %rax 
.cmp_1: 
	 cmpq $1, %rax 
	 je .cif_0 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fact 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .cif_1 
.cif_0: 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_1: 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $5, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fact 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.section .rodata 
 