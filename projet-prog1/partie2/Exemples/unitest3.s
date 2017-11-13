.data 
	 .NULL: .space 8 
.text 
.globl main 
test_throw: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $25, %rax 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
do_nothing: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $5, %rax 
	 movq %rax ,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_call: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq test_throw 
	 cmpq $0, %r12 
	 je .call_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_1: 
	 movq $.str_2, %rax 
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
test_try_no_excep_no_finally_no_return: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_3 
	 jmp .end_corps_try_1 
.call_pere_3: 
	 movq $.str_3, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_4 
	 jmp .end_corps_try_1 
.call_pere_4: 
.end_corps_try_1: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_1 
	 movq $.str_4, %rsi 
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
	 movq $.str_5, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_6 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_6: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_1 
.cmp_str2_1_0: 
	 movq $.str_6, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_1_1 
	 jmp .cmp_str2_1_1 
.cmp_str_1_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_7, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_8 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_8: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_1 
.cmp_str2_1_1: 
.debut_finally_try_1: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 movq $.str_8, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
aux_try_no_excep_no_finally_return: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_10 
	 jmp .end_corps_try_2 
.call_pere_10: 
	 movq $5, %rax 
	 jmp .end_corps_try_2 
.end_corps_try_2: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_2 
	 movq $.str_9, %rsi 
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
	 movq $.str_10, %rax 
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
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_12: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_2 
.cmp_str2_2_0: 
	 movq $.str_11, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_2_1 
	 jmp .cmp_str2_2_1 
.cmp_str_2_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_12, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_14 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_14: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_2 
.cmp_str2_2_1: 
.debut_finally_try_2: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_2 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_2: 
	 movq $.str_13, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
test_try_no_excep_no_finally_return: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $5, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_no_excep_no_finally_return 
	 cmpq $0, %r12 
	 je .call_pere_16 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_16: 
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
	 movq $.str_14, %rax 
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
	 jmp .cif_1 
.cif_0: 
	 movq $.str_15, %rax 
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
.cif_1: 
test_try_no_excep_finally_no_return: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_19 
	 jmp .end_corps_try_3 
.call_pere_19: 
	 movq $.str_16, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_20 
	 jmp .end_corps_try_3 
.call_pere_20: 
.end_corps_try_3: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_3 
	 movq $.str_17, %rsi 
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
	 movq $.str_18, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_22 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_22: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_3 
.cmp_str2_3_0: 
	 movq $.str_19, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_3_1 
	 jmp .cmp_str2_3_1 
.cmp_str_3_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_20, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_24 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_24: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_3 
.cmp_str2_3_1: 
.debut_finally_try_3: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_25 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_25: 
	 movq $.str_21, %rax 
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
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_3 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_3: 
	 movq $.str_22, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_27 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_27: 
aux_try_no_excep_finally_return: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_28 
	 jmp .end_corps_try_4 
.call_pere_28: 
	 movq $.str_23, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_29 
	 jmp .end_corps_try_4 
.call_pere_29: 
	 movq $5, %rax 
	 jmp .end_corps_try_4 
.end_corps_try_4: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_4 
	 movq $.str_24, %rsi 
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
	 movq $.str_25, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_31 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_31: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_4 
.cmp_str2_4_0: 
	 movq $.str_26, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_4_1 
	 jmp .cmp_str2_4_1 
.cmp_str_4_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_27, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_32 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_32: 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_33 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_33: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_4 
.cmp_str2_4_1: 
.debut_finally_try_4: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_34 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_34: 
	 movq $.str_28, %rax 
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
	 movq $.str_29, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_36 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_36: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_try_no_excep_finally_return: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $5, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_no_excep_finally_return 
	 cmpq $0, %r12 
	 je .call_pere_37 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_37: 
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
	 movq $.str_30, %rax 
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
	 jmp .cif_3 
.cif_2: 
	 movq $.str_31, %rax 
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
.cif_3: 
aux_try_no_excep_finally_return_2: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_40 
	 jmp .end_corps_try_5 
.call_pere_40: 
	 movq $.str_32, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_41 
	 jmp .end_corps_try_5 
.call_pere_41: 
	 movq $5, %rax 
	 jmp .end_corps_try_5 
.end_corps_try_5: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_5 
	 movq $.str_33, %rsi 
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
	 movq $.str_34, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_43 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_43: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_5 
.cmp_str2_5_0: 
	 movq $.str_35, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_5_1 
	 jmp .cmp_str2_5_1 
