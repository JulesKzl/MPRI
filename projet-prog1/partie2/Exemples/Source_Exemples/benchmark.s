.data 
	 .compteur: .space 8 
	 .NULL: .space 8 
.text 
.globl main 
f: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 movq $45, %rax 
	 movq %rax, %r15
	 movq $.str_0, %r12 
	 jmp .end_corps_try_1 
.end_corps_try_1: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_1 
	 movq $.str_1, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_1_0 
	 jmp .cmp_str2_1_0 
.cmp_str_1_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq -8(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_2, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
.debut_finally_try_1: 
	 pushq %r12 
	 movq $0, %r12  
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 movq $12, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 movq $0, %rax 
	 movq %rax ,.compteur(%rip) 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 movq $8, %rax 
	 movq %rax, %r15
	 movq $.str_3, %r12 
	 jmp .end_corps_try_5 
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
	 jmp .end_corps_try_5 
.call_pere_1: 
.end_corps_try_5: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_5 
	 movq $.str_5, %rsi 
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
	 movq $8, %rax 
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
	 movq -8(%rbp), %rax 
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
	 jmp .end_corps_try_4 
.call_pere_2: 
	 jmp .cif_1 
.cif_0: 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
.cif_1: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_5 
.cmp_str2_5_0: 
.debut_finally_try_5: 
	 pushq %r12 
	 movq $0, %r12  
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 movq $15, %rax 
	 movq %rax, %r15
	 movq $.str_7, %r12 
	 jmp .end_corps_try_4 
	 movq $.str_8, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_3 
	 jmp .end_corps_try_4 
.call_pere_3: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_5 
jmp .end_corps_try_4 
.try_pere_5: 
	 movq $.str_9, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_4 
	 jmp .end_corps_try_4 
.call_pere_4: 
.end_corps_try_4: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_4 
	 movq $.str_10, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_4_0 
	 jmp .cmp_str2_4_0 
.cmp_str_4_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $15, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_2 
	 movq $0, %rax 
	 jmp .cmp_3 
.cmp_2: 
	 movq $1, %rax 
.cmp_3: 
	 cmpq $1, %rax 
	 je .cif_2 
	 movq -8(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_11, %rax 
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
	 jmp .end_corps_try_3 
.call_pere_5: 
	 jmp .cif_3 
.cif_2: 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
.cif_3: 
	 movq $0, %rax 
	 .align 16 
	 callq f 
	 cmpq $0, %r12 
	 je .call_pere_6 
	 jmp .end_corps_try_3 
.call_pere_6: 
	 movq $.str_12, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_7 
	 jmp .end_corps_try_3 
.call_pere_7: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_4 
.cmp_str2_4_0: 
.debut_finally_try_4: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_4 
jmp .end_corps_try_3 
.try_pere_4: 
.end_corps_try_3: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_3 
	 movq $.str_13, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_3_0 
	 jmp .cmp_str2_3_0 
.cmp_str_3_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_14, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_8 
	 jmp .end_corps_try_2 
.call_pere_8: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_3 
.cmp_str2_3_0: 
.debut_finally_try_3: 
	 pushq %r12 
	 movq $0, %r12  
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_3 
jmp .end_corps_try_2 
.try_pere_3: 
.end_corps_try_2: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_2 
	 movq $.str_15, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_2_0 
	 jmp .cmp_str2_2_0 
.cmp_str_2_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $45, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_4 
	 movq $0, %rax 
	 jmp .cmp_5 
.cmp_4: 
	 movq $1, %rax 
.cmp_5: 
	 cmpq $1, %rax 
	 je .cif_4 
	 movq -8(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_16, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_9 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_9: 
	 jmp .cif_5 
.cif_4: 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
.cif_5: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_2 
.cmp_str2_2_0: 
.debut_finally_try_2: 
	 pushq %r12 
	 movq $0, %r12  
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
.end_corps_try_6: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_6 
	 movq $.str_17, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_6_0 
	 jmp .cmp_str2_6_0 
.cmp_str_6_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_18, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_6 
.cmp_str2_6_0: 
.debut_finally_try_6: 
	 pushq %r12 
	 movq $0, %r12  
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
	 movq $9, %rax 
	 movq %rax, %r15
	 movq $.str_19, %r12 
	 jmp .end_corps_try_7 
	 movq $.str_20, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_11 
	 jmp .end_corps_try_7 
.call_pere_11: 
.end_corps_try_7: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_7 
	 movq $.str_21, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_7_0 
	 jmp .cmp_str2_7_0 
.cmp_str_7_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $9, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_6 
	 movq $0, %rax 
	 jmp .cmp_7 
.cmp_6: 
	 movq $1, %rax 
.cmp_7: 
	 cmpq $1, %rax 
	 je .cif_6 
	 movq -8(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_22, %rax 
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
	 jmp .cif_7 
.cif_6: 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
.cif_7: 
	 movq $190, %rax 
	 movq %rax, %r15
	 movq $.str_23, %r12 
	 jmp .end_corps_try_9 
.end_corps_try_9: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_9 
	 movq $.str_24, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_0 
	 jmp .cmp_str2_9_0 
.cmp_str_9_0: 
	 subq $8, %rsp 
	 movq %r15 ,-16(%rbp) 
	 movq $0, %r12 
	 movq $.str_25, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_13 
	 jmp .end_corps_try_8 
.call_pere_13: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_0: 
.debut_finally_try_9: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_9 
jmp .end_corps_try_8 
.try_pere_9: 
.end_corps_try_8: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_8 
	 movq $.str_26, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_8_0 
	 jmp .cmp_str2_8_0 
.cmp_str_8_0: 
	 subq $8, %rsp 
	 movq %r15 ,-16(%rbp) 
	 movq $0, %r12 
	 movq $190, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_8 
	 movq $0, %rax 
	 jmp .cmp_9 
.cmp_8: 
	 movq $1, %rax 
.cmp_9: 
	 cmpq $1, %rax 
	 je .cif_8 
	 movq -16(%rbp), %rax 
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
	 jmp .cif_9 
.cif_8: 
	 movq .compteur(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.compteur(%rip) 
	 popq %rax 
.cif_9: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_8 
.cmp_str2_8_0: 
.debut_finally_try_8: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_8 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_8: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_7 
.cmp_str2_7_0: 
.debut_finally_try_7: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_7 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_7: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_6 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_6: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_2 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_2: 
	 movq .compteur(%rip), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_28, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_15 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_15: 
	 movq $14, %rax 
	 pushq %rax 
	 movq .compteur(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_10 
	 movq $0, %rax 
	 jmp .cmp_11 
.cmp_10: 
	 movq $1, %rax 
.cmp_11: 
	 cmpq $1, %rax 
	 je .cif_10 
	 jmp .cif_11 
.cif_10: 
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
.cif_11: 
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
.str_29:
 	 .string "F\195\169licitations !\n" 
	 .align 8 
.str_28:
 	 .string "Tu as valid\195\169 %d points sur 14.\n" 
	 .align 8 
.str_27:
 	 .string "Tu ne sera jamais pardonn\195\169, il te faut 190, pas %d\n" 
	 .align 8 
.str_26:
 	 .string "Pardon" 
	 .align 8 
.str_25:
 	 .string "Encore perdu\n" 
	 .align 8 
.str_24:
 	 .string "RienDuTout" 
	 .align 8 
.str_23:
 	 .string "Pardon" 
	 .align 8 
.str_22:
 	 .string "Tu devrais trouver 9 pas %d\n" 
	 .align 8 
.str_21:
 	 .string "Inception" 
	 .align 8 
.str_20:
 	 .string "fail\n" 
	 .align 8 
.str_19:
 	 .string "Inception" 
	 .align 8 
.str_18:
 	 .string "Si tu me vois, tu as perdu !\n" 
	 .align 8 
.str_17:
 	 .string "CEstBeteDEtreObligeDeMettreQuelqueChoseIciEnfinEnMemeTempsCeTryEstUselessCEstVrai" 
	 .align 8 
.str_16:
 	 .string "Erreur : %d et pas 45 !\n" 
	 .align 8 
.str_15:
 	 .string "Allonsy" 
	 .align 8 
.str_14:
 	 .string "On ne passe pas par l\195\160\n" 
	 .align 8 
.str_13:
 	 .string "Anything" 
	 .align 8 
.str_12:
 	 .string "Tu ne me liras jamais et pourtant je prends de la place inutilement !\n" 
	 .align 8 
.str_11:
 	 .string "Autre avec la valeur %d au lieu de 15 !\n" 
	 .align 8 
.str_10:
 	 .string "Autre" 
	 .align 8 
.str_9:
 	 .string "Est-ce que \195\167a \195\167a appara\195\174t ? Normalement pas.\n" 
	 .align 8 
.str_8:
 	 .string "Pareil, on ne doit pas voir \195\167a\n" 
	 .align 8 
.str_7:
 	 .string "Autre" 
	 .align 8 
.str_6:
 	 .string "Tu as trouv\195\169 %d au lieu de 8\n" 
	 .align 8 
.str_5:
 	 .string "Test" 
	 .align 8 
.str_4:
 	 .string "Il y a un probl\195\168me si \195\167a s'affiche !\n" 
	 .align 8 
.str_3:
 	 .string "Test" 
	 .align 8 
.str_2:
 	 .string "Probl\195\168me : %d\n" 
	 .align 8 
.str_1:
 	 .string "OnNeVeutRienAttrapperIciEnFait" 
	 .align 8 
.str_0:
 	 .string "Allonsy" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
