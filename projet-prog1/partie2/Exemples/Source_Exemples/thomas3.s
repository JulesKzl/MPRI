.data 
	 .b: .space 8 
	 .tab: .space 8 
	 .NULL: .space 8 
.text 
.globl main 
f: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
g: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 movq $1, %r12 
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
	 movq %r15 ,-16(%rbp) 
	 movq $0, %r12 
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
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
.debut_finally_try_1: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
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
h: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 movq $1, %r12 
	 pushq %rax 
	 jmp .debut_finally_try_2 
	 jmp .debut_finally_try_2 
.end_corps_try_2: 
	 movq $.str_2, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_2_0 
	 jmp .cmp_str2_2_0 
.cmp_str_2_0: 
	 subq $8, %rsp 
	 movq %r15 ,-16(%rbp) 
	 movq $0, %r12 
	 movq $.str_3, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_1: 
	 jmp .debut_finally_try_2 
.cmp_str2_2_0: 
.debut_finally_try_2: 
	 movq $1, %rax 
	 movq %rax, %r15
	 movq $.str_4, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_2: 
i: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq $2, %rax 
	 movq %rax, %r15
	 movq $.str_5, %r12 
	 jmp .end_corps_try_3 
	 movq -8(%rbp), %rax 
	 movq $1, %r12 
	 pushq %rax 
	 jmp .debut_finally_try_3 
	 jmp .debut_finally_try_3 