.cmp_str_5_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_36, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_45 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_45: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_5 
.cmp_str2_5_1: 
.debut_finally_try_5: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_46 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_46: 
	 movq $.str_37, %rax 
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
	 movq $3, %rax 
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
	 movq $.str_38, %rax 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_try_no_excep_finally_return_2: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $3, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_no_excep_finally_return_2 
	 cmpq $0, %r12 
	 je .call_pere_49 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_49: 
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
	 movq $.str_39, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_50 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_50: 
	 jmp .cif_5 
.cif_4: 
	 movq $.str_40, %rax 
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
.cif_5: 
aux_try_no_excep_finally_return_3: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_52 
	 jmp .end_corps_try_6 
.call_pere_52: 
	 movq $.str_41, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_53 
	 jmp .end_corps_try_6 
.call_pere_53: 
	 movq $5, %rax 
	 jmp .end_corps_try_6 
.end_corps_try_6: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_6 
	 movq $.str_42, %rsi 
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
	 movq $.str_43, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_54 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_54: 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_55 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_55: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_6 
.cmp_str2_6_0: 
	 movq $.str_44, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_6_1 
	 jmp .cmp_str2_6_1 
.cmp_str_6_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_45, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_57 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_57: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_6 
.cmp_str2_6_1: 
.debut_finally_try_6: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_58 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_58: 
	 movq $.str_46, %rax 
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
	 movq $0, %rax 
	 movq %rax, %r15
	 movq $.str_47, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_6 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_6: 
	 movq $.str_48, %rax 
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
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_try_no_excep_finally_return_3: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_no_excep_finally_return_3 
	 cmpq $0, %r12 
	 je .call_pere_61 
	 jmp .end_corps_try_7 
.call_pere_61: 
.end_corps_try_7: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_7 
	 movq $.str_49, %rsi 
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
	 movq $.str_50, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_62 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_62: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
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
	 movq $.str_51, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_63 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_63: 
aux_try_excep_finally_return_no_handler: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_64 
	 jmp .end_corps_try_8 
.call_pere_64: 
	 movq $5, %rax 
	 movq %rax, %r15
	 movq $.str_52, %r12 
	 jmp .end_corps_try_8 
	 movq $.str_53, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_65 
	 jmp .end_corps_try_8 
.call_pere_65: 
	 movq $1, %rax 
	 jmp .end_corps_try_8 
.end_corps_try_8: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_8 
	 movq $.str_54, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_8_0 
	 jmp .cmp_str2_8_0 
.cmp_str_8_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_66 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_66: 
	 movq $.str_55, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_8 
.cmp_str2_8_0: 
.debut_finally_try_8: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $.str_56, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_69 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_69: 
	 movq $9, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_8 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_8: 
	 movq $1, %rax 
	 negq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_try_excep_finally_return_no_handler: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $9, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_excep_finally_return_no_handler 
	 cmpq $0, %r12 
	 je .call_pere_70 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_70: 
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
	 movq $.str_57, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
	 jmp .cif_7 
.cif_6: 
	 movq $.str_58, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
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
.cif_7: 
aux_try_excep_finally_return_handler: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_73 
	 jmp .end_corps_try_9 
.call_pere_73: 
	 movq $5, %rax 
	 movq %rax, %r15
	 movq $.str_59, %r12 
	 jmp .end_corps_try_9 
	 movq $.str_60, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_74 
	 jmp .end_corps_try_9 
.call_pere_74: 
	 movq $5, %rax 
	 jmp .end_corps_try_9 
.end_corps_try_9: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_9 
	 movq $.str_61, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_0 
	 jmp .cmp_str2_9_0 
.cmp_str_9_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_75 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_75: 
	 movq $.str_62, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_0: 
	 movq $.str_63, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_1 
	 jmp .cmp_str2_9_1 
.cmp_str_9_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_77 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_77: 
	 movq $.str_64, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_1: 
	 movq $.str_65, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_2 
	 jmp .cmp_str2_9_2 
.cmp_str_9_2: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_79 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_79: 
	 movq $.str_66, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_2: 
	 movq $.str_67, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_9_3 
	 jmp .cmp_str2_9_3 
.cmp_str_9_3: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_81 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_81: 
	 movq $.str_68, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_9 
.cmp_str2_9_3: 
.debut_finally_try_9: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $.str_69, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_84 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_84: 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_9 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_9: 
	 movq $1, %rax 
	 negq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_try_excep_finally_return_handler: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $1, %rax 
	 negq %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_excep_finally_return_handler 
	 cmpq $0, %r12 
	 je .call_pere_85 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_85: 
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
	 movq $.str_70, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_86 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_86: 
	 jmp .cif_9 
