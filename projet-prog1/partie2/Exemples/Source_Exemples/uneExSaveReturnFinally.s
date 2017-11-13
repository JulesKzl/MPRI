.data 
	 .NULL: .space 8 
.text 
.globl main 
f: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $1000, %rax 
	 movq %rax ,-24(%rbp) 
	 movq $1, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $.str_0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fprintf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 jmp .end_corps_try_1 
.call_pere_0: 
	 movq $10, %rax 
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
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_3, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fprintf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_1: 
	 movq -16(%rbp), %rax 
	 movq %rax ,-24(%rbp) 
	 movq $2, %rax 
	 movq %rax ,-16(%rbp) 
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
.debut_finally_try_1: 
	 movq $2, %rax 
	 negq %rax 
	 movq %rax ,-16(%rbp) 
	 movq $.str_4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fprintf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_2 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_2: 
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
	 movq $100, %rax 
	 negq %rax 
	 movq %rax ,-24(%rbp) 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 movq $3, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq f 
	 cmpq $0, %r12 
	 je .call_pere_3 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_3: 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $.str_5, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq fprintf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_4 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_4: 
	 movq $.str_6, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fprintf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_5 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_5: 
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
.str_6:
 	 .string "res\n" 
	 .align 8 
.str_5:
 	 .string "res: %d" 
	 .align 8 
.str_4:
 	 .string "finally" 
	 .align 8 
.str_3:
 	 .string "oh" 
	 .align 8 
.str_2:
 	 .string "Exc" 
	 .align 8 
.str_1:
 	 .string "Exc" 
	 .align 8 
.str_0:
 	 .string "AHAH" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
