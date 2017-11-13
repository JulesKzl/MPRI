.data 
	 .k: .space 8 
	 .i: .space 8 
	 .NULL: .space 8 
.text 
.globl main 
rule_31: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $5, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $42, %rax 
	 movq %rax, %r15
	 movq $.str_0, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
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
rule_32_1: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $5, %rax 
	 movq %rax ,-8(%rbp) 
.end_corps_try_1: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_1 
.debut_finally_try_1: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $5, %rax 
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
	 movq $2, %rax 
	 movq %rax ,-8(%rbp) 
	 jmp .cif_1 
.cif_0: 
	 movq $3, %rax 
	 movq %rax ,-8(%rbp) 
.cif_1: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 movq $3, %rax 
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
	 movq $2, %rax 
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
	 movq $.str_2, %rax 
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
	 jmp .cif_5 
.cif_4: 
	 movq $.str_3, %rax 
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
.cif_5: 
	 jmp .cif_3 
.cif_2: 
	 movq $.str_4, %rax 
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
.cif_3: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
rule_32_2: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 addq %r10, %rax 
.end_corps_try_2: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_2 
.debut_finally_try_2: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_2 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_2: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
rule_32_3: 
	 pushq %rbp 
	 movq %rsp, %rbp 
.end_corps_try_3: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_3 
.debut_finally_try_3: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $10, %rax 
	 movq %rax, %r15
	 movq $.str_5, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_3 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_3: 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
rule_33: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $1, %rax 
	 jmp .end_corps_try_4 
.end_corps_try_4: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_4 
.debut_finally_try_4: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $99, %rax 
	 movq %rax ,.i(%rip) 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_4 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_4: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
rule_34: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 jmp .end_corps_try_5 
.end_corps_try_5: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_5 
.debut_finally_try_5: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $42, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_5 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_5: 
rule_36: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $6, %rax 
	 movq %rax, %r15
	 movq $.str_6, %r12 
	 jmp .end_corps_try_6 
.end_corps_try_6: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_6 
.debut_finally_try_6: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $66, %rax 
	 movq %rax ,.i(%rip) 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_6 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_6: 
rule_37_1: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $1, %rax 
	 movq %rax, %r15
	 movq $.str_7, %r12 
	 jmp .end_corps_try_7 
.end_corps_try_7: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_7 
.debut_finally_try_7: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_7 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_7: 
rule_37_2: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $1, %rax 
	 movq %rax, %r15
	 movq $.str_8, %r12 
	 jmp .end_corps_try_8 
.end_corps_try_8: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_8 
.debut_finally_try_8: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $1, %rax 
	 movq %rax, %r15
	 movq $.str_9, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_8 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_8: 
rule_39: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 movq $9, %rax 
	 movq %rax, %r15
	 movq $.str_10, %r12 
	 jmp .end_corps_try_9 
.end_corps_try_9: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_9 
	 movq $.str_11, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_0 
	 jmp .cmp_str2_9_0 
.cmp_str_9_0: 
	 subq $8, %rsp 
	 movq %r15 ,-24(%rbp) 
	 movq $0, %r12 
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_0: 
	 movq $.str_12, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_1 
	 jmp .cmp_str2_9_1 
.cmp_str_9_1: 
	 subq $8, %rsp 
	 movq %r15 ,-24(%rbp) 
	 movq $0, %r12 
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_1: 
	 movq $.str_13, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_2 
	 jmp .cmp_str2_9_2 
.cmp_str_9_2: 
	 subq $8, %rsp 
	 movq %r15 ,-24(%rbp) 
	 movq $0, %r12 
	 movq $1, %rax 
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
	 jmp .cif_7 
.cif_6: 
	 movq -16(%rbp), %rax 
	 movq %rax ,.i(%rip) 
.cif_7: 
	 movq $2, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
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
	 jmp .cif_9 