.cif_8: 
	 movq $.str_71, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_87 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_87: 
.cif_9: 
aux_try_excep_in_catch: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_88 
	 jmp .end_corps_try_10 
.call_pere_88: 
	 movq $5, %rax 
	 movq %rax, %r15
	 movq $.str_72, %r12 
	 jmp .end_corps_try_10 
	 movq $.str_73, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_89 
	 jmp .end_corps_try_10 
.call_pere_89: 
	 movq $5, %rax 
	 jmp .end_corps_try_10 
.end_corps_try_10: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_10 
	 movq $.str_74, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_10_0 
	 jmp .cmp_str2_10_0 
.cmp_str_10_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_90 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_90: 
	 movq $.str_75, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_10 
.cmp_str2_10_0: 
	 movq $.str_76, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_10_1 
	 jmp .cmp_str2_10_1 
.cmp_str_10_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_92 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_92: 
	 movq $.str_77, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_93 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_93: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_10 
.cmp_str2_10_1: 
	 movq $.str_78, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_10_2 
	 jmp .cmp_str2_10_2 
.cmp_str_10_2: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_94 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_94: 
	 movq $.str_79, %rax 
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
	 movq $21569, %rax 
	 movq %rax, %r15
	 movq $.str_80, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 movq $.str_81, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_10 
.cmp_str2_10_2: 
	 movq $.str_82, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_10_3 
	 jmp .cmp_str2_10_3 
.cmp_str_10_3: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_97 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_97: 
	 movq $.str_83, %rax 
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
	 addq $8, %rsp 
	 jmp .debut_finally_try_10 
.cmp_str2_10_3: 
.debut_finally_try_10: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $.str_84, %rax 
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
	 movq $0, %rax 
	 .align 16 
	 callq do_nothing 
	 cmpq $0, %r12 
	 je .call_pere_100 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_100: 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_10 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_10: 
	 movq $1, %rax 
	 negq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_try_excep_in_catch: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq aux_try_excep_in_catch 
	 cmpq $0, %r12 
	 je .call_pere_101 
	 jmp .end_corps_try_11 
.call_pere_101: 
	 movq $.str_85, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_102 
	 jmp .end_corps_try_11 
.call_pere_102: 
.end_corps_try_11: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_11 
	 movq $.str_86, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_11_0 
	 jmp .cmp_str2_11_0 
.cmp_str_11_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_87, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_103 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_103: 
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
aux_b2: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $.str_88, %rax 
	 movq %rax, %r15
	 movq $.str_89, %r12 
	 jmp .end_corps_try_12 
.end_corps_try_12: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_12 
	 movq $.str_90, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_12_0 
	 jmp .cmp_str2_12_0 
.cmp_str_12_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $1, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 addq $8, %rsp 
	 jmp .debut_finally_try_12 
.cmp_str2_12_0: 
	 movq $.str_91, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_12_1 
	 jmp .cmp_str2_12_1 
.cmp_str_12_1: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $2, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 addq $8, %rsp 
	 jmp .debut_finally_try_12 
.cmp_str2_12_1: 
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
test_b2: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $2, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_b2 
	 cmpq $0, %r12 
	 je .call_pere_104 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_104: 
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
	 movq $.str_92, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_105 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_105: 
	 jmp .cif_11 
.cif_10: 
	 movq $.str_93, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_106 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_106: 
.cif_11: 
aux_b3: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $2, %rax 
	 movq %rax, %r15
	 movq $.str_94, %r12 
	 jmp .end_corps_try_13 
.end_corps_try_13: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_13 
	 movq $.str_95, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_13_0 
	 jmp .cmp_str2_13_0 
.cmp_str_13_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 addq $8, %rsp 
	 jmp .debut_finally_try_13 
.cmp_str2_13_0: 
.debut_finally_try_13: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_13 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_13: 
test_b3: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $3, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux_b3 
	 cmpq $0, %r12 
	 je .call_pere_107 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_107: 
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
	 movq $.str_96, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_108 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_108: 
	 jmp .cif_13 
.cif_12: 
	 movq $.str_97, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_109 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_109: 
.cif_13: 
aux_b6: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $0, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $2, %rax 
	 movq %rax, %r15
	 movq $.str_98, %r12 
	 jmp .end_corps_try_14 
.end_corps_try_14: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_14 
.debut_finally_try_14: 
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
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
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
	 movq $.str_99, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_110 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_110: 
