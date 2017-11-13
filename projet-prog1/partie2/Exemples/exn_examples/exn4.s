.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $1, %rax 
	 movq $1, %r12 
	 movq %rax, %r15 
	 jmp .debut_finally_try_1 
	 jmp .debut_finally_try_1 
.end_corps_try_1: 
.debut_finally_try_1: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $1, %r12 
	 je .return_bloc_1 
	 jmp .return_bloc2_1 
.return_bloc_1: 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.return_bloc2_1: 
.excn_non_rattrapee:
	 movq $.uncaught, %rdi 
	 movq $0, %rax 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 popq %rbp 
	 ret 
.section .rodata 
 	 .align 8 
.uncaught:
 	 .string "Uncaught exception"  