.cif_8: 
	 movq -24(%rbp), %rax 
	 movq %rax, %r15
	 movq $.str_14, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_9: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
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
	 movq -16(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_11: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_2: 
.debut_finally_try_9: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_12 
	 movq $0, %rax 
	 jmp .cmp_13 
.cmp_12: 
	 movq $1, %rax 
.cmp_13: 
	 cmpq $1, %rax 
	 je .cif_12 
	 jmp .cif_13 
.cif_12: 
	 movq -8(%rbp), %rax 
	 movq %rax ,.k(%rip) 
.cif_13: 
	 movq $2, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_14 
	 movq $0, %rax 
	 jmp .cmp_15 
.cmp_14: 
	 movq $1, %rax 
.cmp_15: 
	 cmpq $1, %rax 
	 je .cif_14 
	 jmp .cif_15 
.cif_14: 
	 movq -8(%rbp), %rax 
	 movq %rax, %r15
	 movq $.str_15, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_15: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_16 
	 movq $0, %rax 
	 jmp .cmp_17 
.cmp_16: 
	 movq $1, %rax 
.cmp_17: 
	 cmpq $1, %rax 
	 je .cif_16 
	 jmp .cif_17 
.cif_16: 
	 movq -8(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_17: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_9 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_9: 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $.str_16, %rax 
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
	 movq $.str_17, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 movq $.str_18, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_6 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_6: 
	 movq $.str_19, %rax 
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
	 movq $.str_20, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 movq $1, %rax 
	 cmpq $1, %rax 
	 je .cif_18 
	 movq $.str_21, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_9 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_9: 
	 jmp .cif_19 
.cif_18: 
	 movq $.str_22, %rax 
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
.cif_19: 
	 movq $.str_23, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_11 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_11: 
	 movq $0, %rax 
	 .align 16 
	 callq variables 
	 cmpq $0, %r12 
	 je .call_pere_12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_12: 
	 cmpq $1, %rax 
	 je .cif_20 
	 jmp .cif_21 
.cif_20: 
	 movq $.str_24, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_13 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_13: 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_21: 
	 movq $.str_25, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 .align 16 
	 callq test_comp 
	 cmpq $0, %r12 
	 je .call_pere_15 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_15: 
	 cmpq $1, %rax 
	 je .cif_22 
	 jmp .cif_23 
.cif_22: 
	 movq $.str_26, %rax 
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
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_17 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_17: 
.cif_23: 
	 movq $.str_27, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 callq test_op 
	 cmpq $0, %r12 
	 je .call_pere_19 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_19: 
	 movq $.str_28, %rax 
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
	 movq $0, %rax 
	 movq %rax ,-8(%rbp) 
.while_0: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_18 
	 movq $0, %rax 
	 jmp .cmp_19 
.cmp_18: 
	 movq $1, %rax 
.cmp_19: 
	 cmpq $0, %rax 
	 je .while_1 
	 jmp .while_0 
.while_1: 
	 movq $4, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_20 
	 movq $0, %rax 
	 jmp .cmp_21 
.cmp_20: 
	 movq $1, %rax 
.cmp_21: 
	 cmpq $1, %rax 
	 je .cif_24 
	 movq $.str_29, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .cif_25 
.cif_24: 
	 movq $.str_30, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_22 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_22: 
.cif_25: 
	 movq $.str_31, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_23 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_23: 
	 movq $.str_32, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_24 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_24: 
	 movq $.str_33, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_25 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_25: 
	 movq $.str_34, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_26 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_26: 
	 subq $8, %rsp 
	 movq $3, %rax 
	 movq %rax ,-40(%rbp) 
	 movq $0, %rax 
	 .align 16 
	 callq rule_31 
	 cmpq $0, %r12 
	 je .call_pere_27 
	 jmp .end_corps_try_10 
.call_pere_27: 
	 movq $.str_35, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_28 
	 jmp .end_corps_try_10 
.call_pere_28: 
.end_corps_try_10: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_10 
	 movq $.str_36, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_10_0 
	 jmp .cmp_str2_10_0 
.cmp_str_10_0: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $42, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_22 
	 movq $0, %rax 
	 jmp .cmp_23 
.cmp_22: 
	 movq $1, %rax 
.cmp_23: 
	 cmpq $1, %rax 
	 je .cif_26 
	 movq $.str_37, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_29 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_29: 
	 jmp .cif_27 
.cif_26: 
	 movq $.str_38, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_30 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_30: 
.cif_27: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_10 
.cmp_str2_10_0: 
.debut_finally_try_10: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_10 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_10: 
	 movq $.str_39, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_31 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_31: 
	 movq $0, %rax 
	 .align 16 
	 callq rule_32_1 
	 cmpq $0, %r12 
	 je .call_pere_32 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_32: 
	 movq $0, %rax 
	 .align 16 
	 callq rule_32_2 
	 cmpq $0, %r12 
	 je .call_pere_33 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_33: 
	 cmpq $1, %rax 
	 je .cif_28 
	 movq $.str_40, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_34 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_34: 
	 jmp .cif_29 
.cif_28: 
	 movq $.str_41, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_35 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_35: 
.cif_29: 
	 movq $0, %rax 
	 .align 16 
	 callq rule_32_3 
	 cmpq $0, %r12 
	 je .call_pere_36 
	 jmp .end_corps_try_11 
.call_pere_36: 
	 cmpq $1, %rax 
	 je .cif_30 
	 jmp .cif_31 
.cif_30: 
	 movq $.str_42, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_37 
	 jmp .end_corps_try_11 
.call_pere_37: 
.cif_31: 
.end_corps_try_11: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_11 
	 movq $.str_43, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_11_0 
	 jmp .cmp_str2_11_0 
.cmp_str_11_0: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $10, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_24 
	 movq $0, %rax 
	 jmp .cmp_25 
.cmp_24: 
	 movq $1, %rax 
.cmp_25: 
	 cmpq $1, %rax 
	 je .cif_32 
	 movq $.str_44, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_38 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_38: 
	 jmp .cif_33 
.cif_32: 
	 movq $.str_45, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_39 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_39: 
.cif_33: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_11 
.cmp_str2_11_0: 
.debut_finally_try_11: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_11 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_11: 
	 movq $.str_46, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_40 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_40: 
	 movq $1, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq rule_33 
	 cmpq $0, %r12 
	 je .call_pere_41 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_41: 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_26 
	 movq $0, %rax 
	 jmp .cmp_27 
.cmp_26: 
	 movq $1, %rax 
.cmp_27: 
	 cmpq $1, %rax 
	 je .eif_0 
	 movq $0, %rax 
	 jmp .eif_1 
.eif_0: 
	 movq $99, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_28 
	 movq $0, %rax 
	 jmp .cmp_29 
.cmp_28: 
	 movq $1, %rax 
.cmp_29: 
.eif_1: 
	 cmpq $1, %rax 
	 je .cif_34 
	 movq $.str_47, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_42 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_42: 
	 jmp .cif_35 
.cif_34: 
	 movq $.str_48, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_43 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_43: 
.cif_35: 
	 movq $.str_49, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_44 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_44: 
	 movq $42, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq rule_34 
	 cmpq $0, %r12 
	 je .call_pere_45 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_45: 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_30 
	 movq $0, %rax 
	 jmp .cmp_31 
.cmp_30: 
	 movq $1, %rax 
.cmp_31: 
	 cmpq $1, %rax 
	 je .cif_36 
	 movq $.str_50, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_46 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_46: 
	 jmp .cif_37 
.cif_36: 
	 movq $.str_51, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_47 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_47: 
.cif_37: 
	 movq $.str_52, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_48 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_48: 
	 movq $0, %rax 
	 .align 16 
	 callq rule_36 
	 cmpq $0, %r12 
	 je .call_pere_49 
	 jmp .end_corps_try_12 
.call_pere_49: 
	 movq $.str_53, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_50 
	 jmp .end_corps_try_12 
.call_pere_50: 
.end_corps_try_12: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_12 
	 movq $.str_54, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_12_0 
	 jmp .cmp_str2_12_0 
.cmp_str_12_0: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $6, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_32 
	 movq $0, %rax 
	 jmp .cmp_33 
.cmp_32: 
	 movq $1, %rax 
.cmp_33: 
	 cmpq $1, %rax 
	 je .eif_2 
	 movq $0, %rax 
	 jmp .eif_3 
.eif_2: 
	 movq $66, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_34 
	 movq $0, %rax 
	 jmp .cmp_35 
.cmp_34: 
	 movq $1, %rax 
.cmp_35: 
.eif_3: 
	 cmpq $1, %rax 
	 je .cif_38 
	 movq $.str_55, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_51 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_51: 
	 jmp .cif_39 
.cif_38: 
	 movq $.str_56, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_52 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_52: 
.cif_39: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_12 
.cmp_str2_12_0: 
.debut_finally_try_12: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_12: 
	 movq $.str_57, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_53 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_53: 
	 movq $0, %rax 
	 .align 16 
	 callq rule_37_1 
	 cmpq $0, %r12 
	 je .call_pere_54 
	 jmp .end_corps_try_13 
.call_pere_54: 
	 cmpq $1, %rax 
	 je .cif_40 
	 jmp .cif_41 
.cif_40: 
	 movq $.str_58, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_55 
	 jmp .end_corps_try_13 
.call_pere_55: 
.cif_41: 
.end_corps_try_13: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_13 
	 movq $.str_59, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_13_0 
	 jmp .cmp_str2_13_0 
.cmp_str_13_0: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $.str_60, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_56 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_56: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_13 
.cmp_str2_13_0: 
.debut_finally_try_13: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_13 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_13: 
	 movq $0, %rax 
	 .align 16 
	 callq rule_37_2 
	 cmpq $0, %r12 
	 je .call_pere_57 
	 jmp .end_corps_try_14 
.call_pere_57: 
.end_corps_try_14: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_14 
	 movq $.str_61, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_14_0 
	 jmp .cmp_str2_14_0 
.cmp_str_14_0: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $.str_62, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_58 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_58: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_14 
.cmp_str2_14_0: 
	 movq $.str_63, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_14_1 
	 jmp .cmp_str2_14_1 
.cmp_str_14_1: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $1, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_36 
	 movq $0, %rax 
	 jmp .cmp_37 
.cmp_36: 
	 movq $1, %rax 
.cmp_37: 
	 cmpq $1, %rax 
	 je .cif_42 
	 jmp .cif_43 
.cif_42: 
	 movq $.str_64, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_59 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_59: 
.cif_43: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_14 
.cmp_str2_14_1: 
.debut_finally_try_14: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_14 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_14: 
	 movq $.str_65, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_60 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_60: 
	 movq $1, %rax 
	 movq %rax ,-32(%rbp) 
	 movq $1, %rax 
	 movq %rax ,-16(%rbp) 
.while_2: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_38 
	 movq $0, %rax 
	 jmp .cmp_39 
.cmp_38: 
	 movq $1, %rax 
.cmp_39: 
	 cmpq $0, %rax 
	 je .while_3 
	 movq $1, %rax 
	 movq %rax ,-24(%rbp) 
.while_4: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_40 
	 movq $0, %rax 
	 jmp .cmp_41 
.cmp_40: 
	 movq $1, %rax 
.cmp_41: 
	 cmpq $0, %rax 
	 je .while_5 
	 movq $0, %rax 
	 movq %rax ,.i(%rip) 
	 movq $0, %rax 
	 movq %rax ,.k(%rip) 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -16(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq rule_39 
	 cmpq $0, %r12 
	 je .call_pere_61 
	 jmp .end_corps_try_15 
.call_pere_61: 
	 movq %rax ,-8(%rbp) 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_42 
	 movq $0, %rax 
	 jmp .cmp_43 
.cmp_42: 
	 movq $1, %rax 
.cmp_43: 
	 cmpq $1, %rax 
	 je .eif_10 
	 movq $0, %rax 
	 jmp .eif_11 
.eif_10: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_44 
	 movq $0, %rax 
	 jmp .cmp_45 
.cmp_44: 
	 movq $1, %rax 
.cmp_45: 
.eif_11: 
	 cmpq $1, %rax 
	 je .eif_8 
	 movq $0, %rax 
	 jmp .eif_9 
.eif_8: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_46 
	 movq $0, %rax 
	 jmp .cmp_47 
.cmp_46: 
	 movq $1, %rax 
.cmp_47: 
.eif_9: 
	 cmpq $1, %rax 
	 je .eif_6 
	 movq $0, %rax 
	 jmp .eif_7 
.eif_6: 
	 movq $1, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_48 
	 movq $0, %rax 
	 jmp .cmp_49 
.cmp_48: 
	 movq $1, %rax 
.cmp_49: 
.eif_7: 
	 cmpq $1, %rax 
	 je .eif_4 
	 movq $0, %rax 
	 jmp .eif_5 
.eif_4: 
	 movq $1, %rax 
	 pushq %rax 
	 movq .k(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_50 
	 movq $0, %rax 
	 jmp .cmp_51 
.cmp_50: 
	 movq $1, %rax 
.cmp_51: 
.eif_5: 
	 cmpq $1, %rax 
	 je .cif_44 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_52 
	 movq $0, %rax 
	 jmp .cmp_53 
.cmp_52: 
	 movq $1, %rax 
.cmp_53: 
	 cmpq $1, %rax 
	 je .eif_18 
	 movq $0, %rax 
	 jmp .eif_19 
.eif_18: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_54 
	 movq $0, %rax 
	 jmp .cmp_55 
.cmp_54: 
	 movq $1, %rax 
.cmp_55: 
.eif_19: 
	 cmpq $1, %rax 
	 je .eif_16 
	 movq $0, %rax 
	 jmp .eif_17 
.eif_16: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_56 
	 movq $0, %rax 
	 jmp .cmp_57 
.cmp_56: 
	 movq $1, %rax 
.cmp_57: 
.eif_17: 
	 cmpq $1, %rax 
	 je .eif_14 
	 movq $0, %rax 
	 jmp .eif_15 
.eif_14: 
	 movq $3, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_58 
	 movq $0, %rax 
	 jmp .cmp_59 
.cmp_58: 
	 movq $1, %rax 
.cmp_59: 
.eif_15: 
	 cmpq $1, %rax 
	 je .eif_12 
	 movq $0, %rax 
	 jmp .eif_13 
.eif_12: 
	 movq $0, %rax 
	 pushq %rax 
	 movq .k(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_60 
	 movq $0, %rax 
	 jmp .cmp_61 
.cmp_60: 
	 movq $1, %rax 
.cmp_61: 
.eif_13: 
	 cmpq $1, %rax 
	 je .cif_46 
	 movq $3, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_62 
	 movq $0, %rax 
	 jmp .cmp_63 
.cmp_62: 
	 movq $1, %rax 
.cmp_63: 
	 cmpq $1, %rax 
	 je .eif_22 
	 movq $0, %rax 
	 jmp .eif_23 
.eif_22: 
	 movq $0, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_64 
	 movq $0, %rax 
	 jmp .cmp_65 
.cmp_64: 
	 movq $1, %rax 
.cmp_65: 
.eif_23: 
	 cmpq $1, %rax 
	 je .eif_20 
	 movq $0, %rax 
	 jmp .eif_21 
.eif_20: 
	 movq $0, %rax 
	 pushq %rax 
	 movq .k(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_66 
	 movq $0, %rax 
	 jmp .cmp_67 
.cmp_66: 
	 movq $1, %rax 
.cmp_67: 
.eif_21: 
	 cmpq $1, %rax 
	 je .cif_48 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -16(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_66, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_62 
	 jmp .end_corps_try_15 
.call_pere_62: 
	 jmp .cif_49 
.cif_48: 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_68 
	 movq $0, %rax 
	 jmp .cmp_69 
.cmp_68: 
	 movq $1, %rax 
.cmp_69: 
	 cmpq $1, %rax 
	 je .cif_50 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -16(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_67, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_63 
	 jmp .end_corps_try_15 
.call_pere_63: 
	 jmp .cif_51 
.cif_50: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_68, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_64 
	 jmp .end_corps_try_15 
.call_pere_64: 
.cif_51: 
.cif_49: 
	 jmp .cif_47 
.cif_46: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_69, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_65 
	 jmp .end_corps_try_15 
.call_pere_65: 
.cif_47: 
	 jmp .cif_45 
.cif_44: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_70, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_66 
	 jmp .end_corps_try_15 
.call_pere_66: 
.cif_45: 
.end_corps_try_15: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_15 
	 movq $.str_71, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_15_0 
	 jmp .cmp_str2_15_0 
.cmp_str_15_0: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $2, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_70 
	 movq $0, %rax 
	 jmp .cmp_71 
.cmp_70: 
	 movq $1, %rax 
.cmp_71: 
	 cmpq $1, %rax 
	 je .eif_28 
	 movq $0, %rax 
	 jmp .eif_29 
.eif_28: 
	 movq $0, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_72 
	 movq $0, %rax 
	 jmp .cmp_73 
.cmp_72: 
	 movq $1, %rax 
.cmp_73: 
.eif_29: 
	 cmpq $1, %rax 
	 je .eif_26 
	 movq $0, %rax 
	 jmp .eif_27 
.eif_26: 
	 movq $0, %rax 
	 pushq %rax 
	 movq .k(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_74 
	 movq $0, %rax 
	 jmp .cmp_75 
.cmp_74: 
	 movq $1, %rax 
.cmp_75: 
.eif_27: 
	 cmpq $1, %rax 
	 je .eif_24 
	 movq $0, %rax 
	 jmp .eif_25 
.eif_24: 
	 movq $9, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_76 
	 movq $0, %rax 
	 jmp .cmp_77 
.cmp_76: 
	 movq $1, %rax 
.cmp_77: 
.eif_25: 
	 cmpq $1, %rax 
	 je .cif_52 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -16(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_72, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_67 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_67: 
	 jmp .cif_53 
.cif_52: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_78 
	 movq $0, %rax 
	 jmp .cmp_79 
.cmp_78: 
	 movq $1, %rax 
.cmp_79: 
	 cmpq $1, %rax 
	 je .cif_54 
	 jmp .cif_55 
.cif_54: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_73, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_68 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_68: 
.cif_55: 
	 movq $2, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_80 
	 movq $0, %rax 
	 jmp .cmp_81 
.cmp_80: 
	 movq $1, %rax 
.cmp_81: 
	 cmpq $1, %rax 
	 je .cif_56 
	 jmp .cif_57 
.cif_56: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_74, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_69 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_69: 
.cif_57: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_82 
	 movq $0, %rax 
	 jmp .cmp_83 
.cmp_82: 
	 movq $1, %rax 
.cmp_83: 
	 cmpq $1, %rax 
	 je .cif_58 
	 jmp .cif_59 
.cif_58: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_75, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_70 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_70: 
.cif_59: 
.cif_53: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_15 
.cmp_str2_15_0: 
	 movq $.str_76, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_15_1 
	 jmp .cmp_str2_15_1 
.cmp_str_15_1: 
	 subq $8, %rsp 
	 movq %r15 ,-40(%rbp) 
	 movq $0, %r12 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_84 
	 movq $0, %rax 
	 jmp .cmp_85 
.cmp_84: 
	 movq $1, %rax 
.cmp_85: 
	 cmpq $1, %rax 
	 je .eif_36 
	 movq $0, %rax 
	 jmp .eif_37 
.eif_36: 
	 movq $2, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_86 
	 movq $0, %rax 
	 jmp .cmp_87 
.cmp_86: 
	 movq $1, %rax 
.cmp_87: 
.eif_37: 
	 cmpq $1, %rax 
	 je .eif_34 
	 movq $0, %rax 
	 jmp .eif_35 
.eif_34: 
	 movq $2, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_88 
	 movq $0, %rax 
	 jmp .cmp_89 
.cmp_88: 
	 movq $1, %rax 
.cmp_89: 
.eif_35: 
	 cmpq $1, %rax 
	 je .eif_32 
	 movq $0, %rax 
	 jmp .eif_33 
.eif_32: 
	 movq $0, %rax 
	 pushq %rax 
	 movq .k(%rip), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_90 
	 movq $0, %rax 
	 jmp .cmp_91 
.cmp_90: 
	 movq $1, %rax 
.cmp_91: 
.eif_33: 
	 cmpq $1, %rax 
	 je .eif_30 
	 movq $0, %rax 
	 jmp .eif_31 
.eif_30: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_92 
	 movq $0, %rax 
	 jmp .cmp_93 
.cmp_92: 
	 movq $1, %rax 
.cmp_93: 
.eif_31: 
	 cmpq $1, %rax 
	 je .cif_60 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -16(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_77, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_71 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_71: 
	 jmp .cif_61 
.cif_60: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_78, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_72 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_72: 
.cif_61: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_15 
.cmp_str2_15_1: 
.debut_finally_try_15: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $9, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_94 
	 movq $0, %rax 
	 jmp .cmp_95 
.cmp_94: 
	 movq $1, %rax 
.cmp_95: 
	 cmpq $1, %rax 
	 je .cif_62 
	 jmp .cif_63 
.cif_62: 
	 movq $.str_79, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_73 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_73: 
	 movq $.str_80, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_74 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_74: 
	 movq $.str_81, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_75 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_75: 
	 movq $.str_82, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_76 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_76: 
	 movq $.str_83, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_77 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_77: 
	 movq $0, %rax 
	 movq %rax, %r15
	 movq $.str_84, %r12 
	 jmp .excn_non_rattrapee 
.cif_63: 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %rax 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_15 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_15: 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 jmp .while_4 
.while_5: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 jmp .while_2 
.while_3: 
	 movq $.str_85, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_78 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_78: 
	 movq $.str_86, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_79 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_79: 
	 movq $.str_87, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_80 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_80: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_comp: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $2, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $2, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_96 
	 movq $0, %rax 
	 jmp .cmp_97 
.cmp_96: 
	 movq $1, %rax 
.cmp_97: 
	 cmpq $1, %rax 
	 je .cif_64 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .cif_65 
.cif_64: 
	 movq $0, %rax 
.cif_65: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_98 
	 movq $0, %rax 
	 jmp .cmp_99 
.cmp_98: 
	 movq $1, %rax 
.cmp_99: 
	 cmpq $1, %rax 
	 je .cif_66 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .cif_67 
.cif_66: 
	 movq $0, %rax 
.cif_67: 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_100 
	 movq $0, %rax 
	 jmp .cmp_101 
.cmp_100: 
	 movq $1, %rax 
.cmp_101: 
	 cmpq $1, %rax 
	 je .cif_68 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .cif_69 
.cif_68: 
	 movq $0, %rax 
.cif_69: 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_102 
	 movq $0, %rax 
	 jmp .cmp_103 
.cmp_102: 
	 movq $1, %rax 
.cmp_103: 
	 cmpq $1, %rax 
	 je .eif_38 
	 movq $1, %rax 
	 jmp .eif_39 
.eif_38: 
	 movq $0, %rax 
.eif_39: 
	 cmpq $1, %rax 
	 je .cif_70 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 jmp .cif_71 
.cif_70: 
	 movq $0, %rax 
.cif_71: 
	 movq $2, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_104 
	 movq $0, %rax 
	 jmp .cmp_105 
.cmp_104: 
	 movq $1, %rax 
.cmp_105: 
	 cmpq $1, %rax 
	 je .eif_40 
	 movq $1, %rax 
	 jmp .eif_41 
.eif_40: 
	 movq $0, %rax 
.eif_41: 
	 movq %rax ,-16(%rbp) 
	 movq -16(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_op: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $0, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_106 
	 movq $0, %rax 
	 jmp .cmp_107 
.cmp_106: 
	 movq $1, %rax 
.cmp_107: 
	 cmpq $1, %rax 
	 je .eif_42 
	 movq $0, %rax 
	 jmp .eif_43 
.eif_42: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_108 
	 movq $0, %rax 
	 jmp .cmp_109 
.cmp_108: 
	 movq $1, %rax 
.cmp_109: 
.eif_43: 
	 cmpq $1, %rax 
	 je .cif_72 
	 jmp .cif_73 
.cif_72: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $.str_88, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_81 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_81: 
.cif_73: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_110 
	 movq $0, %rax 
	 jmp .cmp_111 
.cmp_110: 
	 movq $1, %rax 
.cmp_111: 
	 cmpq $1, %rax 
	 je .eif_44 
	 movq $0, %rax 
	 jmp .eif_45 
.eif_44: 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_112 
	 movq $0, %rax 
	 jmp .cmp_113 
.cmp_112: 
	 movq $1, %rax 
.cmp_113: 
.eif_45: 
	 cmpq $1, %rax 
	 je .cif_74 
	 jmp .cif_75 
.cif_74: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $.str_89, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_82 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_82: 
.cif_75: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_114 
	 movq $0, %rax 
	 jmp .cmp_115 
.cmp_114: 
	 movq $1, %rax 
.cmp_115: 
	 cmpq $1, %rax 
	 je .eif_46 
	 movq $0, %rax 
	 jmp .eif_47 
.eif_46: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_116 
	 movq $0, %rax 
	 jmp .cmp_117 
.cmp_116: 
	 movq $1, %rax 
.cmp_117: 
.eif_47: 
	 cmpq $1, %rax 
	 je .cif_76 
	 jmp .cif_77 
.cif_76: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $.str_90, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_83 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_83: 
.cif_77: 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_118 
	 movq $0, %rax 
	 jmp .cmp_119 
.cmp_118: 
	 movq $1, %rax 
.cmp_119: 
	 cmpq $1, %rax 
	 je .eif_48 
	 movq $0, %rax 
	 jmp .eif_49 
.eif_48: 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_120 
	 movq $0, %rax 
	 jmp .cmp_121 
.cmp_120: 
	 movq $1, %rax 
.cmp_121: 
.eif_49: 
	 cmpq $1, %rax 
	 je .cif_78 
	 jmp .cif_79 
.cif_78: 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $.str_91, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_84 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_84: 
.cif_79: 
	 movq $4, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_122 
	 movq $0, %rax 
	 jmp .cmp_123 
.cmp_122: 
	 movq $1, %rax 
.cmp_123: 
	 cmpq $1, %rax 
	 je .eif_50 
	 movq $1, %rax 
	 jmp .eif_51 
.eif_50: 
	 movq $0, %rax 
.eif_51: 
	 cmpq $1, %rax 
	 je .cif_80 
	 jmp .cif_81 
.cif_80: 
	 movq $.str_92, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_85 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_85: 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_86 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_86: 
.cif_81: 
	 movq $8, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 cmpq $0, %r12 
	 je .call_pere_87 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_87: 
	 movq %rax ,-8(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $5, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 movq (%r11), %rax 
	 addq $1, (%r11) 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_124 
	 movq $0, %rax 
	 jmp .cmp_125 
.cmp_124: 
	 movq $1, %rax 
.cmp_125: 
	 cmpq $1, %rax 
	 je .eif_52 
	 movq $0, %rax 
	 jmp .eif_53 
.eif_52: 
	 movq $6, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_126 
	 movq $0, %rax 
	 jmp .cmp_127 
.cmp_126: 
	 movq $1, %rax 
.cmp_127: 
.eif_53: 
	 cmpq $1, %rax 
	 je .cif_82 
	 jmp .cif_83 
.cif_82: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_93, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_88 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_88: 
.cif_83: 
	 movq $9, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 movq (%r11), %rax 
	 subq $1, (%r11) 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_128 
	 movq $0, %rax 
	 jmp .cmp_129 
.cmp_128: 
	 movq $1, %rax 
.cmp_129: 
	 cmpq $1, %rax 
	 je .eif_54 
	 movq $0, %rax 
	 jmp .eif_55 
.eif_54: 
	 movq $8, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_130 
	 movq $0, %rax 
	 jmp .cmp_131 
.cmp_130: 
	 movq $1, %rax 
.cmp_131: 
.eif_55: 
	 cmpq $1, %rax 
	 je .cif_84 
	 jmp .cif_85 
.cif_84: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_94, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_89 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_89: 
.cif_85: 
	 movq $7, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 addq $1, (%r11) 
	 movq (%r11), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_132 
	 movq $0, %rax 
	 jmp .cmp_133 
.cmp_132: 
	 movq $1, %rax 
.cmp_133: 
	 cmpq $1, %rax 
	 je .eif_56 
	 movq $0, %rax 
	 jmp .eif_57 
.eif_56: 
	 movq $7, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_134 
	 movq $0, %rax 
	 jmp .cmp_135 
.cmp_134: 
	 movq $1, %rax 
.cmp_135: 
.eif_57: 
	 cmpq $1, %rax 
	 je .cif_86 
	 jmp .cif_87 
.cif_86: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_95, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_90 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_90: 
.cif_87: 
	 movq $7, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 subq $1, (%r11) 
	 movq (%r11), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_136 
	 movq $0, %rax 
	 jmp .cmp_137 
.cmp_136: 
	 movq $1, %rax 
.cmp_137: 
	 cmpq $1, %rax 
	 je .eif_58 
	 movq $0, %rax 
	 jmp .eif_59 
.eif_58: 
	 movq $7, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_138 
	 movq $0, %rax 
	 jmp .cmp_139 
.cmp_138: 
	 movq $1, %rax 
.cmp_139: 
.eif_59: 
	 cmpq $1, %rax 
	 je .cif_88 
	 jmp .cif_89 
.cif_88: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_96, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_91 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_91: 
.cif_89: 
	 movq $4, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_140 
	 movq $0, %rax 
	 jmp .cmp_141 
.cmp_140: 
	 movq $1, %rax 
.cmp_141: 
	 cmpq $1, %rax 
	 je .eif_60 
	 movq $1, %rax 
	 jmp .eif_61 
.eif_60: 
	 movq $0, %rax 
.eif_61: 
	 cmpq $1, %rax 
	 je .cif_90 
	 jmp .cif_91 
.cif_90: 
	 movq $.str_97, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_92 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_92: 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_93 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_93: 
.cif_91: 
	 movq $0, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $3, %rax 
	 pushq %rax 
	 pushq %rdx 
	 movq $5, %rax 
	 pushq %rax 
	 movq $13, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_142 
	 movq $0, %rax 
	 jmp .cmp_143 
.cmp_142: 
	 movq $1, %rax 
.cmp_143: 
	 cmpq $1, %rax 
	 je .cif_92 
	 jmp .cif_93 
.cif_92: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_98, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_94 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_94: 
.cif_93: 
	 movq $12, %rax 
	 pushq %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_144 
	 movq $0, %rax 
	 jmp .cmp_145 
.cmp_144: 
	 movq $1, %rax 
.cmp_145: 
	 cmpq $1, %rax 
	 je .cif_94 
	 jmp .cif_95 
.cif_94: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_99, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_95 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_95: 
.cif_95: 
	 movq $92, %rax 
	 negq %rax 
	 pushq %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq $4, %rax 
	 negq %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_146 
	 movq $0, %rax 
	 jmp .cmp_147 
.cmp_146: 
	 movq $1, %rax 
.cmp_147: 
	 cmpq $1, %rax 
	 je .cif_96 
	 jmp .cif_97 
.cif_96: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_100, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_96 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_96: 
.cif_97: 
	 movq $2, %rax 
	 pushq %rax 
	 pushq %rdx 
	 movq $3, %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_148 
	 movq $0, %rax 
	 jmp .cmp_149 
.cmp_148: 
	 movq $1, %rax 
.cmp_149: 
	 cmpq $1, %rax 
	 je .cif_98 
	 jmp .cif_99 
.cif_98: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_101, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_97 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_97: 
.cif_99: 
	 movq $0, %rax 
	 cmpq $1, %rax 
	 je .eif_62 
	 movq $1, %rax 
	 jmp .eif_63 
.eif_62: 
	 movq $0, %rax 
.eif_63: 
	 cmpq $1, %rax 
	 je .cif_100 
	 jmp .cif_101 
.cif_100: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_102, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_98 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_98: 
.cif_101: 
	 movq $7, %rax 
	 pushq %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq $12, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_150 
	 movq $0, %rax 
	 jmp .cmp_151 
.cmp_150: 
	 movq $1, %rax 
.cmp_151: 
	 cmpq $1, %rax 
	 je .cif_102 
	 jmp .cif_103 
.cif_102: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 movq $.str_103, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_99 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_99: 
.cif_103: 
	 movq $6, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_152 
	 movq $0, %rax 
	 jmp .cmp_153 
.cmp_152: 
	 movq $1, %rax 
.cmp_153: 
	 cmpq $1, %rax 
	 je .eif_64 
	 movq $1, %rax 
	 jmp .eif_65 
.eif_64: 
	 movq $0, %rax 
.eif_65: 
	 cmpq $1, %rax 
	 je .cif_104 
	 jmp .cif_105 
.cif_104: 
	 movq $.str_104, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_100 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_100: 
.cif_105: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
zer: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 movq %rax ,.i(%rip) 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
inci: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq .i(%rip), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .i(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.i(%rip) 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
variables: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $3, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $0, %rax 
	 .align 16 
	 callq zer 
	 cmpq $0, %r12 
	 je .call_pere_101 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_101: 
	 subq $8, %rsp 
	 movq $5, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $5, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_154 
	 movq $0, %rax 
	 jmp .cmp_155 
.cmp_154: 
	 movq $1, %rax 
.cmp_155: 
	 cmpq $1, %rax 
	 je .eif_66 
	 movq $1, %rax 
	 jmp .eif_67 
.eif_66: 
	 movq $0, %rax 
.eif_67: 
	 cmpq $1, %rax 
	 je .cif_106 
	 jmp .cif_107 
.cif_106: 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_107: 
	 movq $3, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_156 
	 movq $0, %rax 
	 jmp .cmp_157 
.cmp_156: 
	 movq $1, %rax 
.cmp_157: 
	 cmpq $1, %rax 
	 je .eif_68 
	 movq $1, %rax 
	 jmp .eif_69 
.eif_68: 
	 movq $0, %rax 
.eif_69: 
	 cmpq $1, %rax 
	 je .cif_108 
	 jmp .cif_109 
.cif_108: 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_109: 
	 movq $1, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq inci 
	 cmpq $0, %r12 
	 je .call_pere_102 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_102: 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_158 
	 movq $0, %rax 
	 jmp .cmp_159 
.cmp_158: 
	 movq $1, %rax 
.cmp_159: 
	 cmpq $1, %rax 
	 je .eif_72 
	 movq $1, %rax 
	 jmp .eif_73 
.eif_72: 
	 movq $0, %rax 
.eif_73: 
	 cmpq $1, %rax 
	 je .eif_70 
	 movq $2, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq inci 
	 cmpq $0, %r12 
	 je .call_pere_103 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_103: 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_160 
	 movq $0, %rax 
	 jmp .cmp_161 
.cmp_160: 
	 movq $1, %rax 
.cmp_161: 
	 cmpq $1, %rax 
	 je .eif_74 
	 movq $1, %rax 
	 jmp .eif_75 
.eif_74: 
	 movq $0, %rax 
.eif_75: 
	 jmp .eif_71 
.eif_70: 
	 movq $1, %rax 
.eif_71: 
	 cmpq $1, %rax 
	 je .cif_110 
	 jmp .cif_111 
.cif_110: 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_111: 
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
.str_104:
 	 .string " [x] Some tests failed ! Check your binary operators.\n" 
	 .align 8 
.str_103:
 	 .string "  [+] Substract OK\n" 
	 .align 8 
.str_102:
 	 .string "  [+] Negation OK\n" 
	 .align 8 
.str_101:
 	 .string "  [+] Quotient OK\n" 
	 .align 8 
.str_100:
 	 .string "  [+] Product OK\n" 
	 .align 8 
.str_99:
 	 .string "  [+] Sum OK\n" 
	 .align 8 
.str_98:
 	 .string "  [+] Modulo OK\n" 
	 .align 8 
.str_97:
 	 .string " [x] Some tests failed ! Check your increment/decrement operators.\n" 
	 .align 8 
.str_96:
 	 .string "  [+] Pre decrement array OK\n" 
	 .align 8 
.str_95:
 	 .string "  [+] Pre increment array OK\n" 
	 .align 8 
.str_94:
 	 .string "  [+] Post decrement array OK\n" 
	 .align 8 
.str_93:
 	 .string "  [+] Post increment array OK\n" 
	 .align 8 
.str_92:
 	 .string " [x] Some tests failed ! Check your increment/decrement operators.\n" 
	 .align 8 
.str_91:
 	 .string "  [+] Pre decrement OK\n" 
	 .align 8 
.str_90:
 	 .string "  [+] Pre increment OK\n" 
	 .align 8 
.str_89:
 	 .string "  [+] Post decrement OK\n" 
	 .align 8 
.str_88:
 	 .string "  [+] Post increment OK\n" 
	 .align 8 
.str_87:
 	 .string "============================================================\n" 
	 .align 8 
.str_86:
 	 .string "  Sorry, your compiler has bugs. Fix them and try again !\n" 
	 .align 8 
.str_85:
 	 .string "============================================================\n" 
	 .align 8 
.str_84:
 	 .string "All_test_successfull" 
	 .align 8 
.str_83:
 	 .string "============================================================\n" 
	 .align 8 
.str_82:
 	 .string " Your program should crash gracefully.\n" 
	 .align 8 
.str_81:
 	 .string " We'll raise an uncaught exception now.\n" 
	 .align 8 
.str_80:
 	 .string " Congratulations, you have not segfaulted yet !\n" 
	 .align 8 
.str_79:
 	 .string "============================================================\n" 
	 .align 8 
.str_78:
 	 .string "  [+] %d/9 : p[] |- c1 => p' |- c' => (p'', Exc, V) ... OK\n" 
	 .align 8 
.str_77:
 	 .string "  [x] Error : Unexpectedly caugth exception E2 : (%d,%d)\n" 
	 .align 8 
.str_76:
 	 .string "E2" 
	 .align 8 
.str_75:
 	 .string "  [+] %d/9 : p[] |- c1 => (p', Exc, V) |- c' => (p', Exc, V) ... OK.\n" 
	 .align 8 
.str_74:
 	 .string "  [+] %d/9 : p[] |- c1 => (p', Exc, V) |- c' => (p', Exc, V) ... OK.\n" 
	 .align 8 
.str_73:
 	 .string "  [+] %d/9 : p[] |- c1 => (p', Exc, V) |- c' => (p', Exc, V) ... OK.\n" 
	 .align 8 
.str_72:
 	 .string " [x] Error : Unexpectedly caught exception E1 : (%d,%d)\n" 
	 .align 8 
.str_71:
 	 .string "E1" 
	 .align 8 
.str_70:
 	 .string "  [+] %d/9 : p[] |- c1 => p' |- c' => p'' ... OK.\n" 
	 .align 8 
.str_69:
 	 .string "  [+] %d/9 : p[] |- c1 => p' |- c' => (p'',*,V) ... OK\n" 
	 .align 8 
.str_68:
 	 .string "  [+] %d/9 : p[] |- c1 => (p',*,V) |- c' => (p',*,V) ... OK\n" 
	 .align 8 
.str_67:
 	 .string "  [x] Error : Return value should not have been changed in finally clause !\n" 
	 .align 8 
.str_66:
 	 .string "  [x] Error : execution unexpectedly continued : (%d,%d)\n" 
	 .align 8 
.str_65:
 	 .string " [o] Testing rule 39 ...\n" 
	 .align 8 
.str_64:
 	 .string "  [+] Rule 37 : p |- c' => (p', Exc, V) ... OK\n" 
	 .align 8 
.str_63:
 	 .string "F" 
	 .align 8 
.str_62:
 	 .string "  [x] Wrong implementation of rule 37 !\n" 
	 .align 8 
.str_61:
 	 .string "E" 
	 .align 8 
.str_60:
 	 .string "  [x] Wrong implementation of rule 37 !\n" 
	 .align 8 
.str_59:
 	 .string "E" 
	 .align 8 
.str_58:
 	 .string "  [+] Rule 37 : p |- c' => (p', *, V) ... OK\n" 
	 .align 8 
.str_57:
 	 .string " [o] Testing rule 37 ...\n" 
	 .align 8 
.str_56:
 	 .string "OK.\n" 
	 .align 8 
.str_55:
 	 .string "ERROR !\n" 
	 .align 8 
.str_54:
 	 .string "E" 
	 .align 8 
.str_53:
 	 .string "ERROR !\n" 
	 .align 8 
.str_52:
 	 .string " [o] Testing rule 36 ...\t\t\t" 
	 .align 8 
.str_51:
 	 .string "OK.\n" 
	 .align 8 
.str_50:
 	 .string "ERROR !\n" 
	 .align 8 
.str_49:
 	 .string " [o] Testing rule 34 ...\t\t\t" 
	 .align 8 
.str_48:
 	 .string "OK.\n" 
	 .align 8 
.str_47:
 	 .string "ERROR !\n" 
	 .align 8 
.str_46:
 	 .string " [o] Testing rule 33 ...\t\t\t" 
	 .align 8 
.str_45:
 	 .string "  [+] Rule 32 : p' |- c' => (p'', Exc, V) ... OK\n" 
	 .align 8 
.str_44:
 	 .string "  [x] Exception argument not propagated in rule 32.\n" 
	 .align 8 
.str_43:
 	 .string "R32" 
	 .align 8 
.str_42:
 	 .string "  [x] Raising an exception in finally when none was raised in try fails !\n" 
	 .align 8 
.str_41:
 	 .string "  [+] Rule 32 : p' |- c' => (p'', *, V) ... OK\n" 
	 .align 8 
.str_40:
 	 .string "  [x] Returning in a finally when no error has occured fails !\n" 
	 .align 8 
.str_39:
 	 .string " [o] Testing rule 32 ...\n" 
	 .align 8 
.str_38:
 	 .string "OK.\n" 
	 .align 8 
.str_37:
 	 .string "ERROR !\n" 
	 .align 8 
.str_36:
 	 .string "E" 
	 .align 8 
.str_35:
 	 .string "ERROR !\n" 
	 .align 8 
.str_34:
 	 .string " [o] Testing rule 31 ...\t\t\t" 
	 .align 8 
.str_33:
 	 .string "============================================================\n" 
	 .align 8 
.str_32:
 	 .string "                ++ Testing exceptions ++\n" 
	 .align 8 
.str_31:
 	 .string "============================================================\n" 
	 .align 8 
.str_30:
 	 .string "OK.\n" 
	 .align 8 
.str_29:
 	 .string "ERROR !\n" 
	 .align 8 
.str_28:
 	 .string " [o] Testing loops ...\t\t\t\t" 
	 .align 8 
.str_27:
 	 .string "OK.\n [o] Testing binary operators ... \n" 
	 .align 8 
.str_26:
 	 .string "ERROR !\n" 
	 .align 8 
.str_25:
 	 .string "OK.\n [o] Testing compare operators ...\t\t" 
	 .align 8 
.str_24:
 	 .string "ERROR !\n" 
	 .align 8 
.str_23:
 	 .string " [o] Testing local and global variables ... \t" 
	 .align 8 
.str_22:
 	 .string "OK.\n" 
	 .align 8 
.str_21:
 	 .string "ERROR !\n" 
	 .align 8 
.str_20:
 	 .string " [o] Testing conditional blocks ...\t\t" 
	 .align 8 
.str_19:
 	 .string "============================================================\n" 
	 .align 8 
.str_18:
 	 .string "          ++ Testing basic compiler features ++\n" 
	 .align 8 
.str_17:
 	 .string "============================================================\n" 
	 .align 8 
.str_16:
 	 .string "Starting Testsuite for C--, see Goubault's webpage for semantics references.\n" 
	 .align 8 
.str_15:
 	 .string "E2" 
	 .align 8 
.str_14:
 	 .string "E1" 
	 .align 8 
.str_13:
 	 .string "Ex" 
	 .align 8 
.str_12:
 	 .string "Nope" 
	 .align 8 
.str_11:
 	 .string "Bla" 
	 .align 8 
.str_10:
 	 .string "Ex" 
	 .align 8 
.str_9:
 	 .string "F" 
	 .align 8 
.str_8:
 	 .string "E" 
	 .align 8 
.str_7:
 	 .string "E" 
	 .align 8 
.str_6:
 	 .string "E" 
	 .align 8 
.str_5:
 	 .string "R32" 
	 .align 8 
.str_4:
 	 .string "  [+] Rule 32 : p' |- c' => p'' ... OK\n" 
	 .align 8 
.str_3:
 	 .string " [x] Variable environment is not passed in the finally in regard to rule 32 !\n" 
	 .align 8 
.str_2:
 	 .string " [x] Local variables in try{} blocks are incorrectly handled !\n" 
	 .align 8 
.str_1:
 	 .string "ERROR !\n" 
	 .align 8 
.str_0:
 	 .string "E" 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
