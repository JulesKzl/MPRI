.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $2, %rax 
	 movq %rax, %r15
	 movq $.str_0, %r12 
	 jmp .end_corps_try_1 
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
	 movq $.uncaught , %rdi 
	 movq $0, %rax 
	 callq printf 
	 movq %r12 , %rdi 
	 movq $0, %rax 
	 callq printf 
	 movq $.pg , %rdi 
	 movq $0, %rax 
	 callq printf 
	 movq $.pd , %rdi 
	 movq $0, %rax 
	 callq printf 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.section .rodata 
 	 .align 8 
.str_0:
 	 .string "Z" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