.end_corps_try_3: 
	 movq $.str_6, %rsi 
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
	 movq -16(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .debut_finally_try_3 
.cmp_str2_3_0: 
.debut_finally_try_3: 
	 movq $3, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_3: 
j: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq $2, %rax 
	 movq %rax, %r15
	 movq $.str_7, %r12 
	 jmp .end_corps_try_4 
	 movq -8(%rbp), %rax 
	 movq $1, %r12 
	 pushq %rax 
	 jmp .debut_finally_try_4 
	 jmp .debut_finally_try_4 
.end_corps_try_4: 
	 movq $.str_8, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_4_0 
	 jmp .cmp_str2_4_0 
.cmp_str_4_0: 
	 subq $8, %rsp 
	 movq %r15 ,-16(%rbp) 
	 movq $0, %r12 
	 movq -16(%rbp), %rax 
	 movq %rax, %r15
	 movq $.str_9, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .debut_finally_try_4 
.cmp_str2_4_0: 
.debut_finally_try_4: 
	 movq $3, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $1, %r12 
	 je .try_return_4 
	 jmp .try_return_2_4 
.try_return_4: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_4: 
	 cmpq $0, %r12 
	 je .try_pere_4 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_4: 
k: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq .tab(%rip), %rax 
	 movq $1, %r12 
	 pushq %rax 
	 jmp .debut_finally_try_5 
	 jmp .debut_finally_try_5 
.end_corps_try_5: 
	 movq $.str_10, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_5_0 
	 jmp .cmp_str2_5_0 
.cmp_str_5_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq -8(%rbp), %rax 
	 movq %rax, %r15
	 movq $.str_11, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .debut_finally_try_5 
.cmp_str2_5_0: 
.debut_finally_try_5: 
	 movq $.str_12, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 movq $100000, %rax 
	 movq %rax ,.tab(%rip) 
	 movq $1, %rax 
	 movq %rax, %r15
	 movq $.str_13, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $1, %r12 
	 je .try_return_5 
	 jmp .try_return_2_5 
.try_return_5: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_5: 
	 cmpq $0, %r12 
	 je .try_pere_5 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_5: 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 subq $8, %rsp 
	 movq $0, %rax 
	 movq %rax ,.tab(%rip) 
	 movq $0, %rax 
	 movq %rax ,-24(%rbp) 
	 movq $2, %rax 
	 movq %rax, %r15
	 movq $.str_14, %r12 
	 jmp .end_corps_try_8 
	 jmp .debut_finally_try_8 
.end_corps_try_8: 
	 movq $.str_15, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_8_0 
	 jmp .cmp_str2_8_0 
.cmp_str_8_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_16, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_3 
	 jmp .end_corps_try_7 
.call_pere_3: 
	 jmp .debut_finally_try_8 
.cmp_str2_8_0: 
.debut_finally_try_8: 
	 cmpq $1, %r12 
	 je .try_return_8 
	 jmp .try_return_2_8 
.try_return_8: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_8: 
	 cmpq $0, %r12 
	 je .try_pere_8 
jmp .end_corps_try_7 
.try_pere_8: 
	 jmp .debut_finally_try_7 
.end_corps_try_7: 
	 movq $.str_17, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_7_0 
	 jmp .cmp_str2_7_0 
.cmp_str_7_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 jmp .debut_finally_try_7 
.cmp_str2_7_0: 
.debut_finally_try_7: 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 cmpq $1, %r12 
	 je .try_return_7 
	 jmp .try_return_2_7 
.try_return_7: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_7: 
	 cmpq $0, %r12 
	 je .try_pere_7 
jmp .end_corps_try_6 
.try_pere_7: 
	 jmp .debut_finally_try_6 
.end_corps_try_6: 
	 movq $.str_18, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_6_0 
	 jmp .cmp_str2_6_0 
.cmp_str_6_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_19, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_4 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_4: 
	 jmp .debut_finally_try_6 
.cmp_str2_6_0: 
.debut_finally_try_6: 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 cmpq $1, %r12 
	 je .try_return_6 
	 jmp .try_return_2_6 
.try_return_6: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_6: 
	 cmpq $0, %r12 
	 je .try_pere_6 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_6: 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_20, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_5 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_5: 
	 movq $1, %rax 
	 movq %rax ,-24(%rbp) 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq f 
	 cmpq $0, %r12 
	 je .call_pere_6 
	 jmp .end_corps_try_9 
.call_pere_6: 
	 jmp .debut_finally_try_9 
.end_corps_try_9: 
	 movq $.str_21, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_0 
	 jmp .cmp_str2_9_0 
.cmp_str_9_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_22, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_7 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_7: 
	 jmp .debut_finally_try_9 
.cmp_str2_9_0: 
.debut_finally_try_9: 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 cmpq $1, %r12 
	 je .try_return_9 
	 jmp .try_return_2_9 
.try_return_9: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_9: 
	 cmpq $0, %r12 
	 je .try_pere_9 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_9: 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_23, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_8 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_8: 
	 movq $0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq g 
	 cmpq $0, %r12 
	 je .call_pere_9 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_9: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_24, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_10 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_10: 
	 movq $0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq h 
	 cmpq $0, %r12 
	 je .call_pere_11 
	 jmp .end_corps_try_10 
.call_pere_11: 
	 movq %rax ,-24(%rbp) 
	 jmp .debut_finally_try_10 
.end_corps_try_10: 
	 movq $.str_25, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_10_0 
	 jmp .cmp_str2_10_0 
.cmp_str_10_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq -32(%rbp), %rax 
	 movq %rax ,-24(%rbp) 
	 jmp .debut_finally_try_10 
.cmp_str2_10_0: 
.debut_finally_try_10: 
	 cmpq $1, %r12 
	 je .try_return_10 
	 jmp .try_return_2_10 
.try_return_10: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_10: 
	 cmpq $0, %r12 
	 je .try_pere_10 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_10: 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_26, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_12: 
	 movq $0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq i 
	 cmpq $0, %r12 
	 je .call_pere_13 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_13: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_27, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_14 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_14: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 movq $0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq j 
	 cmpq $0, %r12 
	 je .call_pere_15 
	 jmp .end_corps_try_11 
.call_pere_15: 
	 movq %rax ,-24(%rbp) 
	 jmp .debut_finally_try_11 
.end_corps_try_11: 
	 movq $.str_28, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_11_0 
	 jmp .cmp_str2_11_0 
.cmp_str_11_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_29, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_16 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_16: 
	 jmp .debut_finally_try_11 
.cmp_str2_11_0: 
	 movq $.str_30, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_11_1 
	 jmp .cmp_str2_11_1 
.cmp_str_11_1: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $1, %rax 
	 movq %rax ,-24(%rbp) 
	 jmp .debut_finally_try_11 
.cmp_str2_11_1: 
	 movq $.str_31, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_11_2 
	 jmp .cmp_str2_11_2 
.cmp_str_11_2: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_32, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_17 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_17: 
	 jmp .debut_finally_try_11 
.cmp_str2_11_2: 
.debut_finally_try_11: 
	 cmpq $1, %r12 
	 je .try_return_11 
	 jmp .try_return_2_11 
.try_return_11: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_11: 
	 cmpq $0, %r12 
	 je .try_pere_11 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_11: 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_33, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_18 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_18: 
	 movq $0, %rax 
	 .align 16 
	 callq k 
	 cmpq $0, %r12 
	 je .call_pere_19 
	 jmp .end_corps_try_12 
.call_pere_19: 
	 movq %rax ,.b(%rip) 
	 jmp .debut_finally_try_12 
.end_corps_try_12: 
	 movq $.str_34, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_12_0 
	 jmp .cmp_str2_12_0 
.cmp_str_12_0: 
	 subq $8, %rsp 
	 movq %r15 ,-32(%rbp) 
	 movq $0, %r12 
	 movq $.str_35, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_20 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_20: 
	 jmp .debut_finally_try_12 
.cmp_str2_12_0: 
.debut_finally_try_12: 
	 cmpq $1, %r12 
	 je .try_return_12 
	 jmp .try_return_2_12 
.try_return_12: 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_return_2_12: 
	 cmpq $0, %r12 
	 je .try_pere_12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_12: 
	 movq .b(%rip), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_36, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_21 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_21: 
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
.str_36:
 	 .string "Test 7: Test de Luca (ordre finally) \t -> %d (normalement 0)\n" 
	 .align 8 
.str_35:
 	 .string "ok\n" 
	 .align 8 
.str_34:
 	 .string "E" 
	 .align 8 
.str_33:
 	 .string "Test 6: Throw du catch prevaut: \t --> Compt:: %d (normalement 1)\n" 
	 .align 8 
.str_32:
 	 .string "ERROR\n" 
	 .align 8 
.str_31:
 	 .string "b" 
	 .align 8 
.str_30:
 	 .string "N" 
	 .align 8 
.str_29:
 	 .string "ERROR\n" 
	 .align 8 
.str_28:
 	 .string "a" 
	 .align 8 
.str_27:
 	 .string "Test 5: Return de catch prevaut: \t --> Compt:: %d (normalement 2)\n" 
	 .align 8 
.str_26:
 	 .string "Test 4: Throw vs return : \t\t --> Compt:: %d (normalement 1)\n" 
	 .align 8 
.str_25:
 	 .string "N" 
	 .align 8 
.str_24:
 	 .string "Test 3: Return de try prevaut: \t\t --> Compt:: %d (normalement 1)\n" 
	 .align 8 
.str_23:
 	 .string "Test 2: Try et return imbriques: \t --> Compt:: %d (normalement 2)\n" 
	 .align 8 
.str_22:
 	 .string "ERROR\n" 
	 .align 8 
.str_21:
 	 .string "c" 
	 .align 8 
.str_20:
 	 .string "Test 1: 3 try imbriques: \t\t --> Compt:: %d (normalement 3)\n" 
	 .align 8 
.str_19:
 	 .string "ERROR\n" 
	 .align 8 
.str_18:
 	 .string "a" 
	 .align 8 
.str_17:
 	 .string "b" 
	 .align 8 
.str_16:
 	 .string "ERROR\n" 
	 .align 8 
.str_15:
 	 .string "c" 
	 .align 8 
.str_14:
 	 .string "b" 
	 .align 8 
.str_13:
 	 .string "E" 
	 .align 8 
.str_12:
 	 .string "coucou\n" 
	 .align 8 
.str_11:
 	 .string "N" 
	 .align 8 
.str_10:
 	 .string "c" 
	 .align 8 
.str_9:
 	 .string "N" 
	 .align 8 
.str_8:
 	 .string "c" 
	 .align 8 
.str_7:
 	 .string "c" 
	 .align 8 
.str_6:
 	 .string "c" 
	 .align 8 
.str_5:
 	 .string "c" 
	 .align 8 
.str_4:
 	 .string "N" 
	 .align 8 
.str_3:
 	 .string "ERROR\n" 
	 .align 8 
.str_2:
 	 .string "c" 
	 .align 8 
.str_1:
 	 .string "ERROR\n" 
	 .align 8 
.str_0:
 	 .string "c" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
