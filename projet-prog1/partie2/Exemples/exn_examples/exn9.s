.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq g 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 jmp .end_corps_try_1 
.call_pere_0: 
	 pushq %rax 
	 jmp .debut_finally_try_1 
	 jmp .debut_finally_try_1 
.end_corps_try_1: 
	 movq $.str_0, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_1_0 
	 jmp .cmp_str2_1_0 
.cmp_str_1_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 movq $0, %r12 
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
.debut_finally_try_1: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
g: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq f 
	 cmpq $0, %r12 
	 je .call_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_1: 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
f: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $51, %rax 
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
.str_0:
 	 .string "A" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