.cif_15: 
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_14 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_14: 
	 movq $.str_100, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_111 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_111: 
	 movq -8(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_b6: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq aux_b6 
	 cmpq $0, %r12 
	 je .call_pere_112 
	 jmp .end_corps_try_15 
.call_pere_112: 
	 movq $.str_101, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_113 
	 jmp .end_corps_try_15 
.call_pere_113: 
.end_corps_try_15: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_15 
	 movq $.str_102, %rsi 
	 movq %r12, %rdi 
	 call strcmp 
	 movslq %eax, %rax 
	 cmpq $0, %rax 
	 je .cmp_str_15_0 
	 jmp .cmp_str2_15_0 
.cmp_str_15_0: 
	 subq $8, %rsp 
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq $.str_103, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_114 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_114: 
	 addq $8, %rsp 
	 jmp .debut_finally_try_15 
.cmp_str2_15_0: 
.debut_finally_try_15: 
	 pushq %r12 
	 movq $0, %r12  
	 popq %r12 
	 popq %rax 
	 cmpq $0, %r12 
	 je .try_pere_15 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_15: 
aux1_b7: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 movq (%r11), %rax 
	 addq $1, (%r11) 
	 movq -8(%rbp), %rax 
	 jmp .end_corps_try_16 
.end_corps_try_16: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_16 
.debut_finally_try_16: 
	 pushq %r12 
	 movq $0, %r12  
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 movq (%r11), %rax 
	 addq $1, (%r11) 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_16 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_16: 
aux2_b7: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $8, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 cmpq $0, %r12 
	 je .call_pere_115 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_115: 
	 movq %rax ,-8(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq aux1_b7 
	 cmpq $0, %r12 
	 je .call_pere_116 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_116: 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_b7: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $2, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux2_b7 
	 cmpq $0, %r12 
	 je .call_pere_117 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_117: 
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
	 movq $.str_104, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_118 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_118: 
	 jmp .cif_17 
.cif_16: 
	 movq $.str_105, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_119 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_119: 
.cif_17: 
aux1_twisted1: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $42, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
aux2_twisted1: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq $0, %rax 
	 .align 16 
	 callq aux1_twisted1 
	 cmpq $0, %r12 
	 je .call_pere_120 
	 jmp .end_corps_try_17 
.call_pere_120: 
	 movq %rax ,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 movq -8(%rbp), %rax 
	 jmp .end_corps_try_17 
.end_corps_try_17: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_17 
.debut_finally_try_17: 
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
	 movq -8(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_106, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_121 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_121: 
	 popq %r12 
	 popq %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
	 cmpq $0, %r12 
	 je .try_pere_17 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_17: 
test_twisted1: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $43, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 .align 16 
	 callq aux2_twisted1 
	 cmpq $0, %r12 
	 je .call_pere_122 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_122: 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_18 
	 movq $0, %rax 
	 jmp .cmp_19 
.cmp_18: 
	 movq $1, %rax 
.cmp_19: 
	 cmpq $1, %rax 
	 je .cif_18 
	 movq $.str_107, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_123 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_123: 
	 jmp .cif_19 
.cif_18: 
	 movq $.str_108, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 cmpq $0, %r12 
	 je .call_pere_124 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_124: 
.cif_19: 
launch_test: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %rax 
	 .align 16 
	 callq test_try_no_excep_no_finally_no_return 
	 cmpq $0, %r12 
	 je .call_pere_125 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_125: 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq launch_test 
	 cmpq $0, %r12 
	 je .call_pere_126 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_126: 
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
.str_108:
 	 .string "pass, test_twisted1 2\n" 
	 .align 8 
.str_107:
 	 .string "failed, test_twisted1\n" 
	 .align 8 
.str_106:
 	 .string "pass, test_twisted1 1, %d\n" 
	 .align 8 
.str_105:
 	 .string "pass, test_b7\n" 
	 .align 8 
.str_104:
 	 .string "failed, test_b7\n" 
	 .align 8 
.str_103:
 	 .string "pass, test_b6 2\n" 
	 .align 8 
.str_102:
 	 .string "Z" 
	 .align 8 
.str_101:
 	 .string "failed, test_b6 2\n" 
	 .align 8 
.str_100:
 	 .string "failed, test_b6 1\n" 
	 .align 8 
.str_99:
 	 .string "pass, test_b6 1\n" 
	 .align 8 
.str_98:
 	 .string "Z" 
	 .align 8 
.str_97:
 	 .string "pass, test_b3\n" 
	 .align 8 
.str_96:
 	 .string "failed, test_b3\n" 
	 .align 8 
.str_95:
 	 .string "A" 
	 .align 8 
.str_94:
 	 .string "A" 
	 .align 8 
.str_93:
 	 .string "pass, test_b2\n" 
	 .align 8 
.str_92:
 	 .string "failed, test_b2\n" 
	 .align 8 
.str_91:
 	 .string "B" 
	 .align 8 
.str_90:
 	 .string "A" 
	 .align 8 
.str_89:
 	 .string "B" 
	 .align 8 
.str_88:
 	 .string "" 
	 .align 8 
.str_87:
 	 .string "pass, aux_try_excep_in_catch 2\n" 
	 .align 8 
.str_86:
 	 .string "E20" 
	 .align 8 
.str_85:
 	 .string "failed, aux_try_excep_in_catch 7\n" 
	 .align 8 
.str_84:
 	 .string "failed, aux_try_excep_in_catch 6\n" 
	 .align 8 
.str_83:
 	 .string "failed, aux_try_excep_in_catch 5\n" 
	 .align 8 
.str_82:
 	 .string "E3" 
	 .align 8 
.str_81:
 	 .string "failed, aux_try_excep_in_catch 4\n" 
	 .align 8 
.str_80:
 	 .string "E20" 
	 .align 8 
.str_79:
 	 .string "pass, aux_try_excep_in_catch 1\n" 
	 .align 8 
.str_78:
 	 .string "E5" 
	 .align 8 
.str_77:
 	 .string "failed, aux_try_excep_in_catch 3\n" 
	 .align 8 
.str_76:
 	 .string "E2" 
	 .align 8 
.str_75:
 	 .string "failed, aux_try_excep_in_catch 2\n" 
	 .align 8 
.str_74:
 	 .string "E1" 
	 .align 8 
.str_73:
 	 .string "failed, aux_try_excep_in_catch 1\n" 
	 .align 8 
.str_72:
 	 .string "E5" 
	 .align 8 
.str_71:
 	 .string "pass, test_try_excep_finally_return_handler 3\n" 
	 .align 8 
.str_70:
 	 .string "failed, test_try_excep_finally_return_handler 5\n" 
	 .align 8 
.str_69:
 	 .string "pass, aux_try_excep_finally_return_handler 2\n" 
	 .align 8 
.str_68:
 	 .string "failed, aux_try_excep_finally_return_handler 4\n" 
	 .align 8 
.str_67:
 	 .string "E3" 
	 .align 8 
.str_66:
 	 .string "pass, aux_try_excep_finally_return_handler 1\n" 
	 .align 8 
.str_65:
 	 .string "E5" 
	 .align 8 
.str_64:
 	 .string "failed, aux_try_excep_finally_return_handler 3\n" 
	 .align 8 
.str_63:
 	 .string "E2" 
	 .align 8 
.str_62:
 	 .string "failed, aux_try_excep_finally_return_handler 2\n" 
	 .align 8 
.str_61:
 	 .string "E1" 
	 .align 8 
.str_60:
 	 .string "failed, aux_try_excep_finally_return_handler 1\n" 
	 .align 8 
.str_59:
 	 .string "E5" 
	 .align 8 
.str_58:
 	 .string "pass, aux_try_excep_finally_return_no_handler 2\n" 
	 .align 8 
.str_57:
 	 .string "failed, aux_try_excep_finally_return_no_handler 3\n" 
	 .align 8 
.str_56:
 	 .string "pass, test_try_excep_finally_return_no_handler 1\n" 
	 .align 8 
.str_55:
 	 .string "failed, test_try_excep_finally_return_no_handler 2\n" 
	 .align 8 
.str_54:
 	 .string "E2" 
	 .align 8 
.str_53:
 	 .string "failed, test_try_excep_finally_return_no_handler 1\n" 
	 .align 8 
.str_52:
 	 .string "E1" 
	 .align 8 
.str_51:
 	 .string "failed, aux_try_no_excep_finally_return_3 4\n" 
	 .align 8 
.str_50:
 	 .string "pass, aux_try_no_excep_finally_return_3 3\n" 
	 .align 8 
.str_49:
 	 .string "Stop" 
	 .align 8 
.str_48:
 	 .string "failed, aux_try_no_excep_finally_return_3 3\n" 
	 .align 8 
.str_47:
 	 .string "Stop" 
	 .align 8 
.str_46:
 	 .string "pass, aux_try_no_excep_finally_return_3 2\n" 
	 .align 8 
.str_45:
 	 .string "failed, aux_try_no_excep_finally_return_3 2\n" 
	 .align 8 
.str_44:
 	 .string "Ex1" 
	 .align 8 
.str_43:
 	 .string "failed, aux_try_no_excep_finally_return_3 1\n" 
	 .align 8 
.str_42:
 	 .string "Ex" 
	 .align 8 
.str_41:
 	 .string "pass, aux_try_no_excep_finally_return_3 1\n" 
	 .align 8 
.str_40:
 	 .string "pass, aux_try_no_excep_finally_return_2 3\n" 
	 .align 8 
.str_39:
 	 .string "failed, aux_try_no_excep_finally_return_2 4\n" 
	 .align 8 
.str_38:
 	 .string "failed, test_try_no_excep_finally_return 3\n" 
	 .align 8 
.str_37:
 	 .string "pass, aux_try_no_excep_finally_return_2 2\n" 
	 .align 8 
.str_36:
 	 .string "failed, aux_try_no_excep_finally_return_2 2\n" 
	 .align 8 
.str_35:
 	 .string "Ex1" 
	 .align 8 
.str_34:
 	 .string "failed, aux_try_no_excep_finally_return_2 1\n" 
	 .align 8 
.str_33:
 	 .string "Ex" 
	 .align 8 
.str_32:
 	 .string "pass, aux_try_no_excep_finally_return_2 1\n" 
	 .align 8 
.str_31:
 	 .string "pass, test_try_no_excep_finally_return 3\n" 
	 .align 8 
.str_30:
 	 .string "failed, test_try_no_excep_finally_return 5\n" 
	 .align 8 
.str_29:
 	 .string "failed, test_try_no_excep_finally_return 4\n" 
	 .align 8 
.str_28:
 	 .string "pass, test_try_no_excep_finally_return 2\n" 
	 .align 8 
.str_27:
 	 .string "failed, test_try_no_excep_finally_return 3\n" 
	 .align 8 
.str_26:
 	 .string "Ex1" 
	 .align 8 
.str_25:
 	 .string "failed, test_try_no_excep_finally_return 2\n" 
	 .align 8 
.str_24:
 	 .string "Ex" 
	 .align 8 
.str_23:
 	 .string "pass, test_try_no_excep_finally_return 1\n" 
	 .align 8 
.str_22:
 	 .string "pass, test_try_no_excep_finally_no_return 3\n" 
	 .align 8 
.str_21:
 	 .string "pass, test_try_no_excep_finally_no_return 2\n" 
	 .align 8 
.str_20:
 	 .string "failed, test_try_no_excep_finally_no_return 2\n" 
	 .align 8 
.str_19:
 	 .string "Ex1" 
	 .align 8 
.str_18:
 	 .string "failed, test_try_no_excep_finally_no_return 1\n" 
	 .align 8 
.str_17:
 	 .string "Ex" 
	 .align 8 
.str_16:
 	 .string "pass, test_try_no_excep_finally_no_return 1\n" 
	 .align 8 
.str_15:
 	 .string "pass, test_try_no_excep_no_finally_return 1\n" 
	 .align 8 
.str_14:
 	 .string "failed, test_try_no_excep_no_finally_return 4\n" 
	 .align 8 
.str_13:
 	 .string "failed, test_try_no_excep_no_finally_return 3\n" 
	 .align 8 
.str_12:
 	 .string "failed, test_try_no_excep_no_finally_return 2\n" 
	 .align 8 
.str_11:
 	 .string "Ex1" 
	 .align 8 
.str_10:
 	 .string "failed, test_try_no_excep_no_finally_return 1\n" 
	 .align 8 
.str_9:
 	 .string "Ex" 
	 .align 8 
.str_8:
 	 .string "pass, test_try_no_excep_no_finally_no_return 2\n" 
	 .align 8 
.str_7:
 	 .string "failed, test_try_no_excep_no_finally_no_return 2\n" 
	 .align 8 
.str_6:
 	 .string "Ex1" 
	 .align 8 
.str_5:
 	 .string "failed, test_try_no_excep_no_finally_no_return 1\n" 
	 .align 8 
.str_4:
 	 .string "Ex" 
	 .align 8 
.str_3:
 	 .string "pass, test_try_no_excep_no_finally_no_return 1\n" 
	 .align 8 
.str_2:
 	 .string "failed, test_call\n" 
	 .align 8 
.str_1:
 	 .string "failed, test_throw\n" 
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
