.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 subq $8, %rsp 
	 movq $0, %rax 
	 movq %rax ,-8(%rbp) 
.end_corps_try_1: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_1 
.debut_finally_try_1: 
	 pushq %r12 
	 movq $0, %r12  
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
.end_corps_try_2: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_2 
.debut_finally_try_2: 
	 pushq %r12 
	 movq $0, %r12  
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
.end_corps_try_3: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_3 
	 movq $.str_0, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_3_0 
	 jmp .cmp_str2_3_0 
.cmp_str_3_0: 
	 subq $8, %rsp 
	 movq %r15 ,-16(%rbp) 
	 movq $0, %r12 
	 jmp .debut_finally_try_3 
.cmp_str2_3_0: 
.debut_finally_try_3: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_3 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_3: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_2 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_2: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 movq $.str_1, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_0: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
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
.str_1:
 	 .string "OK" 
	 .align 8 
.str_0:
 	 .string "Inception" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
