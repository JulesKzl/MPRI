.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $.str_0, %rax 
	 movq %rax, %r15
	 movq $.str_1, %r12 
	 jmp .end_corps_try_1 
	 jmp .debut_finally_try_1 
.end_corps_try_1: 
	 movq $.str_2, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_1_0 
	 jmp .cmp_str2_1_0 
.cmp_str_1_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 movq $0, %r12 
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
	 movq $.str_3, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_1_1 
	 jmp .cmp_str2_1_1 
.cmp_str_1_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $2, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 movq $0, %r12 
	 jmp .debut_finally_try_1 
.cmp_str2_1_1: 
.debut_finally_try_1: 
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
	 movq %r15 , %rdi 
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
.str_3:
 	 .string "B" 
	 .align 8 
.str_2:
 	 .string "A" 
	 .align 8 
.str_1:
 	 .string "B" 
	 .align 8 
.str_0:
 	 .string "" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
