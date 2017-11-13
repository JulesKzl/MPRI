.data 
	 .NULL: .space 8 
.text 
.globl main 
ex: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 movq $10, %rax 
	 movq %rax, %r15
	 movq $.str_0, %r12 
	 jmp .end_corps_try_3 
	 jmp .debut_finally_try_3 
.end_corps_try_3: 
	 movq $.str_1, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_3_0 
	 jmp .cmp_str2_3_0 
.cmp_str_3_0: 
	 subq $8, %rsp 
	 movq %r15 ,-24(%rbp) 
	 movq $0, %r12 
	 jmp .debut_finally_try_3 
.cmp_str2_3_0: 
.debut_finally_try_3: 
	 movq $.str_2, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 jmp .end_corps_try_2 
.call_pere_0: 
	 cmpq $1, %r12 
	 je .try_return_3 
	 jmp .try_return_2_3 
.try_return_3: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_3: 
	 cmpq $0, %r12 
	 je .try_pere_3 
jmp .end_corps_try_2 
.try_pere_3: 
	 jmp .debut_finally_try_2 
.end_corps_try_2: 
	 movq $.str_3, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_2_0 
	 jmp .cmp_str2_2_0 
.cmp_str_2_0: 
	 subq $8, %rsp 
	 movq %r15 ,-24(%rbp) 
	 movq $0, %r12 
	 jmp .debut_finally_try_2 
.cmp_str2_2_0: 
.debut_finally_try_2: 
	 movq $.str_4, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_1 
	 jmp .end_corps_try_1 
.call_pere_1: 
	 cmpq $1, %r12 
	 je .try_return_2 
	 jmp .try_return_2_2 
.try_return_2: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_2: 
	 cmpq $0, %r12 
	 je .try_pere_2 
jmp .end_corps_try_1 
.try_pere_2: 
	 jmp .debut_finally_try_1 
.end_corps_try_1: 
	 movq $.str_5, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_1_0 
	 jmp .cmp_str2_1_0 
.cmp_str_1_0: 
	 subq $8, %rsp 
	 movq %r15 ,-24(%rbp) 
	 movq $0, %r12 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_6, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_2 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_2: 
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
.debut_finally_try_1: 
	 movq $.str_7, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_3 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_3: 
	 cmpq $1, %r12 
	 je .try_return_1 
	 jmp .try_return_2_1 
.try_return_1: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_1: 
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 movq $50, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq ex 
	 cmpq $0, %r12 
	 je .call_pere_4 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_4: 
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
.str_7:
 	 .string "fin3 " 
	 .align 8 
.str_6:
 	 .string "throw rattrape: %d" 
	 .align 8 
.str_5:
 	 .string "Exc" 
	 .align 8 
.str_4:
 	 .string "fin2 " 
	 .align 8 
.str_3:
 	 .string "Ze" 
	 .align 8 
.str_2:
 	 .string "fin1 " 
	 .align 8 
.str_1:
 	 .string "Ze" 
	 .align 8 
.str_0:
 	 .string "Exc" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
