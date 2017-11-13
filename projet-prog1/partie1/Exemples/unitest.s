.data 
	 .global_6: .space 8 
	 .global_5: .space 8 
	 .global_4: .space 8 
	 .global_3: .space 8 
	 .global_2: .space 8 
	 .global_1: .space 8 
	 .NULL: .space 8 
.text 
.globl main 
test_expr: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $587, %rax 
	 movq %rax ,-136(%rbp) 
	 movq $158, %rax 
	 negq %rax 
	 movq %rax ,-144(%rbp) 
	 movq $156, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $129, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $11, %rax 
	 movq %rax ,-24(%rbp) 
	 movq $1, %rax 
	 negq %rax 
	 movq %rax ,-32(%rbp) 
	 pushq %rdx 
	 movq $2, %rax 
	 pushq %rax 
	 movq $10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 pushq %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 negq %rax 
	 movq %rax ,-40(%rbp) 
	 pushq %rdx 
	 movq $11, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 pushq %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 pushq %rax 
	 movq $5, %rax 
	 negq %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-48(%rbp) 
	 movq $6, %rax 
	 pushq %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-56(%rbp) 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-48(%rbp) 
	 popq %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-64(%rbp) 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-56(%rbp) 
	 popq %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-72(%rbp) 
	 movq -8(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-80(%rbp) 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
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
	 subq %r10, %rax 
	 movq %rax ,-104(%rbp) 
	 movq -24(%rbp), %rax 
	 notq %rax 
	 movq %rax ,-88(%rbp) 
	 pushq %rdx 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 movq %rax ,-96(%rbp) 
	 movq $7, %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 movq %rax ,-112(%rbp) 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 movq -112(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 movq -112(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq $3, %rax 
	 popq %r10 
	 movq -112(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 pushq %rdx 
	 movq $3, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 pushq %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 movq -112(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq $6, %rax 
	 popq %r10 
	 movq -112(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 notq %rax 
	 pushq %rax 
	 movq $5, %rax 
	 popq %r10 
	 movq -112(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -96(%rbp), %rax 
	 pushq %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_0 
	 movq $0, %rax 
	 jmp .cmp_1 
.cmp_0: 
	 movq $1, %rax 
.cmp_1: 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_2 
	 movq $0, %rax 
	 jmp .cmp_3 
.cmp_2: 
	 movq $1, %rax 
.cmp_3: 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_4 
	 movq $0, %rax 
	 jmp .cmp_5 
.cmp_4: 
	 movq $1, %rax 
.cmp_5: 
	 movq %rax ,-120(%rbp) 
	 movq -96(%rbp), %rax 
	 pushq %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_6 
	 movq $0, %rax 
	 jmp .cmp_7 
.cmp_6: 
	 movq $1, %rax 
.cmp_7: 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_8 
	 movq $0, %rax 
	 jmp .cmp_9 
.cmp_8: 
	 movq $1, %rax 
.cmp_9: 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_10 
	 movq $0, %rax 
	 jmp .cmp_11 
.cmp_10: 
	 movq $1, %rax 
.cmp_11: 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_12 
	 movq $0, %rax 
	 jmp .cmp_13 
.cmp_12: 
	 movq $1, %rax 
.cmp_13: 
	 movq %rax ,-128(%rbp) 
	 movq $5, %rax 
	 pushq %rax 
	 movq -144(%rbp), %rax 
	 pushq %rax 
	 movq -136(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_14 
	 movq $0, %rax 
	 jmp .cmp_15 
.cmp_14: 
	 movq $1, %rax 
.cmp_15: 
	 cmpq $1, %rax 
	 je .eif_0 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq -88(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -128(%rbp), %rax 
	 pushq %rax 
	 movq -120(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 jmp .eif_1 
.eif_0: 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq -88(%rbp), %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq -128(%rbp), %rax 
	 pushq %rax 
	 movq -120(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
.eif_1: 
	 movq %rax ,-16(%rbp) 
	 movq $5, %rax 
	 pushq %rax 
	 movq -144(%rbp), %rax 
	 pushq %rax 
	 movq -136(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_16 
	 movq $0, %rax 
	 jmp .cmp_17 
.cmp_16: 
	 movq $1, %rax 
.cmp_17: 
	 cmpq $1, %rax 
	 je .eif_2 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq $9, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq -88(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -128(%rbp), %rax 
	 pushq %rax 
	 movq -120(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 jmp .eif_3 
.eif_2: 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq -88(%rbp), %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -128(%rbp), %rax 
	 pushq %rax 
	 movq -120(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
.eif_3: 
	 movq %rax ,-24(%rbp) 
	 movq $2, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.global_1(%rip) 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq $20143, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_18 
	 movq $0, %rax 
	 jmp .cmp_19 
.cmp_18: 
	 movq $1, %rax 
.cmp_19: 
	 cmpq $1, %rax 
	 je .eif_4 
	 movq $.str_0, %rax 
	 jmp .eif_5 
.eif_4: 
	 movq $.str_1, %rax 
.eif_5: 
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
	 movq -40(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $20143, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_3, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_4, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq $2972, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_20 
	 movq $0, %rax 
	 jmp .cmp_21 
.cmp_20: 
	 movq $1, %rax 
.cmp_21: 
	 cmpq $1, %rax 
	 je .eif_6 
	 movq $.str_5, %rax 
	 jmp .eif_7 
.eif_6: 
	 movq $.str_6, %rax 
.eif_7: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_7, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -48(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2972, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_8, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_9, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq $418914006, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_22 
	 movq $0, %rax 
	 jmp .cmp_23 
.cmp_22: 
	 movq $1, %rax 
.cmp_23: 
	 cmpq $1, %rax 
	 je .eif_8 
	 movq $.str_10, %rax 
	 jmp .eif_9 
.eif_8: 
	 movq $.str_11, %rax 
.eif_9: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_12, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -56(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $418914006, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_13, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_14, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_24 
	 movq $0, %rax 
	 jmp .cmp_25 
.cmp_24: 
	 movq $1, %rax 
.cmp_25: 
	 cmpq $1, %rax 
	 je .eif_10 
	 movq $.str_15, %rax 
	 jmp .eif_11 
.eif_10: 
	 movq $.str_16, %rax 
.eif_11: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_17, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_18, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_19, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_26 
	 movq $0, %rax 
	 jmp .cmp_27 
.cmp_26: 
	 movq $1, %rax 
.cmp_27: 
	 cmpq $1, %rax 
	 je .eif_12 
	 movq $.str_20, %rax 
	 jmp .eif_13 
.eif_12: 
	 movq $.str_21, %rax 
.eif_13: 
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
	 movq -72(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_23, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_24, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_28 
	 movq $0, %rax 
	 jmp .cmp_29 
.cmp_28: 
	 movq $1, %rax 
.cmp_29: 
	 cmpq $1, %rax 
	 je .eif_14 
	 movq $.str_25, %rax 
	 jmp .eif_15 
.eif_14: 
	 movq $.str_26, %rax 
.eif_15: 
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
	 movq -80(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_28, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_29, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -88(%rbp), %rax 
	 pushq %rax 
	 movq $12, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_30 
	 movq $0, %rax 
	 jmp .cmp_31 
.cmp_30: 
	 movq $1, %rax 
.cmp_31: 
	 cmpq $1, %rax 
	 je .eif_16 
	 movq $.str_30, %rax 
	 jmp .eif_17 
.eif_16: 
	 movq $.str_31, %rax 
.eif_17: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_32, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -88(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $12, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_33, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_34, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -96(%rbp), %rax 
	 pushq %rax 
	 movq $3, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_32 
	 movq $0, %rax 
	 jmp .cmp_33 
.cmp_32: 
	 movq $1, %rax 
.cmp_33: 
	 cmpq $1, %rax 
	 je .eif_18 
	 movq $.str_35, %rax 
	 jmp .eif_19 
.eif_18: 
	 movq $.str_36, %rax 
.eif_19: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_37, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -96(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $3, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_38, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_39, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -104(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_34 
	 movq $0, %rax 
	 jmp .cmp_35 
.cmp_34: 
	 movq $1, %rax 
.cmp_35: 
	 cmpq $1, %rax 
	 je .eif_20 
	 movq $.str_40, %rax 
	 jmp .eif_21 
.eif_20: 
	 movq $.str_41, %rax 
.eif_21: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_42, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -104(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_43, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_44, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $20143, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_36 
	 movq $0, %rax 
	 jmp .cmp_37 
.cmp_36: 
	 movq $1, %rax 
.cmp_37: 
	 cmpq $1, %rax 
	 je .eif_22 
	 movq $.str_45, %rax 
	 jmp .eif_23 
.eif_22: 
	 movq $.str_46, %rax 
.eif_23: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_47, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $20143, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_48, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_49, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $2972, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_38 
	 movq $0, %rax 
	 jmp .cmp_39 
.cmp_38: 
	 movq $1, %rax 
.cmp_39: 
	 cmpq $1, %rax 
	 je .eif_24 
	 movq $.str_50, %rax 
	 jmp .eif_25 
.eif_24: 
	 movq $.str_51, %rax 
.eif_25: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_52, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2972, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_53, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_54, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_40 
	 movq $0, %rax 
	 jmp .cmp_41 
.cmp_40: 
	 movq $1, %rax 
.cmp_41: 
	 cmpq $1, %rax 
	 je .eif_26 
	 movq $.str_55, %rax 
	 jmp .eif_27 
.eif_26: 
	 movq $.str_56, %rax 
.eif_27: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_57, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_58, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_59, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $418914006, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_42 
	 movq $0, %rax 
	 jmp .cmp_43 
.cmp_42: 
	 movq $1, %rax 
.cmp_43: 
	 cmpq $1, %rax 
	 je .eif_28 
	 movq $.str_60, %rax 
	 jmp .eif_29 
.eif_28: 
	 movq $.str_61, %rax 
.eif_29: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_62, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $418914006, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_63, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_64, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $418949010, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_44 
	 movq $0, %rax 
	 jmp .cmp_45 
.cmp_44: 
	 movq $1, %rax 
.cmp_45: 
	 cmpq $1, %rax 
	 je .eif_30 
	 movq $.str_65, %rax 
	 jmp .eif_31 
.eif_30: 
	 movq $.str_66, %rax 
.eif_31: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_67, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $418949010, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_68, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_69, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $418949009, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_46 
	 movq $0, %rax 
	 jmp .cmp_47 
.cmp_46: 
	 movq $1, %rax 
.cmp_47: 
	 cmpq $1, %rax 
	 je .eif_32 
	 movq $.str_70, %rax 
	 jmp .eif_33 
.eif_32: 
	 movq $.str_71, %rax 
.eif_33: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_72, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq -112(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $418949009, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_73, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_74, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -120(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_48 
	 movq $0, %rax 
	 jmp .cmp_49 
.cmp_48: 
	 movq $1, %rax 
.cmp_49: 
	 cmpq $1, %rax 
	 je .eif_34 
	 movq $.str_75, %rax 
	 jmp .eif_35 
.eif_34: 
	 movq $.str_76, %rax 
.eif_35: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_77, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -120(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_78, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_79, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -128(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_50 
	 movq $0, %rax 
	 jmp .cmp_51 
.cmp_50: 
	 movq $1, %rax 
.cmp_51: 
	 cmpq $1, %rax 
	 je .eif_36 
	 movq $.str_80, %rax 
	 jmp .eif_37 
.eif_36: 
	 movq $.str_81, %rax 
.eif_37: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_82, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -128(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_83, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_84, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $2972, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_52 
	 movq $0, %rax 
	 jmp .cmp_53 
.cmp_52: 
	 movq $1, %rax 
.cmp_53: 
	 cmpq $1, %rax 
	 je .eif_38 
	 movq $.str_85, %rax 
	 jmp .eif_39 
.eif_38: 
	 movq $.str_86, %rax 
.eif_39: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_87, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -16(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2972, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_88, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_89, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $2982, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_54 
	 movq $0, %rax 
	 jmp .cmp_55 
.cmp_54: 
	 movq $1, %rax 
.cmp_55: 
	 cmpq $1, %rax 
	 je .eif_40 
	 movq $.str_90, %rax 
	 jmp .eif_41 
.eif_40: 
	 movq $.str_91, %rax 
.eif_41: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_92, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2982, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_93, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_94, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -112(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq free 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_code: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $0, %rax 
	 movq %rax ,-40(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-48(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-56(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-64(%rbp) 
	 movq $156, %rax 
	 movq %rax ,-8(%rbp) 
	 movq $129, %rax 
	 movq %rax ,-16(%rbp) 
	 movq $11, %rax 
	 movq %rax ,-24(%rbp) 
	 movq $1, %rax 
	 negq %rax 
	 movq %rax ,-32(%rbp) 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,.global_2(%rip) 
	 movq .global_1(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_1(%rip), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,.global_1(%rip) 
	 popq %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_56 
	 movq $0, %rax 
	 jmp .cmp_57 
.cmp_56: 
	 movq $1, %rax 
.cmp_57: 
	 cmpq $1, %rax 
	 je .cif_0 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_58 
	 movq $0, %rax 
	 jmp .cmp_59 
.cmp_58: 
	 movq $1, %rax 
.cmp_59: 
	 cmpq $1, %rax 
	 je .cif_2 
	 movq $12, %rax 
	 movq %rax ,-80(%rbp) 
.while_0: 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_60 
	 movq $0, %rax 
	 jmp .cmp_61 
.cmp_60: 
	 movq $1, %rax 
.cmp_61: 
	 cmpq $0, %rax 
	 je .while_1 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $3, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-40(%rbp) 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-80(%rbp) 
	 popq %rax 
	 jmp .while_0 
.while_1: 
	 jmp .cif_3 
.cif_2: 
	 movq $50, %rax 
	 movq %rax ,-80(%rbp) 
.while_2: 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_62 
	 movq $0, %rax 
	 jmp .cmp_63 
.cmp_62: 
	 movq $1, %rax 
.cmp_63: 
	 cmpq $0, %rax 
	 je .while_3 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $3, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-48(%rbp) 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-80(%rbp) 
	 popq %rax 
	 jmp .while_2 
.while_3: 
.cif_3: 
	 jmp .cif_1 
.cif_0: 
	 movq $50, %rax 
	 movq %rax ,-72(%rbp) 
.while_4: 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_64 
	 movq $0, %rax 
	 jmp .cmp_65 
.cmp_64: 
	 movq $1, %rax 
.cmp_65: 
	 cmpq $0, %rax 
	 je .while_5 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $3, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-40(%rbp) 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -72(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-72(%rbp) 
	 popq %rax 
	 jmp .while_4 
.while_5: 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_66 
	 movq $0, %rax 
	 jmp .cmp_67 
.cmp_66: 
	 movq $1, %rax 
.cmp_67: 
	 cmpq $1, %rax 
	 je .cif_4 
	 movq $5, %rax 
	 movq %rax ,-48(%rbp) 
	 jmp .cif_5 
.cif_4: 
	 movq $42, %rax 
	 movq %rax ,-48(%rbp) 
.cif_5: 
.cif_1: 
	 movq $50, %rax 
	 movq %rax ,-72(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-80(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-88(%rbp) 
.while_6: 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_68 
	 movq $0, %rax 
	 jmp .cmp_69 
.cmp_68: 
	 movq $1, %rax 
.cmp_69: 
	 cmpq $0, %rax 
	 je .while_7 
.while_8: 
	 movq $15, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_70 
	 movq $0, %rax 
	 jmp .cmp_71 
.cmp_70: 
	 movq $1, %rax 
.cmp_71: 
	 cmpq $0, %rax 
	 je .while_9 
.while_10: 
	 movq $0, %rax 
	 pushq %rax 
	 movq -88(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_72 
	 movq $0, %rax 
	 jmp .cmp_73 
.cmp_72: 
	 movq $1, %rax 
.cmp_73: 
	 cmpq $0, %rax 
	 je .while_11 
	 movq $1, %rax 
	 movq %rax ,-88(%rbp) 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-56(%rbp) 
	 jmp .while_10 
.while_11: 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-64(%rbp) 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-80(%rbp) 
	 popq %rax 
	 jmp .while_8 
.while_9: 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -72(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-72(%rbp) 
	 popq %rax 
	 jmp .while_6 
.while_7: 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_74 
	 movq $0, %rax 
	 jmp .cmp_75 
.cmp_74: 
	 movq $1, %rax 
.cmp_75: 
	 cmpq $1, %rax 
	 je .eif_42 
	 movq $.str_95, %rax 
	 jmp .eif_43 
.eif_42: 
	 movq $.str_96, %rax 
.eif_43: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_97, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -40(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_98, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_99, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_76 
	 movq $0, %rax 
	 jmp .cmp_77 
.cmp_76: 
	 movq $1, %rax 
.cmp_77: 
	 cmpq $1, %rax 
	 je .eif_44 
	 movq $.str_100, %rax 
	 jmp .eif_45 
.eif_44: 
	 movq $.str_101, %rax 
.eif_45: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_102, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -48(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_103, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_104, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq $156, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_78 
	 movq $0, %rax 
	 jmp .cmp_79 
.cmp_78: 
	 movq $1, %rax 
.cmp_79: 
	 cmpq $1, %rax 
	 je .eif_46 
	 movq $.str_105, %rax 
	 jmp .eif_47 
.eif_46: 
	 movq $.str_106, %rax 
.eif_47: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_107, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -56(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $156, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_108, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_109, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_80 
	 movq $0, %rax 
	 jmp .cmp_81 
.cmp_80: 
	 movq $1, %rax 
.cmp_81: 
	 cmpq $1, %rax 
	 je .eif_48 
	 movq $.str_110, %rax 
	 jmp .eif_49 
.eif_48: 
	 movq $.str_111, %rax 
.eif_49: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_112, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_113, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_114, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 pushq %rdx 
	 movq $3, %rax 
	 pushq %rax 
	 movq $9, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_args: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 movq %rdx,-24(%rbp) 
	 movq %rcx,-32(%rbp) 
	 movq %r8,-40(%rbp) 
	 movq %r9,-48(%rbp) 
	 movq 16(%rbp), %r13
	 movq %r13 ,-56(%rbp) 
	 movq 24(%rbp), %r13
	 movq %r13 ,-64(%rbp) 
	 movq 32(%rbp), %r13
	 movq %r13 ,-72(%rbp) 
	 movq 40(%rbp), %r13
	 movq %r13 ,-80(%rbp) 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $5, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_82 
	 movq $0, %rax 
	 jmp .cmp_83 
.cmp_82: 
	 movq $1, %rax 
.cmp_83: 
	 cmpq $1, %rax 
	 je .eif_50 
	 movq $.str_115, %rax 
	 jmp .eif_51 
.eif_50: 
	 movq $.str_116, %rax 
.eif_51: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_117, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -8(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $5, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_118, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_119, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $8937, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_84 
	 movq $0, %rax 
	 jmp .cmp_85 
.cmp_84: 
	 movq $1, %rax 
.cmp_85: 
	 cmpq $1, %rax 
	 je .eif_52 
	 movq $.str_120, %rax 
	 jmp .eif_53 
.eif_52: 
	 movq $.str_121, %rax 
.eif_53: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_122, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -16(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8937, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_123, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_124, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1483542, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_86 
	 movq $0, %rax 
	 jmp .cmp_87 
.cmp_86: 
	 movq $1, %rax 
.cmp_87: 
	 cmpq $1, %rax 
	 je .eif_54 
	 movq $.str_125, %rax 
	 jmp .eif_55 
.eif_54: 
	 movq $.str_126, %rax 
.eif_55: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_127, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1483542, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_128, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_129, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $8938, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_88 
	 movq $0, %rax 
	 jmp .cmp_89 
.cmp_88: 
	 movq $1, %rax 
.cmp_89: 
	 cmpq $1, %rax 
	 je .eif_56 
	 movq $.str_130, %rax 
	 jmp .eif_57 
.eif_56: 
	 movq $.str_131, %rax 
.eif_57: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_132, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8938, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_133, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_134, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq $1547, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_90 
	 movq $0, %rax 
	 jmp .cmp_91 
.cmp_90: 
	 movq $1, %rax 
.cmp_91: 
	 cmpq $1, %rax 
	 je .eif_58 
	 movq $.str_135, %rax 
	 jmp .eif_59 
.eif_58: 
	 movq $.str_136, %rax 
.eif_59: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_137, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -40(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1547, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_138, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_139, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq $12, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_92 
	 movq $0, %rax 
	 jmp .cmp_93 
.cmp_92: 
	 movq $1, %rax 
.cmp_93: 
	 cmpq $1, %rax 
	 je .eif_60 
	 movq $.str_140, %rax 
	 jmp .eif_61 
.eif_60: 
	 movq $.str_141, %rax 
.eif_61: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_142, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -48(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $12, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_143, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_144, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -56(%rbp), %rax 
	 pushq %rax 
	 movq $589, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_94 
	 movq $0, %rax 
	 jmp .cmp_95 
.cmp_94: 
	 movq $1, %rax 
.cmp_95: 
	 cmpq $1, %rax 
	 je .eif_62 
	 movq $.str_145, %rax 
	 jmp .eif_63 
.eif_62: 
	 movq $.str_146, %rax 
.eif_63: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_147, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -56(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $589, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_148, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_149, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 pushq %rax 
	 movq $166, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_96 
	 movq $0, %rax 
	 jmp .cmp_97 
.cmp_96: 
	 movq $1, %rax 
.cmp_97: 
	 cmpq $1, %rax 
	 je .eif_64 
	 movq $.str_150, %rax 
	 jmp .eif_65 
.eif_64: 
	 movq $.str_151, %rax 
.eif_65: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_152, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -64(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $166, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_153, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_154, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq $8937, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_98 
	 movq $0, %rax 
	 jmp .cmp_99 
.cmp_98: 
	 movq $1, %rax 
.cmp_99: 
	 cmpq $1, %rax 
	 je .eif_66 
	 movq $.str_155, %rax 
	 jmp .eif_67 
.eif_66: 
	 movq $.str_156, %rax 
.eif_67: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_157, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -72(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8937, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_158, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_159, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq $5, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_100 
	 movq $0, %rax 
	 jmp .cmp_101 
.cmp_100: 
	 movq $1, %rax 
.cmp_101: 
	 cmpq $1, %rax 
	 je .eif_68 
	 movq $.str_160, %rax 
	 jmp .eif_69 
.eif_68: 
	 movq $.str_161, %rax 
.eif_69: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_162, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -80(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $5, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_163, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_164, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -80(%rbp), %rax 
	 pushq %rax 
	 movq -72(%rbp), %rax 
	 pushq %rax 
	 movq -64(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -48(%rbp), %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_102 
	 movq $0, %rax 
	 jmp .cmp_103 
.cmp_102: 
	 movq $1, %rax 
.cmp_103: 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_tabs: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq .NULL(%rip), %rax 
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
	 je .eif_70 
	 movq $1, %rax 
	 jmp .eif_71 
.eif_70: 
	 movq $0, %rax 
.eif_71: 
	 cmpq $1, %rax 
	 je .cif_6 
	 jmp .cif_7 
.cif_6: 
	 movq -8(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq free 
	 movslq %eax, %rax 
.cif_7: 
	 movq $100, %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 movq %rax ,-8(%rbp) 
	 movq $100, %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 movq %rax ,.global_5(%rip) 
	 movq $100, %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 movq %rax ,.global_6(%rip) 
	 movq $0, %rax 
	 movq %rax ,-16(%rbp) 
.while_12: 
	 movq $100, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_106 
	 movq $0, %rax 
	 jmp .cmp_107 
.cmp_106: 
	 movq $1, %rax 
.cmp_107: 
	 cmpq $0, %rax 
	 je .while_13 
	 movq $0, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq .global_5(%rip), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 imulq $8, %r10 
	 addq %r10,%r11 
	 movq (%r11), %rax 
	 addq $1, (%r11) 
	 pushq %rax 
	 movq .global_4(%rip), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_4(%rip), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,.global_4(%rip) 
	 pushq %rax 
	 movq .global_3(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_3(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.global_3(%rip) 
	 popq %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq .global_6(%rip), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 jmp .while_12 
.while_13: 
	 movq $1, %rax 
	 movq %rax ,-16(%rbp) 
.while_14: 
	 movq $100, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_108 
	 movq $0, %rax 
	 jmp .cmp_109 
.cmp_108: 
	 movq $1, %rax 
.cmp_109: 
	 cmpq $0, %rax 
	 je .while_15 
	 movq $2, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 pushq %rdx 
	 movq $9, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq .global_5(%rip), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
	 jmp .while_14 
.while_15: 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_110 
	 movq $0, %rax 
	 jmp .cmp_111 
.cmp_110: 
	 movq $1, %rax 
.cmp_111: 
	 cmpq $1, %rax 
	 je .eif_72 
	 movq $.str_165, %rax 
	 jmp .eif_73 
.eif_72: 
	 movq $.str_166, %rax 
.eif_73: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_167, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_168, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_169, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $2, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_112 
	 movq $0, %rax 
	 jmp .cmp_113 
.cmp_112: 
	 movq $1, %rax 
.cmp_113: 
	 cmpq $1, %rax 
	 je .eif_74 
	 movq $.str_170, %rax 
	 jmp .eif_75 
.eif_74: 
	 movq $.str_171, %rax 
.eif_75: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_172, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_173, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_174, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $2, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_114 
	 movq $0, %rax 
	 jmp .cmp_115 
.cmp_114: 
	 movq $1, %rax 
.cmp_115: 
	 cmpq $1, %rax 
	 je .eif_76 
	 movq $.str_175, %rax 
	 jmp .eif_77 
.eif_76: 
	 movq $.str_176, %rax 
.eif_77: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_177, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_178, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_179, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_116 
	 movq $0, %rax 
	 jmp .cmp_117 
.cmp_116: 
	 movq $1, %rax 
.cmp_117: 
	 cmpq $1, %rax 
	 je .eif_78 
	 movq $.str_180, %rax 
	 jmp .eif_79 
.eif_78: 
	 movq $.str_181, %rax 
.eif_79: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_182, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_183, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_184, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $14, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_118 
	 movq $0, %rax 
	 jmp .cmp_119 
.cmp_118: 
	 movq $1, %rax 
.cmp_119: 
	 cmpq $1, %rax 
	 je .eif_80 
	 movq $.str_185, %rax 
	 jmp .eif_81 
.eif_80: 
	 movq $.str_186, %rax 
.eif_81: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_187, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $14, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_188, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_189, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_120 
	 movq $0, %rax 
	 jmp .cmp_121 
.cmp_120: 
	 movq $1, %rax 
.cmp_121: 
	 cmpq $1, %rax 
	 je .eif_82 
	 movq $.str_190, %rax 
	 jmp .eif_83 
.eif_82: 
	 movq $.str_191, %rax 
.eif_83: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_192, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $10, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_193, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_194, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_122 
	 movq $0, %rax 
	 jmp .cmp_123 
.cmp_122: 
	 movq $1, %rax 
.cmp_123: 
	 cmpq $1, %rax 
	 je .eif_84 
	 movq $.str_195, %rax 
	 jmp .eif_85 
.eif_84: 
	 movq $.str_196, %rax 
.eif_85: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_197, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $10, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_198, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_199, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $14, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_124 
	 movq $0, %rax 
	 jmp .cmp_125 
.cmp_124: 
	 movq $1, %rax 
.cmp_125: 
	 cmpq $1, %rax 
	 je .eif_86 
	 movq $.str_200, %rax 
	 jmp .eif_87 
.eif_86: 
	 movq $.str_201, %rax 
.eif_87: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_202, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $14, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_203, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_204, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $22, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_126 
	 movq $0, %rax 
	 jmp .cmp_127 
.cmp_126: 
	 movq $1, %rax 
.cmp_127: 
	 cmpq $1, %rax 
	 je .eif_88 
	 movq $.str_205, %rax 
	 jmp .eif_89 
.eif_88: 
	 movq $.str_206, %rax 
.eif_89: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_207, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $22, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_208, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_209, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $16, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_128 
	 movq $0, %rax 
	 jmp .cmp_129 
.cmp_128: 
	 movq $1, %rax 
.cmp_129: 
	 cmpq $1, %rax 
	 je .eif_90 
	 movq $.str_210, %rax 
	 jmp .eif_91 
.eif_90: 
	 movq $.str_211, %rax 
.eif_91: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_212, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $16, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_213, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_214, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $32, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_130 
	 movq $0, %rax 
	 jmp .cmp_131 
.cmp_130: 
	 movq $1, %rax 
.cmp_131: 
	 cmpq $1, %rax 
	 je .eif_92 
	 movq $.str_215, %rax 
	 jmp .eif_93 
.eif_92: 
	 movq $.str_216, %rax 
.eif_93: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_217, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $32, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_218, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_219, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $11, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $34, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_132 
	 movq $0, %rax 
	 jmp .cmp_133 
.cmp_132: 
	 movq $1, %rax 
.cmp_133: 
	 cmpq $1, %rax 
	 je .eif_94 
	 movq $.str_220, %rax 
	 jmp .eif_95 
.eif_94: 
	 movq $.str_221, %rax 
.eif_95: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_222, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $11, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $34, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_223, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_224, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $12, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $22, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_134 
	 movq $0, %rax 
	 jmp .cmp_135 
.cmp_134: 
	 movq $1, %rax 
.cmp_135: 
	 cmpq $1, %rax 
	 je .eif_96 
	 movq $.str_225, %rax 
	 jmp .eif_97 
.eif_96: 
	 movq $.str_226, %rax 
.eif_97: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_227, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $12, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $22, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_228, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_229, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $13, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $32, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_136 
	 movq $0, %rax 
	 jmp .cmp_137 
.cmp_136: 
	 movq $1, %rax 
.cmp_137: 
	 cmpq $1, %rax 
	 je .eif_98 
	 movq $.str_230, %rax 
	 jmp .eif_99 
.eif_98: 
	 movq $.str_231, %rax 
.eif_99: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_232, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $13, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $32, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_233, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_234, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $14, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $28, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_138 
	 movq $0, %rax 
	 jmp .cmp_139 
.cmp_138: 
	 movq $1, %rax 
.cmp_139: 
	 cmpq $1, %rax 
	 je .eif_100 
	 movq $.str_235, %rax 
	 jmp .eif_101 
.eif_100: 
	 movq $.str_236, %rax 
.eif_101: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_237, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $14, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $28, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_238, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_239, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $15, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $28, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_140 
	 movq $0, %rax 
	 jmp .cmp_141 
.cmp_140: 
	 movq $1, %rax 
.cmp_141: 
	 cmpq $1, %rax 
	 je .eif_102 
	 movq $.str_240, %rax 
	 jmp .eif_103 
.eif_102: 
	 movq $.str_241, %rax 
.eif_103: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_242, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $15, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $28, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_243, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_244, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $16, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $32, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_142 
	 movq $0, %rax 
	 jmp .cmp_143 
.cmp_142: 
	 movq $1, %rax 
.cmp_143: 
	 cmpq $1, %rax 
	 je .eif_104 
	 movq $.str_245, %rax 
	 jmp .eif_105 
.eif_104: 
	 movq $.str_246, %rax 
.eif_105: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_247, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $16, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $32, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_248, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_249, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $17, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $40, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_144 
	 movq $0, %rax 
	 jmp .cmp_145 
.cmp_144: 
	 movq $1, %rax 
.cmp_145: 
	 cmpq $1, %rax 
	 je .eif_106 
	 movq $.str_250, %rax 
	 jmp .eif_107 
.eif_106: 
	 movq $.str_251, %rax 
.eif_107: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_252, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $17, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $40, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_253, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_254, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $18, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $34, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_146 
	 movq $0, %rax 
	 jmp .cmp_147 
.cmp_146: 
	 movq $1, %rax 
.cmp_147: 
	 cmpq $1, %rax 
	 je .eif_108 
	 movq $.str_255, %rax 
	 jmp .eif_109 
.eif_108: 
	 movq $.str_256, %rax 
.eif_109: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_257, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $18, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $34, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_258, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_259, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $19, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $50, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_148 
	 movq $0, %rax 
	 jmp .cmp_149 
.cmp_148: 
	 movq $1, %rax 
.cmp_149: 
	 cmpq $1, %rax 
	 je .eif_110 
	 movq $.str_260, %rax 
	 jmp .eif_111 
.eif_110: 
	 movq $.str_261, %rax 
.eif_111: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_262, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $19, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $50, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_263, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_264, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $20, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $52, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_150 
	 movq $0, %rax 
	 jmp .cmp_151 
.cmp_150: 
	 movq $1, %rax 
.cmp_151: 
	 cmpq $1, %rax 
	 je .eif_112 
	 movq $.str_265, %rax 
	 jmp .eif_113 
.eif_112: 
	 movq $.str_266, %rax 
.eif_113: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_267, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $20, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $52, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_268, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_269, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $21, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $40, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_152 
	 movq $0, %rax 
	 jmp .cmp_153 
.cmp_152: 
	 movq $1, %rax 
.cmp_153: 
	 cmpq $1, %rax 
	 je .eif_114 
	 movq $.str_270, %rax 
	 jmp .eif_115 
.eif_114: 
	 movq $.str_271, %rax 
.eif_115: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_272, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $21, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $40, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_273, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_274, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $22, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $50, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_154 
	 movq $0, %rax 
	 jmp .cmp_155 
.cmp_154: 
	 movq $1, %rax 
.cmp_155: 
	 cmpq $1, %rax 
	 je .eif_116 
	 movq $.str_275, %rax 
	 jmp .eif_117 
.eif_116: 
	 movq $.str_276, %rax 
.eif_117: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_277, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $22, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $50, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_278, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_279, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $46, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_156 
	 movq $0, %rax 
	 jmp .cmp_157 
.cmp_156: 
	 movq $1, %rax 
.cmp_157: 
	 cmpq $1, %rax 
	 je .eif_118 
	 movq $.str_280, %rax 
	 jmp .eif_119 
.eif_118: 
	 movq $.str_281, %rax 
.eif_119: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_282, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $46, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_283, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_284, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $24, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $46, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_158 
	 movq $0, %rax 
	 jmp .cmp_159 
.cmp_158: 
	 movq $1, %rax 
.cmp_159: 
	 cmpq $1, %rax 
	 je .eif_120 
	 movq $.str_285, %rax 
	 jmp .eif_121 
.eif_120: 
	 movq $.str_286, %rax 
.eif_121: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_287, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $24, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $46, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_288, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_289, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $25, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $50, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_160 
	 movq $0, %rax 
	 jmp .cmp_161 
.cmp_160: 
	 movq $1, %rax 
.cmp_161: 
	 cmpq $1, %rax 
	 je .eif_122 
	 movq $.str_290, %rax 
	 jmp .eif_123 
.eif_122: 
	 movq $.str_291, %rax 
.eif_123: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_292, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $25, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $50, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_293, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_294, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $26, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $58, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_162 
	 movq $0, %rax 
	 jmp .cmp_163 
.cmp_162: 
	 movq $1, %rax 
.cmp_163: 
	 cmpq $1, %rax 
	 je .eif_124 
	 movq $.str_295, %rax 
	 jmp .eif_125 
.eif_124: 
	 movq $.str_296, %rax 
.eif_125: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_297, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $26, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $58, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_298, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_299, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $27, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $52, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_164 
	 movq $0, %rax 
	 jmp .cmp_165 
.cmp_164: 
	 movq $1, %rax 
.cmp_165: 
	 cmpq $1, %rax 
	 je .eif_126 
	 movq $.str_300, %rax 
	 jmp .eif_127 
.eif_126: 
	 movq $.str_301, %rax 
.eif_127: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_302, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $27, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $52, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_303, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_304, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $28, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $68, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_166 
	 movq $0, %rax 
	 jmp .cmp_167 
.cmp_166: 
	 movq $1, %rax 
.cmp_167: 
	 cmpq $1, %rax 
	 je .eif_128 
	 movq $.str_305, %rax 
	 jmp .eif_129 
.eif_128: 
	 movq $.str_306, %rax 
.eif_129: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_307, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $28, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $68, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_308, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_309, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $29, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $70, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_168 
	 movq $0, %rax 
	 jmp .cmp_169 
.cmp_168: 
	 movq $1, %rax 
.cmp_169: 
	 cmpq $1, %rax 
	 je .eif_130 
	 movq $.str_310, %rax 
	 jmp .eif_131 
.eif_130: 
	 movq $.str_311, %rax 
.eif_131: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_312, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $29, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $70, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_313, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_314, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $30, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $58, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_170 
	 movq $0, %rax 
	 jmp .cmp_171 
.cmp_170: 
	 movq $1, %rax 
.cmp_171: 
	 cmpq $1, %rax 
	 je .eif_132 
	 movq $.str_315, %rax 
	 jmp .eif_133 
.eif_132: 
	 movq $.str_316, %rax 
.eif_133: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_317, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $30, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $58, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_318, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_319, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $31, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $68, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_172 
	 movq $0, %rax 
	 jmp .cmp_173 
.cmp_172: 
	 movq $1, %rax 
.cmp_173: 
	 cmpq $1, %rax 
	 je .eif_134 
	 movq $.str_320, %rax 
	 jmp .eif_135 
.eif_134: 
	 movq $.str_321, %rax 
.eif_135: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_322, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $31, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $68, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_323, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_324, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $32, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $64, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_174 
	 movq $0, %rax 
	 jmp .cmp_175 
.cmp_174: 
	 movq $1, %rax 
.cmp_175: 
	 cmpq $1, %rax 
	 je .eif_136 
	 movq $.str_325, %rax 
	 jmp .eif_137 
.eif_136: 
	 movq $.str_326, %rax 
.eif_137: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_327, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $32, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $64, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_328, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_329, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $33, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $64, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_176 
	 movq $0, %rax 
	 jmp .cmp_177 
.cmp_176: 
	 movq $1, %rax 
.cmp_177: 
	 cmpq $1, %rax 
	 je .eif_138 
	 movq $.str_330, %rax 
	 jmp .eif_139 
.eif_138: 
	 movq $.str_331, %rax 
.eif_139: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_332, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $33, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $64, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_333, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_334, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $34, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $68, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_178 
	 movq $0, %rax 
	 jmp .cmp_179 
.cmp_178: 
	 movq $1, %rax 
.cmp_179: 
	 cmpq $1, %rax 
	 je .eif_140 
	 movq $.str_335, %rax 
	 jmp .eif_141 
.eif_140: 
	 movq $.str_336, %rax 
.eif_141: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_337, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $34, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $68, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_338, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_339, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $35, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $76, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_180 
	 movq $0, %rax 
	 jmp .cmp_181 
.cmp_180: 
	 movq $1, %rax 
.cmp_181: 
	 cmpq $1, %rax 
	 je .eif_142 
	 movq $.str_340, %rax 
	 jmp .eif_143 
.eif_142: 
	 movq $.str_341, %rax 
.eif_143: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_342, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $35, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $76, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_343, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_344, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $36, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $70, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_182 
	 movq $0, %rax 
	 jmp .cmp_183 
.cmp_182: 
	 movq $1, %rax 
.cmp_183: 
	 cmpq $1, %rax 
	 je .eif_144 
	 movq $.str_345, %rax 
	 jmp .eif_145 
.eif_144: 
	 movq $.str_346, %rax 
.eif_145: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_347, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $36, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $70, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_348, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_349, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $37, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $86, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_184 
	 movq $0, %rax 
	 jmp .cmp_185 
.cmp_184: 
	 movq $1, %rax 
.cmp_185: 
	 cmpq $1, %rax 
	 je .eif_146 
	 movq $.str_350, %rax 
	 jmp .eif_147 
.eif_146: 
	 movq $.str_351, %rax 
.eif_147: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_352, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $37, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $86, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_353, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_354, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $38, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $88, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_186 
	 movq $0, %rax 
	 jmp .cmp_187 
.cmp_186: 
	 movq $1, %rax 
.cmp_187: 
	 cmpq $1, %rax 
	 je .eif_148 
	 movq $.str_355, %rax 
	 jmp .eif_149 
.eif_148: 
	 movq $.str_356, %rax 
.eif_149: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_357, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $38, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $88, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_358, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_359, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $39, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $76, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_188 
	 movq $0, %rax 
	 jmp .cmp_189 
.cmp_188: 
	 movq $1, %rax 
.cmp_189: 
	 cmpq $1, %rax 
	 je .eif_150 
	 movq $.str_360, %rax 
	 jmp .eif_151 
.eif_150: 
	 movq $.str_361, %rax 
.eif_151: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_362, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $39, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $76, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_363, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_364, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $40, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $86, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_190 
	 movq $0, %rax 
	 jmp .cmp_191 
.cmp_190: 
	 movq $1, %rax 
.cmp_191: 
	 cmpq $1, %rax 
	 je .eif_152 
	 movq $.str_365, %rax 
	 jmp .eif_153 
.eif_152: 
	 movq $.str_366, %rax 
.eif_153: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_367, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $40, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $86, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_368, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_369, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $41, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $82, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_192 
	 movq $0, %rax 
	 jmp .cmp_193 
.cmp_192: 
	 movq $1, %rax 
.cmp_193: 
	 cmpq $1, %rax 
	 je .eif_154 
	 movq $.str_370, %rax 
	 jmp .eif_155 
.eif_154: 
	 movq $.str_371, %rax 
.eif_155: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_372, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $41, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $82, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_373, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_374, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $42, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $82, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_194 
	 movq $0, %rax 
	 jmp .cmp_195 
.cmp_194: 
	 movq $1, %rax 
.cmp_195: 
	 cmpq $1, %rax 
	 je .eif_156 
	 movq $.str_375, %rax 
	 jmp .eif_157 
.eif_156: 
	 movq $.str_376, %rax 
.eif_157: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_377, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $42, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $82, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_378, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_379, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $43, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $86, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_196 
	 movq $0, %rax 
	 jmp .cmp_197 
.cmp_196: 
	 movq $1, %rax 
.cmp_197: 
	 cmpq $1, %rax 
	 je .eif_158 
	 movq $.str_380, %rax 
	 jmp .eif_159 
.eif_158: 
	 movq $.str_381, %rax 
.eif_159: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_382, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $43, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $86, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_383, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_384, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $44, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $94, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_198 
	 movq $0, %rax 
	 jmp .cmp_199 
.cmp_198: 
	 movq $1, %rax 
.cmp_199: 
	 cmpq $1, %rax 
	 je .eif_160 
	 movq $.str_385, %rax 
	 jmp .eif_161 
.eif_160: 
	 movq $.str_386, %rax 
.eif_161: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_387, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $44, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $94, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_388, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_389, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $45, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $88, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_200 
	 movq $0, %rax 
	 jmp .cmp_201 
.cmp_200: 
	 movq $1, %rax 
.cmp_201: 
	 cmpq $1, %rax 
	 je .eif_162 
	 movq $.str_390, %rax 
	 jmp .eif_163 
.eif_162: 
	 movq $.str_391, %rax 
.eif_163: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_392, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $45, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $88, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_393, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_394, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $46, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $104, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_202 
	 movq $0, %rax 
	 jmp .cmp_203 
.cmp_202: 
	 movq $1, %rax 
.cmp_203: 
	 cmpq $1, %rax 
	 je .eif_164 
	 movq $.str_395, %rax 
	 jmp .eif_165 
.eif_164: 
	 movq $.str_396, %rax 
.eif_165: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_397, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $46, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $104, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_398, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_399, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $47, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $106, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_204 
	 movq $0, %rax 
	 jmp .cmp_205 
.cmp_204: 
	 movq $1, %rax 
.cmp_205: 
	 cmpq $1, %rax 
	 je .eif_166 
	 movq $.str_400, %rax 
	 jmp .eif_167 
.eif_166: 
	 movq $.str_401, %rax 
.eif_167: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_402, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $47, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $106, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_403, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_404, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $48, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $94, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_206 
	 movq $0, %rax 
	 jmp .cmp_207 
.cmp_206: 
	 movq $1, %rax 
.cmp_207: 
	 cmpq $1, %rax 
	 je .eif_168 
	 movq $.str_405, %rax 
	 jmp .eif_169 
.eif_168: 
	 movq $.str_406, %rax 
.eif_169: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_407, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $48, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $94, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_408, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_409, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $49, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $104, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_208 
	 movq $0, %rax 
	 jmp .cmp_209 
.cmp_208: 
	 movq $1, %rax 
.cmp_209: 
	 cmpq $1, %rax 
	 je .eif_170 
	 movq $.str_410, %rax 
	 jmp .eif_171 
.eif_170: 
	 movq $.str_411, %rax 
.eif_171: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_412, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $49, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $104, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_413, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_414, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $50, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $100, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_210 
	 movq $0, %rax 
	 jmp .cmp_211 
.cmp_210: 
	 movq $1, %rax 
.cmp_211: 
	 cmpq $1, %rax 
	 je .eif_172 
	 movq $.str_415, %rax 
	 jmp .eif_173 
.eif_172: 
	 movq $.str_416, %rax 
.eif_173: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_417, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $50, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $100, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_418, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_419, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $100, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_212 
	 movq $0, %rax 
	 jmp .cmp_213 
.cmp_212: 
	 movq $1, %rax 
.cmp_213: 
	 cmpq $1, %rax 
	 je .eif_174 
	 movq $.str_420, %rax 
	 jmp .eif_175 
.eif_174: 
	 movq $.str_421, %rax 
.eif_175: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_422, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $100, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_423, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_424, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $52, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $104, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_214 
	 movq $0, %rax 
	 jmp .cmp_215 
.cmp_214: 
	 movq $1, %rax 
.cmp_215: 
	 cmpq $1, %rax 
	 je .eif_176 
	 movq $.str_425, %rax 
	 jmp .eif_177 
.eif_176: 
	 movq $.str_426, %rax 
.eif_177: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_427, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $52, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $104, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_428, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_429, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $53, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $112, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_216 
	 movq $0, %rax 
	 jmp .cmp_217 
.cmp_216: 
	 movq $1, %rax 
.cmp_217: 
	 cmpq $1, %rax 
	 je .eif_178 
	 movq $.str_430, %rax 
	 jmp .eif_179 
.eif_178: 
	 movq $.str_431, %rax 
.eif_179: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_432, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $53, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $112, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_433, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_434, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $54, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $106, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_218 
	 movq $0, %rax 
	 jmp .cmp_219 
.cmp_218: 
	 movq $1, %rax 
.cmp_219: 
	 cmpq $1, %rax 
	 je .eif_180 
	 movq $.str_435, %rax 
	 jmp .eif_181 
.eif_180: 
	 movq $.str_436, %rax 
.eif_181: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_437, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $54, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $106, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_438, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_439, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $55, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $122, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_220 
	 movq $0, %rax 
	 jmp .cmp_221 
.cmp_220: 
	 movq $1, %rax 
.cmp_221: 
	 cmpq $1, %rax 
	 je .eif_182 
	 movq $.str_440, %rax 
	 jmp .eif_183 
.eif_182: 
	 movq $.str_441, %rax 
.eif_183: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_442, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $55, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $122, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_443, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_444, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $124, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_222 
	 movq $0, %rax 
	 jmp .cmp_223 
.cmp_222: 
	 movq $1, %rax 
.cmp_223: 
	 cmpq $1, %rax 
	 je .eif_184 
	 movq $.str_445, %rax 
	 jmp .eif_185 
.eif_184: 
	 movq $.str_446, %rax 
.eif_185: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_447, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $124, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_448, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_449, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $57, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $112, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_224 
	 movq $0, %rax 
	 jmp .cmp_225 
.cmp_224: 
	 movq $1, %rax 
.cmp_225: 
	 cmpq $1, %rax 
	 je .eif_186 
	 movq $.str_450, %rax 
	 jmp .eif_187 
.eif_186: 
	 movq $.str_451, %rax 
.eif_187: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_452, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $57, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $112, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_453, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_454, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $58, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $122, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_226 
	 movq $0, %rax 
	 jmp .cmp_227 
.cmp_226: 
	 movq $1, %rax 
.cmp_227: 
	 cmpq $1, %rax 
	 je .eif_188 
	 movq $.str_455, %rax 
	 jmp .eif_189 
.eif_188: 
	 movq $.str_456, %rax 
.eif_189: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_457, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $58, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $122, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_458, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_459, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $59, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $118, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_228 
	 movq $0, %rax 
	 jmp .cmp_229 
.cmp_228: 
	 movq $1, %rax 
.cmp_229: 
	 cmpq $1, %rax 
	 je .eif_190 
	 movq $.str_460, %rax 
	 jmp .eif_191 
.eif_190: 
	 movq $.str_461, %rax 
.eif_191: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_462, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $59, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $118, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_463, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_464, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $60, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $118, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_230 
	 movq $0, %rax 
	 jmp .cmp_231 
.cmp_230: 
	 movq $1, %rax 
.cmp_231: 
	 cmpq $1, %rax 
	 je .eif_192 
	 movq $.str_465, %rax 
	 jmp .eif_193 
.eif_192: 
	 movq $.str_466, %rax 
.eif_193: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_467, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $60, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $118, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_468, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_469, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $61, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $122, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_232 
	 movq $0, %rax 
	 jmp .cmp_233 
.cmp_232: 
	 movq $1, %rax 
.cmp_233: 
	 cmpq $1, %rax 
	 je .eif_194 
	 movq $.str_470, %rax 
	 jmp .eif_195 
.eif_194: 
	 movq $.str_471, %rax 
.eif_195: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_472, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $61, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $122, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_473, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_474, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $62, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $130, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_234 
	 movq $0, %rax 
	 jmp .cmp_235 
.cmp_234: 
	 movq $1, %rax 
.cmp_235: 
	 cmpq $1, %rax 
	 je .eif_196 
	 movq $.str_475, %rax 
	 jmp .eif_197 
.eif_196: 
	 movq $.str_476, %rax 
.eif_197: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_477, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $62, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $130, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_478, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_479, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $63, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $124, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_236 
	 movq $0, %rax 
	 jmp .cmp_237 
.cmp_236: 
	 movq $1, %rax 
.cmp_237: 
	 cmpq $1, %rax 
	 je .eif_198 
	 movq $.str_480, %rax 
	 jmp .eif_199 
.eif_198: 
	 movq $.str_481, %rax 
.eif_199: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_482, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $63, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $124, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_483, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_484, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $64, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $140, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_238 
	 movq $0, %rax 
	 jmp .cmp_239 
.cmp_238: 
	 movq $1, %rax 
.cmp_239: 
	 cmpq $1, %rax 
	 je .eif_200 
	 movq $.str_485, %rax 
	 jmp .eif_201 
.eif_200: 
	 movq $.str_486, %rax 
.eif_201: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_487, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $64, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $140, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_488, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_489, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $65, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $142, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_240 
	 movq $0, %rax 
	 jmp .cmp_241 
.cmp_240: 
	 movq $1, %rax 
.cmp_241: 
	 cmpq $1, %rax 
	 je .eif_202 
	 movq $.str_490, %rax 
	 jmp .eif_203 
.eif_202: 
	 movq $.str_491, %rax 
.eif_203: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_492, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $65, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $142, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_493, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_494, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $66, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $130, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_242 
	 movq $0, %rax 
	 jmp .cmp_243 
.cmp_242: 
	 movq $1, %rax 
.cmp_243: 
	 cmpq $1, %rax 
	 je .eif_204 
	 movq $.str_495, %rax 
	 jmp .eif_205 
.eif_204: 
	 movq $.str_496, %rax 
.eif_205: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_497, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $66, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $130, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_498, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_499, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $67, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $140, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_244 
	 movq $0, %rax 
	 jmp .cmp_245 
.cmp_244: 
	 movq $1, %rax 
.cmp_245: 
	 cmpq $1, %rax 
	 je .eif_206 
	 movq $.str_500, %rax 
	 jmp .eif_207 
.eif_206: 
	 movq $.str_501, %rax 
.eif_207: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_502, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $67, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $140, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_503, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_504, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $68, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $136, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_246 
	 movq $0, %rax 
	 jmp .cmp_247 
.cmp_246: 
	 movq $1, %rax 
.cmp_247: 
	 cmpq $1, %rax 
	 je .eif_208 
	 movq $.str_505, %rax 
	 jmp .eif_209 
.eif_208: 
	 movq $.str_506, %rax 
.eif_209: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_507, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $68, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $136, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_508, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_509, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $69, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $136, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_248 
	 movq $0, %rax 
	 jmp .cmp_249 
.cmp_248: 
	 movq $1, %rax 
.cmp_249: 
	 cmpq $1, %rax 
	 je .eif_210 
	 movq $.str_510, %rax 
	 jmp .eif_211 
.eif_210: 
	 movq $.str_511, %rax 
.eif_211: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_512, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $69, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $136, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_513, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_514, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $70, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $140, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_250 
	 movq $0, %rax 
	 jmp .cmp_251 
.cmp_250: 
	 movq $1, %rax 
.cmp_251: 
	 cmpq $1, %rax 
	 je .eif_212 
	 movq $.str_515, %rax 
	 jmp .eif_213 
.eif_212: 
	 movq $.str_516, %rax 
.eif_213: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_517, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $70, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $140, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_518, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_519, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $71, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $148, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_252 
	 movq $0, %rax 
	 jmp .cmp_253 
.cmp_252: 
	 movq $1, %rax 
.cmp_253: 
	 cmpq $1, %rax 
	 je .eif_214 
	 movq $.str_520, %rax 
	 jmp .eif_215 
.eif_214: 
	 movq $.str_521, %rax 
.eif_215: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_522, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $71, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $148, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_523, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_524, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $72, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $142, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_254 
	 movq $0, %rax 
	 jmp .cmp_255 
.cmp_254: 
	 movq $1, %rax 
.cmp_255: 
	 cmpq $1, %rax 
	 je .eif_216 
	 movq $.str_525, %rax 
	 jmp .eif_217 
.eif_216: 
	 movq $.str_526, %rax 
.eif_217: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_527, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $72, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $142, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_528, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_529, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $73, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $158, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_256 
	 movq $0, %rax 
	 jmp .cmp_257 
.cmp_256: 
	 movq $1, %rax 
.cmp_257: 
	 cmpq $1, %rax 
	 je .eif_218 
	 movq $.str_530, %rax 
	 jmp .eif_219 
.eif_218: 
	 movq $.str_531, %rax 
.eif_219: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_532, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $73, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $158, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_533, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_534, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $74, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $160, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_258 
	 movq $0, %rax 
	 jmp .cmp_259 
.cmp_258: 
	 movq $1, %rax 
.cmp_259: 
	 cmpq $1, %rax 
	 je .eif_220 
	 movq $.str_535, %rax 
	 jmp .eif_221 
.eif_220: 
	 movq $.str_536, %rax 
.eif_221: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_537, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $74, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $160, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_538, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_539, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $75, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $148, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_260 
	 movq $0, %rax 
	 jmp .cmp_261 
.cmp_260: 
	 movq $1, %rax 
.cmp_261: 
	 cmpq $1, %rax 
	 je .eif_222 
	 movq $.str_540, %rax 
	 jmp .eif_223 
.eif_222: 
	 movq $.str_541, %rax 
.eif_223: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_542, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $75, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $148, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_543, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_544, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $76, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $158, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_262 
	 movq $0, %rax 
	 jmp .cmp_263 
.cmp_262: 
	 movq $1, %rax 
.cmp_263: 
	 cmpq $1, %rax 
	 je .eif_224 
	 movq $.str_545, %rax 
	 jmp .eif_225 
.eif_224: 
	 movq $.str_546, %rax 
.eif_225: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_547, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $76, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $158, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_548, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_549, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $77, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $154, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_264 
	 movq $0, %rax 
	 jmp .cmp_265 
.cmp_264: 
	 movq $1, %rax 
.cmp_265: 
	 cmpq $1, %rax 
	 je .eif_226 
	 movq $.str_550, %rax 
	 jmp .eif_227 
.eif_226: 
	 movq $.str_551, %rax 
.eif_227: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_552, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $77, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $154, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_553, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_554, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $78, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $154, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_266 
	 movq $0, %rax 
	 jmp .cmp_267 
.cmp_266: 
	 movq $1, %rax 
.cmp_267: 
	 cmpq $1, %rax 
	 je .eif_228 
	 movq $.str_555, %rax 
	 jmp .eif_229 
.eif_228: 
	 movq $.str_556, %rax 
.eif_229: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_557, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $78, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $154, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_558, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_559, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $79, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $158, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_268 
	 movq $0, %rax 
	 jmp .cmp_269 
.cmp_268: 
	 movq $1, %rax 
.cmp_269: 
	 cmpq $1, %rax 
	 je .eif_230 
	 movq $.str_560, %rax 
	 jmp .eif_231 
.eif_230: 
	 movq $.str_561, %rax 
.eif_231: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_562, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $79, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $158, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_563, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_564, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $80, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $166, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_270 
	 movq $0, %rax 
	 jmp .cmp_271 
.cmp_270: 
	 movq $1, %rax 
.cmp_271: 
	 cmpq $1, %rax 
	 je .eif_232 
	 movq $.str_565, %rax 
	 jmp .eif_233 
.eif_232: 
	 movq $.str_566, %rax 
.eif_233: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_567, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $80, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $166, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_568, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_569, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $81, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $160, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_272 
	 movq $0, %rax 
	 jmp .cmp_273 
.cmp_272: 
	 movq $1, %rax 
.cmp_273: 
	 cmpq $1, %rax 
	 je .eif_234 
	 movq $.str_570, %rax 
	 jmp .eif_235 
.eif_234: 
	 movq $.str_571, %rax 
.eif_235: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_572, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $81, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $160, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_573, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_574, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $82, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $176, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_274 
	 movq $0, %rax 
	 jmp .cmp_275 
.cmp_274: 
	 movq $1, %rax 
.cmp_275: 
	 cmpq $1, %rax 
	 je .eif_236 
	 movq $.str_575, %rax 
	 jmp .eif_237 
.eif_236: 
	 movq $.str_576, %rax 
.eif_237: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_577, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $82, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $176, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_578, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_579, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $83, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $178, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_276 
	 movq $0, %rax 
	 jmp .cmp_277 
.cmp_276: 
	 movq $1, %rax 
.cmp_277: 
	 cmpq $1, %rax 
	 je .eif_238 
	 movq $.str_580, %rax 
	 jmp .eif_239 
.eif_238: 
	 movq $.str_581, %rax 
.eif_239: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_582, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $83, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $178, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_583, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_584, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $84, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $166, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_278 
	 movq $0, %rax 
	 jmp .cmp_279 
.cmp_278: 
	 movq $1, %rax 
.cmp_279: 
	 cmpq $1, %rax 
	 je .eif_240 
	 movq $.str_585, %rax 
	 jmp .eif_241 
.eif_240: 
	 movq $.str_586, %rax 
.eif_241: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_587, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $84, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $166, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_588, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_589, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $85, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $176, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_280 
	 movq $0, %rax 
	 jmp .cmp_281 
.cmp_280: 
	 movq $1, %rax 
.cmp_281: 
	 cmpq $1, %rax 
	 je .eif_242 
	 movq $.str_590, %rax 
	 jmp .eif_243 
.eif_242: 
	 movq $.str_591, %rax 
.eif_243: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_592, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $85, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $176, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_593, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_594, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $86, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $172, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_282 
	 movq $0, %rax 
	 jmp .cmp_283 
.cmp_282: 
	 movq $1, %rax 
.cmp_283: 
	 cmpq $1, %rax 
	 je .eif_244 
	 movq $.str_595, %rax 
	 jmp .eif_245 
.eif_244: 
	 movq $.str_596, %rax 
.eif_245: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_597, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $86, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $172, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_598, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_599, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $87, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $172, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_284 
	 movq $0, %rax 
	 jmp .cmp_285 
.cmp_284: 
	 movq $1, %rax 
.cmp_285: 
	 cmpq $1, %rax 
	 je .eif_246 
	 movq $.str_600, %rax 
	 jmp .eif_247 
.eif_246: 
	 movq $.str_601, %rax 
.eif_247: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_602, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $87, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $172, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_603, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_604, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $88, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $176, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_286 
	 movq $0, %rax 
	 jmp .cmp_287 
.cmp_286: 
	 movq $1, %rax 
.cmp_287: 
	 cmpq $1, %rax 
	 je .eif_248 
	 movq $.str_605, %rax 
	 jmp .eif_249 
.eif_248: 
	 movq $.str_606, %rax 
.eif_249: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_607, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $88, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $176, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_608, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_609, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $89, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $184, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_288 
	 movq $0, %rax 
	 jmp .cmp_289 
.cmp_288: 
	 movq $1, %rax 
.cmp_289: 
	 cmpq $1, %rax 
	 je .eif_250 
	 movq $.str_610, %rax 
	 jmp .eif_251 
.eif_250: 
	 movq $.str_611, %rax 
.eif_251: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_612, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $89, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $184, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_613, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_614, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $90, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $178, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_290 
	 movq $0, %rax 
	 jmp .cmp_291 
.cmp_290: 
	 movq $1, %rax 
.cmp_291: 
	 cmpq $1, %rax 
	 je .eif_252 
	 movq $.str_615, %rax 
	 jmp .eif_253 
.eif_252: 
	 movq $.str_616, %rax 
.eif_253: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_617, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $90, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $178, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_618, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_619, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $91, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $194, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_292 
	 movq $0, %rax 
	 jmp .cmp_293 
.cmp_292: 
	 movq $1, %rax 
.cmp_293: 
	 cmpq $1, %rax 
	 je .eif_254 
	 movq $.str_620, %rax 
	 jmp .eif_255 
.eif_254: 
	 movq $.str_621, %rax 
.eif_255: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_622, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $91, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $194, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_623, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_624, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $92, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $196, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_294 
	 movq $0, %rax 
	 jmp .cmp_295 
.cmp_294: 
	 movq $1, %rax 
.cmp_295: 
	 cmpq $1, %rax 
	 je .eif_256 
	 movq $.str_625, %rax 
	 jmp .eif_257 
.eif_256: 
	 movq $.str_626, %rax 
.eif_257: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_627, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $92, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $196, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_628, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_629, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $93, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $184, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_296 
	 movq $0, %rax 
	 jmp .cmp_297 
.cmp_296: 
	 movq $1, %rax 
.cmp_297: 
	 cmpq $1, %rax 
	 je .eif_258 
	 movq $.str_630, %rax 
	 jmp .eif_259 
.eif_258: 
	 movq $.str_631, %rax 
.eif_259: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_632, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $93, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $184, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_633, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_634, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $94, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $194, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_298 
	 movq $0, %rax 
	 jmp .cmp_299 
.cmp_298: 
	 movq $1, %rax 
.cmp_299: 
	 cmpq $1, %rax 
	 je .eif_260 
	 movq $.str_635, %rax 
	 jmp .eif_261 
.eif_260: 
	 movq $.str_636, %rax 
.eif_261: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_637, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $94, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $194, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_638, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_639, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $95, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $190, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_300 
	 movq $0, %rax 
	 jmp .cmp_301 
.cmp_300: 
	 movq $1, %rax 
.cmp_301: 
	 cmpq $1, %rax 
	 je .eif_262 
	 movq $.str_640, %rax 
	 jmp .eif_263 
.eif_262: 
	 movq $.str_641, %rax 
.eif_263: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_642, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $95, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $190, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_643, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_644, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $96, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $190, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_302 
	 movq $0, %rax 
	 jmp .cmp_303 
.cmp_302: 
	 movq $1, %rax 
.cmp_303: 
	 cmpq $1, %rax 
	 je .eif_264 
	 movq $.str_645, %rax 
	 jmp .eif_265 
.eif_264: 
	 movq $.str_646, %rax 
.eif_265: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_647, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $96, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $190, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_648, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_649, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $97, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $194, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_304 
	 movq $0, %rax 
	 jmp .cmp_305 
.cmp_304: 
	 movq $1, %rax 
.cmp_305: 
	 cmpq $1, %rax 
	 je .eif_266 
	 movq $.str_650, %rax 
	 jmp .eif_267 
.eif_266: 
	 movq $.str_651, %rax 
.eif_267: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_652, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $97, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $194, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_653, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_654, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $98, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $202, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_306 
	 movq $0, %rax 
	 jmp .cmp_307 
.cmp_306: 
	 movq $1, %rax 
.cmp_307: 
	 cmpq $1, %rax 
	 je .eif_268 
	 movq $.str_655, %rax 
	 jmp .eif_269 
.eif_268: 
	 movq $.str_656, %rax 
.eif_269: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_657, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $98, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $202, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_658, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_659, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $99, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $196, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_308 
	 movq $0, %rax 
	 jmp .cmp_309 
.cmp_308: 
	 movq $1, %rax 
.cmp_309: 
	 cmpq $1, %rax 
	 je .eif_270 
	 movq $.str_660, %rax 
	 jmp .eif_271 
.eif_270: 
	 movq $.str_661, %rax 
.eif_271: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_662, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $99, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $196, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_663, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_664, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq $3, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 movq %rax ,-24(%rbp) 
	 movq $1, %rax 
	 pushq %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 pushq %rax 
	 movq .global_1(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 movq -24(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 movq -24(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 pushq %rdx 
	 movq $98, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 pushq %rax 
	 movq $2, %rax 
	 popq %r10 
	 movq -24(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -24(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
verify_global: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq .global_1(%rip), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_310 
	 movq $0, %rax 
	 jmp .cmp_311 
.cmp_310: 
	 movq $1, %rax 
.cmp_311: 
	 cmpq $1, %rax 
	 je .eif_272 
	 movq $.str_665, %rax 
	 jmp .eif_273 
.eif_272: 
	 movq $.str_666, %rax 
.eif_273: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_667, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_1(%rip), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_668, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_669, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_2(%rip), %rax 
	 pushq %rax 
	 movq $22, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_312 
	 movq $0, %rax 
	 jmp .cmp_313 
.cmp_312: 
	 movq $1, %rax 
.cmp_313: 
	 cmpq $1, %rax 
	 je .eif_274 
	 movq $.str_670, %rax 
	 jmp .eif_275 
.eif_274: 
	 movq $.str_671, %rax 
.eif_275: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_672, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_2(%rip), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $22, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_673, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_674, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_3(%rip), %rax 
	 pushq %rax 
	 movq $78, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_314 
	 movq $0, %rax 
	 jmp .cmp_315 
.cmp_314: 
	 movq $1, %rax 
.cmp_315: 
	 cmpq $1, %rax 
	 je .eif_276 
	 movq $.str_675, %rax 
	 jmp .eif_277 
.eif_276: 
	 movq $.str_676, %rax 
.eif_277: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_677, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_3(%rip), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $78, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_678, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_679, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_4(%rip), %rax 
	 pushq %rax 
	 movq $52, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_316 
	 movq $0, %rax 
	 jmp .cmp_317 
.cmp_316: 
	 movq $1, %rax 
.cmp_317: 
	 cmpq $1, %rax 
	 je .eif_278 
	 movq $.str_680, %rax 
	 jmp .eif_279 
.eif_278: 
	 movq $.str_681, %rax 
.eif_279: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_682, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq .global_4(%rip), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $52, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_683, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_684, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_318 
	 movq $0, %rax 
	 jmp .cmp_319 
.cmp_318: 
	 movq $1, %rax 
.cmp_319: 
	 cmpq $1, %rax 
	 je .eif_280 
	 movq $.str_685, %rax 
	 jmp .eif_281 
.eif_280: 
	 movq $.str_686, %rax 
.eif_281: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_687, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_688, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_689, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_320 
	 movq $0, %rax 
	 jmp .cmp_321 
.cmp_320: 
	 movq $1, %rax 
.cmp_321: 
	 cmpq $1, %rax 
	 je .eif_282 
	 movq $.str_690, %rax 
	 jmp .eif_283 
.eif_282: 
	 movq $.str_691, %rax 
.eif_283: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_692, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_693, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_694, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $2, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_322 
	 movq $0, %rax 
	 jmp .cmp_323 
.cmp_322: 
	 movq $1, %rax 
.cmp_323: 
	 cmpq $1, %rax 
	 je .eif_284 
	 movq $.str_695, %rax 
	 jmp .eif_285 
.eif_284: 
	 movq $.str_696, %rax 
.eif_285: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_697, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_698, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_699, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_324 
	 movq $0, %rax 
	 jmp .cmp_325 
.cmp_324: 
	 movq $1, %rax 
.cmp_325: 
	 cmpq $1, %rax 
	 je .eif_286 
	 movq $.str_700, %rax 
	 jmp .eif_287 
.eif_286: 
	 movq $.str_701, %rax 
.eif_287: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_702, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_703, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_704, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_326 
	 movq $0, %rax 
	 jmp .cmp_327 
.cmp_326: 
	 movq $1, %rax 
.cmp_327: 
	 cmpq $1, %rax 
	 je .eif_288 
	 movq $.str_705, %rax 
	 jmp .eif_289 
.eif_288: 
	 movq $.str_706, %rax 
.eif_289: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_707, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_708, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_709, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_328 
	 movq $0, %rax 
	 jmp .cmp_329 
.cmp_328: 
	 movq $1, %rax 
.cmp_329: 
	 cmpq $1, %rax 
	 je .eif_290 
	 movq $.str_710, %rax 
	 jmp .eif_291 
.eif_290: 
	 movq $.str_711, %rax 
.eif_291: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_712, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_713, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_714, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_330 
	 movq $0, %rax 
	 jmp .cmp_331 
.cmp_330: 
	 movq $1, %rax 
.cmp_331: 
	 cmpq $1, %rax 
	 je .eif_292 
	 movq $.str_715, %rax 
	 jmp .eif_293 
.eif_292: 
	 movq $.str_716, %rax 
.eif_293: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_717, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_718, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_719, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $2, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_332 
	 movq $0, %rax 
	 jmp .cmp_333 
.cmp_332: 
	 movq $1, %rax 
.cmp_333: 
	 cmpq $1, %rax 
	 je .eif_294 
	 movq $.str_720, %rax 
	 jmp .eif_295 
.eif_294: 
	 movq $.str_721, %rax 
.eif_295: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_722, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $2, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_723, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_724, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_334 
	 movq $0, %rax 
	 jmp .cmp_335 
.cmp_334: 
	 movq $1, %rax 
.cmp_335: 
	 cmpq $1, %rax 
	 je .eif_296 
	 movq $.str_725, %rax 
	 jmp .eif_297 
.eif_296: 
	 movq $.str_726, %rax 
.eif_297: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_727, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_728, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_729, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $3, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_336 
	 movq $0, %rax 
	 jmp .cmp_337 
.cmp_336: 
	 movq $1, %rax 
.cmp_337: 
	 cmpq $1, %rax 
	 je .eif_298 
	 movq $.str_730, %rax 
	 jmp .eif_299 
.eif_298: 
	 movq $.str_731, %rax 
.eif_299: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_732, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $4, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $3, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_733, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_734, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_338 
	 movq $0, %rax 
	 jmp .cmp_339 
.cmp_338: 
	 movq $1, %rax 
.cmp_339: 
	 cmpq $1, %rax 
	 je .eif_300 
	 movq $.str_735, %rax 
	 jmp .eif_301 
.eif_300: 
	 movq $.str_736, %rax 
.eif_301: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_737, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_738, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_739, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_340 
	 movq $0, %rax 
	 jmp .cmp_341 
.cmp_340: 
	 movq $1, %rax 
.cmp_341: 
	 cmpq $1, %rax 
	 je .eif_302 
	 movq $.str_740, %rax 
	 jmp .eif_303 
.eif_302: 
	 movq $.str_741, %rax 
.eif_303: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_742, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $5, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_743, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_744, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_342 
	 movq $0, %rax 
	 jmp .cmp_343 
.cmp_342: 
	 movq $1, %rax 
.cmp_343: 
	 cmpq $1, %rax 
	 je .eif_304 
	 movq $.str_745, %rax 
	 jmp .eif_305 
.eif_304: 
	 movq $.str_746, %rax 
.eif_305: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_747, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_748, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_749, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $5, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_344 
	 movq $0, %rax 
	 jmp .cmp_345 
.cmp_344: 
	 movq $1, %rax 
.cmp_345: 
	 cmpq $1, %rax 
	 je .eif_306 
	 movq $.str_750, %rax 
	 jmp .eif_307 
.eif_306: 
	 movq $.str_751, %rax 
.eif_307: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_752, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $6, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $5, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_753, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_754, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_346 
	 movq $0, %rax 
	 jmp .cmp_347 
.cmp_346: 
	 movq $1, %rax 
.cmp_347: 
	 cmpq $1, %rax 
	 je .eif_308 
	 movq $.str_755, %rax 
	 jmp .eif_309 
.eif_308: 
	 movq $.str_756, %rax 
.eif_309: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_757, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_758, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_759, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $6, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_348 
	 movq $0, %rax 
	 jmp .cmp_349 
.cmp_348: 
	 movq $1, %rax 
.cmp_349: 
	 cmpq $1, %rax 
	 je .eif_310 
	 movq $.str_760, %rax 
	 jmp .eif_311 
.eif_310: 
	 movq $.str_761, %rax 
.eif_311: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_762, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $7, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $6, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_763, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_764, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_350 
	 movq $0, %rax 
	 jmp .cmp_351 
.cmp_350: 
	 movq $1, %rax 
.cmp_351: 
	 cmpq $1, %rax 
	 je .eif_312 
	 movq $.str_765, %rax 
	 jmp .eif_313 
.eif_312: 
	 movq $.str_766, %rax 
.eif_313: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_767, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_768, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_769, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_352 
	 movq $0, %rax 
	 jmp .cmp_353 
.cmp_352: 
	 movq $1, %rax 
.cmp_353: 
	 cmpq $1, %rax 
	 je .eif_314 
	 movq $.str_770, %rax 
	 jmp .eif_315 
.eif_314: 
	 movq $.str_771, %rax 
.eif_315: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_772, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $8, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_773, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_774, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_354 
	 movq $0, %rax 
	 jmp .cmp_355 
.cmp_354: 
	 movq $1, %rax 
.cmp_355: 
	 cmpq $1, %rax 
	 je .eif_316 
	 movq $.str_775, %rax 
	 jmp .eif_317 
.eif_316: 
	 movq $.str_776, %rax 
.eif_317: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_777, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_778, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_779, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_356 
	 movq $0, %rax 
	 jmp .cmp_357 
.cmp_356: 
	 movq $1, %rax 
.cmp_357: 
	 cmpq $1, %rax 
	 je .eif_318 
	 movq $.str_780, %rax 
	 jmp .eif_319 
.eif_318: 
	 movq $.str_781, %rax 
.eif_319: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_782, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_783, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_784, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_358 
	 movq $0, %rax 
	 jmp .cmp_359 
.cmp_358: 
	 movq $1, %rax 
.cmp_359: 
	 cmpq $1, %rax 
	 je .eif_320 
	 movq $.str_785, %rax 
	 jmp .eif_321 
.eif_320: 
	 movq $.str_786, %rax 
.eif_321: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_787, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_788, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_789, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $9, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_360 
	 movq $0, %rax 
	 jmp .cmp_361 
.cmp_360: 
	 movq $1, %rax 
.cmp_361: 
	 cmpq $1, %rax 
	 je .eif_322 
	 movq $.str_790, %rax 
	 jmp .eif_323 
.eif_322: 
	 movq $.str_791, %rax 
.eif_323: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_792, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $9, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_793, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_794, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $11, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_362 
	 movq $0, %rax 
	 jmp .cmp_363 
.cmp_362: 
	 movq $1, %rax 
.cmp_363: 
	 cmpq $1, %rax 
	 je .eif_324 
	 movq $.str_795, %rax 
	 jmp .eif_325 
.eif_324: 
	 movq $.str_796, %rax 
.eif_325: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_797, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $11, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_798, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_799, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $11, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $10, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_364 
	 movq $0, %rax 
	 jmp .cmp_365 
.cmp_364: 
	 movq $1, %rax 
.cmp_365: 
	 cmpq $1, %rax 
	 je .eif_326 
	 movq $.str_800, %rax 
	 jmp .eif_327 
.eif_326: 
	 movq $.str_801, %rax 
.eif_327: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_802, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $11, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $10, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_803, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_804, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $12, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_366 
	 movq $0, %rax 
	 jmp .cmp_367 
.cmp_366: 
	 movq $1, %rax 
.cmp_367: 
	 cmpq $1, %rax 
	 je .eif_328 
	 movq $.str_805, %rax 
	 jmp .eif_329 
.eif_328: 
	 movq $.str_806, %rax 
.eif_329: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_807, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $12, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_808, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_809, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $12, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $11, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_368 
	 movq $0, %rax 
	 jmp .cmp_369 
.cmp_368: 
	 movq $1, %rax 
.cmp_369: 
	 cmpq $1, %rax 
	 je .eif_330 
	 movq $.str_810, %rax 
	 jmp .eif_331 
.eif_330: 
	 movq $.str_811, %rax 
.eif_331: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_812, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $12, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $11, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_813, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_814, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $13, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_370 
	 movq $0, %rax 
	 jmp .cmp_371 
.cmp_370: 
	 movq $1, %rax 
.cmp_371: 
	 cmpq $1, %rax 
	 je .eif_332 
	 movq $.str_815, %rax 
	 jmp .eif_333 
.eif_332: 
	 movq $.str_816, %rax 
.eif_333: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_817, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $13, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_818, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_819, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $13, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $12, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_372 
	 movq $0, %rax 
	 jmp .cmp_373 
.cmp_372: 
	 movq $1, %rax 
.cmp_373: 
	 cmpq $1, %rax 
	 je .eif_334 
	 movq $.str_820, %rax 
	 jmp .eif_335 
.eif_334: 
	 movq $.str_821, %rax 
.eif_335: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_822, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $13, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $12, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_823, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_824, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $14, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_374 
	 movq $0, %rax 
	 jmp .cmp_375 
.cmp_374: 
	 movq $1, %rax 
.cmp_375: 
	 cmpq $1, %rax 
	 je .eif_336 
	 movq $.str_825, %rax 
	 jmp .eif_337 
.eif_336: 
	 movq $.str_826, %rax 
.eif_337: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_827, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $14, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_828, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_829, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $14, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $13, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_376 
	 movq $0, %rax 
	 jmp .cmp_377 
.cmp_376: 
	 movq $1, %rax 
.cmp_377: 
	 cmpq $1, %rax 
	 je .eif_338 
	 movq $.str_830, %rax 
	 jmp .eif_339 
.eif_338: 
	 movq $.str_831, %rax 
.eif_339: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_832, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $14, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $13, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_833, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_834, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $15, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_378 
	 movq $0, %rax 
	 jmp .cmp_379 
.cmp_378: 
	 movq $1, %rax 
.cmp_379: 
	 cmpq $1, %rax 
	 je .eif_340 
	 movq $.str_835, %rax 
	 jmp .eif_341 
.eif_340: 
	 movq $.str_836, %rax 
.eif_341: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_837, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $15, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_838, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_839, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $15, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $14, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_380 
	 movq $0, %rax 
	 jmp .cmp_381 
.cmp_380: 
	 movq $1, %rax 
.cmp_381: 
	 cmpq $1, %rax 
	 je .eif_342 
	 movq $.str_840, %rax 
	 jmp .eif_343 
.eif_342: 
	 movq $.str_841, %rax 
.eif_343: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_842, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $15, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $14, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_843, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_844, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $16, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_382 
	 movq $0, %rax 
	 jmp .cmp_383 
.cmp_382: 
	 movq $1, %rax 
.cmp_383: 
	 cmpq $1, %rax 
	 je .eif_344 
	 movq $.str_845, %rax 
	 jmp .eif_345 
.eif_344: 
	 movq $.str_846, %rax 
.eif_345: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_847, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $16, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_848, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_849, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $16, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $15, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_384 
	 movq $0, %rax 
	 jmp .cmp_385 
.cmp_384: 
	 movq $1, %rax 
.cmp_385: 
	 cmpq $1, %rax 
	 je .eif_346 
	 movq $.str_850, %rax 
	 jmp .eif_347 
.eif_346: 
	 movq $.str_851, %rax 
.eif_347: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_852, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $16, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $15, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_853, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_854, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $17, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_386 
	 movq $0, %rax 
	 jmp .cmp_387 
.cmp_386: 
	 movq $1, %rax 
.cmp_387: 
	 cmpq $1, %rax 
	 je .eif_348 
	 movq $.str_855, %rax 
	 jmp .eif_349 
.eif_348: 
	 movq $.str_856, %rax 
.eif_349: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_857, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $17, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_858, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_859, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $17, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $16, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_388 
	 movq $0, %rax 
	 jmp .cmp_389 
.cmp_388: 
	 movq $1, %rax 
.cmp_389: 
	 cmpq $1, %rax 
	 je .eif_350 
	 movq $.str_860, %rax 
	 jmp .eif_351 
.eif_350: 
	 movq $.str_861, %rax 
.eif_351: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_862, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $17, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $16, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_863, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_864, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $18, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_390 
	 movq $0, %rax 
	 jmp .cmp_391 
.cmp_390: 
	 movq $1, %rax 
.cmp_391: 
	 cmpq $1, %rax 
	 je .eif_352 
	 movq $.str_865, %rax 
	 jmp .eif_353 
.eif_352: 
	 movq $.str_866, %rax 
.eif_353: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_867, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $18, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_868, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_869, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $18, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $17, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_392 
	 movq $0, %rax 
	 jmp .cmp_393 
.cmp_392: 
	 movq $1, %rax 
.cmp_393: 
	 cmpq $1, %rax 
	 je .eif_354 
	 movq $.str_870, %rax 
	 jmp .eif_355 
.eif_354: 
	 movq $.str_871, %rax 
.eif_355: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_872, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $18, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $17, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_873, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_874, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $19, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_394 
	 movq $0, %rax 
	 jmp .cmp_395 
.cmp_394: 
	 movq $1, %rax 
.cmp_395: 
	 cmpq $1, %rax 
	 je .eif_356 
	 movq $.str_875, %rax 
	 jmp .eif_357 
.eif_356: 
	 movq $.str_876, %rax 
.eif_357: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_877, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $19, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_878, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_879, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $19, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $18, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_396 
	 movq $0, %rax 
	 jmp .cmp_397 
.cmp_396: 
	 movq $1, %rax 
.cmp_397: 
	 cmpq $1, %rax 
	 je .eif_358 
	 movq $.str_880, %rax 
	 jmp .eif_359 
.eif_358: 
	 movq $.str_881, %rax 
.eif_359: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_882, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $19, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $18, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_883, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_884, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $20, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_398 
	 movq $0, %rax 
	 jmp .cmp_399 
.cmp_398: 
	 movq $1, %rax 
.cmp_399: 
	 cmpq $1, %rax 
	 je .eif_360 
	 movq $.str_885, %rax 
	 jmp .eif_361 
.eif_360: 
	 movq $.str_886, %rax 
.eif_361: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_887, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $20, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_888, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_889, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $20, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $19, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_400 
	 movq $0, %rax 
	 jmp .cmp_401 
.cmp_400: 
	 movq $1, %rax 
.cmp_401: 
	 cmpq $1, %rax 
	 je .eif_362 
	 movq $.str_890, %rax 
	 jmp .eif_363 
.eif_362: 
	 movq $.str_891, %rax 
.eif_363: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_892, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $20, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $19, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_893, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_894, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $21, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_402 
	 movq $0, %rax 
	 jmp .cmp_403 
.cmp_402: 
	 movq $1, %rax 
.cmp_403: 
	 cmpq $1, %rax 
	 je .eif_364 
	 movq $.str_895, %rax 
	 jmp .eif_365 
.eif_364: 
	 movq $.str_896, %rax 
.eif_365: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_897, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $21, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_898, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_899, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $21, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $20, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_404 
	 movq $0, %rax 
	 jmp .cmp_405 
.cmp_404: 
	 movq $1, %rax 
.cmp_405: 
	 cmpq $1, %rax 
	 je .eif_366 
	 movq $.str_900, %rax 
	 jmp .eif_367 
.eif_366: 
	 movq $.str_901, %rax 
.eif_367: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_902, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $21, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $20, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_903, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_904, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $22, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_406 
	 movq $0, %rax 
	 jmp .cmp_407 
.cmp_406: 
	 movq $1, %rax 
.cmp_407: 
	 cmpq $1, %rax 
	 je .eif_368 
	 movq $.str_905, %rax 
	 jmp .eif_369 
.eif_368: 
	 movq $.str_906, %rax 
.eif_369: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_907, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $22, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_908, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_909, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $22, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $21, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_408 
	 movq $0, %rax 
	 jmp .cmp_409 
.cmp_408: 
	 movq $1, %rax 
.cmp_409: 
	 cmpq $1, %rax 
	 je .eif_370 
	 movq $.str_910, %rax 
	 jmp .eif_371 
.eif_370: 
	 movq $.str_911, %rax 
.eif_371: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_912, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $22, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $21, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_913, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_914, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_410 
	 movq $0, %rax 
	 jmp .cmp_411 
.cmp_410: 
	 movq $1, %rax 
.cmp_411: 
	 cmpq $1, %rax 
	 je .eif_372 
	 movq $.str_915, %rax 
	 jmp .eif_373 
.eif_372: 
	 movq $.str_916, %rax 
.eif_373: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_917, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_918, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_919, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $22, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_412 
	 movq $0, %rax 
	 jmp .cmp_413 
.cmp_412: 
	 movq $1, %rax 
.cmp_413: 
	 cmpq $1, %rax 
	 je .eif_374 
	 movq $.str_920, %rax 
	 jmp .eif_375 
.eif_374: 
	 movq $.str_921, %rax 
.eif_375: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_922, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $23, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $22, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_923, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_924, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $24, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_414 
	 movq $0, %rax 
	 jmp .cmp_415 
.cmp_414: 
	 movq $1, %rax 
.cmp_415: 
	 cmpq $1, %rax 
	 je .eif_376 
	 movq $.str_925, %rax 
	 jmp .eif_377 
.eif_376: 
	 movq $.str_926, %rax 
.eif_377: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_927, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $24, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_928, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_929, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $24, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $23, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_416 
	 movq $0, %rax 
	 jmp .cmp_417 
.cmp_416: 
	 movq $1, %rax 
.cmp_417: 
	 cmpq $1, %rax 
	 je .eif_378 
	 movq $.str_930, %rax 
	 jmp .eif_379 
.eif_378: 
	 movq $.str_931, %rax 
.eif_379: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_932, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $24, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $23, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_933, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_934, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $25, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_418 
	 movq $0, %rax 
	 jmp .cmp_419 
.cmp_418: 
	 movq $1, %rax 
.cmp_419: 
	 cmpq $1, %rax 
	 je .eif_380 
	 movq $.str_935, %rax 
	 jmp .eif_381 
.eif_380: 
	 movq $.str_936, %rax 
.eif_381: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_937, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $25, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_938, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_939, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $25, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $24, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_420 
	 movq $0, %rax 
	 jmp .cmp_421 
.cmp_420: 
	 movq $1, %rax 
.cmp_421: 
	 cmpq $1, %rax 
	 je .eif_382 
	 movq $.str_940, %rax 
	 jmp .eif_383 
.eif_382: 
	 movq $.str_941, %rax 
.eif_383: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_942, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $25, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $24, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_943, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_944, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $26, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_422 
	 movq $0, %rax 
	 jmp .cmp_423 
.cmp_422: 
	 movq $1, %rax 
.cmp_423: 
	 cmpq $1, %rax 
	 je .eif_384 
	 movq $.str_945, %rax 
	 jmp .eif_385 
.eif_384: 
	 movq $.str_946, %rax 
.eif_385: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_947, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $26, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_948, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_949, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $26, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $25, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_424 
	 movq $0, %rax 
	 jmp .cmp_425 
.cmp_424: 
	 movq $1, %rax 
.cmp_425: 
	 cmpq $1, %rax 
	 je .eif_386 
	 movq $.str_950, %rax 
	 jmp .eif_387 
.eif_386: 
	 movq $.str_951, %rax 
.eif_387: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_952, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $26, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $25, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_953, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_954, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $27, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_426 
	 movq $0, %rax 
	 jmp .cmp_427 
.cmp_426: 
	 movq $1, %rax 
.cmp_427: 
	 cmpq $1, %rax 
	 je .eif_388 
	 movq $.str_955, %rax 
	 jmp .eif_389 
.eif_388: 
	 movq $.str_956, %rax 
.eif_389: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_957, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $27, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_958, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_959, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $27, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $26, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_428 
	 movq $0, %rax 
	 jmp .cmp_429 
.cmp_428: 
	 movq $1, %rax 
.cmp_429: 
	 cmpq $1, %rax 
	 je .eif_390 
	 movq $.str_960, %rax 
	 jmp .eif_391 
.eif_390: 
	 movq $.str_961, %rax 
.eif_391: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_962, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $27, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $26, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_963, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_964, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $28, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_430 
	 movq $0, %rax 
	 jmp .cmp_431 
.cmp_430: 
	 movq $1, %rax 
.cmp_431: 
	 cmpq $1, %rax 
	 je .eif_392 
	 movq $.str_965, %rax 
	 jmp .eif_393 
.eif_392: 
	 movq $.str_966, %rax 
.eif_393: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_967, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $28, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_968, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_969, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $28, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $27, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_432 
	 movq $0, %rax 
	 jmp .cmp_433 
.cmp_432: 
	 movq $1, %rax 
.cmp_433: 
	 cmpq $1, %rax 
	 je .eif_394 
	 movq $.str_970, %rax 
	 jmp .eif_395 
.eif_394: 
	 movq $.str_971, %rax 
.eif_395: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_972, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $28, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $27, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_973, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_974, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $29, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_434 
	 movq $0, %rax 
	 jmp .cmp_435 
.cmp_434: 
	 movq $1, %rax 
.cmp_435: 
	 cmpq $1, %rax 
	 je .eif_396 
	 movq $.str_975, %rax 
	 jmp .eif_397 
.eif_396: 
	 movq $.str_976, %rax 
.eif_397: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_977, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $29, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_978, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_979, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $29, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $28, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_436 
	 movq $0, %rax 
	 jmp .cmp_437 
.cmp_436: 
	 movq $1, %rax 
.cmp_437: 
	 cmpq $1, %rax 
	 je .eif_398 
	 movq $.str_980, %rax 
	 jmp .eif_399 
.eif_398: 
	 movq $.str_981, %rax 
.eif_399: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_982, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $29, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $28, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_983, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_984, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $30, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_438 
	 movq $0, %rax 
	 jmp .cmp_439 
.cmp_438: 
	 movq $1, %rax 
.cmp_439: 
	 cmpq $1, %rax 
	 je .eif_400 
	 movq $.str_985, %rax 
	 jmp .eif_401 
.eif_400: 
	 movq $.str_986, %rax 
.eif_401: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_987, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $30, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_988, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_989, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $30, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $29, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_440 
	 movq $0, %rax 
	 jmp .cmp_441 
.cmp_440: 
	 movq $1, %rax 
.cmp_441: 
	 cmpq $1, %rax 
	 je .eif_402 
	 movq $.str_990, %rax 
	 jmp .eif_403 
.eif_402: 
	 movq $.str_991, %rax 
.eif_403: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_992, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $30, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $29, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_993, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_994, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $31, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_442 
	 movq $0, %rax 
	 jmp .cmp_443 
.cmp_442: 
	 movq $1, %rax 
.cmp_443: 
	 cmpq $1, %rax 
	 je .eif_404 
	 movq $.str_995, %rax 
	 jmp .eif_405 
.eif_404: 
	 movq $.str_996, %rax 
.eif_405: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_997, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $31, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_998, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_999, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $31, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $30, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_444 
	 movq $0, %rax 
	 jmp .cmp_445 
.cmp_444: 
	 movq $1, %rax 
.cmp_445: 
	 cmpq $1, %rax 
	 je .eif_406 
	 movq $.str_1000, %rax 
	 jmp .eif_407 
.eif_406: 
	 movq $.str_1001, %rax 
.eif_407: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1002, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $31, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $30, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1003, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1004, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $32, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_446 
	 movq $0, %rax 
	 jmp .cmp_447 
.cmp_446: 
	 movq $1, %rax 
.cmp_447: 
	 cmpq $1, %rax 
	 je .eif_408 
	 movq $.str_1005, %rax 
	 jmp .eif_409 
.eif_408: 
	 movq $.str_1006, %rax 
.eif_409: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1007, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $32, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1008, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1009, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $32, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $31, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_448 
	 movq $0, %rax 
	 jmp .cmp_449 
.cmp_448: 
	 movq $1, %rax 
.cmp_449: 
	 cmpq $1, %rax 
	 je .eif_410 
	 movq $.str_1010, %rax 
	 jmp .eif_411 
.eif_410: 
	 movq $.str_1011, %rax 
.eif_411: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1012, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $32, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $31, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1013, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1014, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $33, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_450 
	 movq $0, %rax 
	 jmp .cmp_451 
.cmp_450: 
	 movq $1, %rax 
.cmp_451: 
	 cmpq $1, %rax 
	 je .eif_412 
	 movq $.str_1015, %rax 
	 jmp .eif_413 
.eif_412: 
	 movq $.str_1016, %rax 
.eif_413: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1017, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $33, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1018, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1019, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $33, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $32, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_452 
	 movq $0, %rax 
	 jmp .cmp_453 
.cmp_452: 
	 movq $1, %rax 
.cmp_453: 
	 cmpq $1, %rax 
	 je .eif_414 
	 movq $.str_1020, %rax 
	 jmp .eif_415 
.eif_414: 
	 movq $.str_1021, %rax 
.eif_415: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1022, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $33, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $32, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1023, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1024, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $34, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_454 
	 movq $0, %rax 
	 jmp .cmp_455 
.cmp_454: 
	 movq $1, %rax 
.cmp_455: 
	 cmpq $1, %rax 
	 je .eif_416 
	 movq $.str_1025, %rax 
	 jmp .eif_417 
.eif_416: 
	 movq $.str_1026, %rax 
.eif_417: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1027, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $34, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1028, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1029, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $34, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $33, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_456 
	 movq $0, %rax 
	 jmp .cmp_457 
.cmp_456: 
	 movq $1, %rax 
.cmp_457: 
	 cmpq $1, %rax 
	 je .eif_418 
	 movq $.str_1030, %rax 
	 jmp .eif_419 
.eif_418: 
	 movq $.str_1031, %rax 
.eif_419: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1032, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $34, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $33, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1033, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1034, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $35, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_458 
	 movq $0, %rax 
	 jmp .cmp_459 
.cmp_458: 
	 movq $1, %rax 
.cmp_459: 
	 cmpq $1, %rax 
	 je .eif_420 
	 movq $.str_1035, %rax 
	 jmp .eif_421 
.eif_420: 
	 movq $.str_1036, %rax 
.eif_421: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1037, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $35, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1038, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1039, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $35, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $34, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_460 
	 movq $0, %rax 
	 jmp .cmp_461 
.cmp_460: 
	 movq $1, %rax 
.cmp_461: 
	 cmpq $1, %rax 
	 je .eif_422 
	 movq $.str_1040, %rax 
	 jmp .eif_423 
.eif_422: 
	 movq $.str_1041, %rax 
.eif_423: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1042, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $35, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $34, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1043, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1044, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $36, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_462 
	 movq $0, %rax 
	 jmp .cmp_463 
.cmp_462: 
	 movq $1, %rax 
.cmp_463: 
	 cmpq $1, %rax 
	 je .eif_424 
	 movq $.str_1045, %rax 
	 jmp .eif_425 
.eif_424: 
	 movq $.str_1046, %rax 
.eif_425: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1047, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $36, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1048, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1049, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $36, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $35, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_464 
	 movq $0, %rax 
	 jmp .cmp_465 
.cmp_464: 
	 movq $1, %rax 
.cmp_465: 
	 cmpq $1, %rax 
	 je .eif_426 
	 movq $.str_1050, %rax 
	 jmp .eif_427 
.eif_426: 
	 movq $.str_1051, %rax 
.eif_427: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1052, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $36, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $35, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1053, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1054, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $37, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_466 
	 movq $0, %rax 
	 jmp .cmp_467 
.cmp_466: 
	 movq $1, %rax 
.cmp_467: 
	 cmpq $1, %rax 
	 je .eif_428 
	 movq $.str_1055, %rax 
	 jmp .eif_429 
.eif_428: 
	 movq $.str_1056, %rax 
.eif_429: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1057, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $37, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1058, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1059, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $37, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $36, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_468 
	 movq $0, %rax 
	 jmp .cmp_469 
.cmp_468: 
	 movq $1, %rax 
.cmp_469: 
	 cmpq $1, %rax 
	 je .eif_430 
	 movq $.str_1060, %rax 
	 jmp .eif_431 
.eif_430: 
	 movq $.str_1061, %rax 
.eif_431: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1062, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $37, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $36, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1063, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1064, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $38, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_470 
	 movq $0, %rax 
	 jmp .cmp_471 
.cmp_470: 
	 movq $1, %rax 
.cmp_471: 
	 cmpq $1, %rax 
	 je .eif_432 
	 movq $.str_1065, %rax 
	 jmp .eif_433 
.eif_432: 
	 movq $.str_1066, %rax 
.eif_433: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1067, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $38, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1068, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1069, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $38, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $37, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_472 
	 movq $0, %rax 
	 jmp .cmp_473 
.cmp_472: 
	 movq $1, %rax 
.cmp_473: 
	 cmpq $1, %rax 
	 je .eif_434 
	 movq $.str_1070, %rax 
	 jmp .eif_435 
.eif_434: 
	 movq $.str_1071, %rax 
.eif_435: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1072, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $38, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $37, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1073, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1074, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $39, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_474 
	 movq $0, %rax 
	 jmp .cmp_475 
.cmp_474: 
	 movq $1, %rax 
.cmp_475: 
	 cmpq $1, %rax 
	 je .eif_436 
	 movq $.str_1075, %rax 
	 jmp .eif_437 
.eif_436: 
	 movq $.str_1076, %rax 
.eif_437: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1077, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $39, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1078, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1079, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $39, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $38, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_476 
	 movq $0, %rax 
	 jmp .cmp_477 
.cmp_476: 
	 movq $1, %rax 
.cmp_477: 
	 cmpq $1, %rax 
	 je .eif_438 
	 movq $.str_1080, %rax 
	 jmp .eif_439 
.eif_438: 
	 movq $.str_1081, %rax 
.eif_439: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1082, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $39, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $38, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1083, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1084, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $40, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_478 
	 movq $0, %rax 
	 jmp .cmp_479 
.cmp_478: 
	 movq $1, %rax 
.cmp_479: 
	 cmpq $1, %rax 
	 je .eif_440 
	 movq $.str_1085, %rax 
	 jmp .eif_441 
.eif_440: 
	 movq $.str_1086, %rax 
.eif_441: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1087, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $40, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1088, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1089, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $40, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $39, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_480 
	 movq $0, %rax 
	 jmp .cmp_481 
.cmp_480: 
	 movq $1, %rax 
.cmp_481: 
	 cmpq $1, %rax 
	 je .eif_442 
	 movq $.str_1090, %rax 
	 jmp .eif_443 
.eif_442: 
	 movq $.str_1091, %rax 
.eif_443: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1092, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $40, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $39, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1093, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1094, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $41, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_482 
	 movq $0, %rax 
	 jmp .cmp_483 
.cmp_482: 
	 movq $1, %rax 
.cmp_483: 
	 cmpq $1, %rax 
	 je .eif_444 
	 movq $.str_1095, %rax 
	 jmp .eif_445 
.eif_444: 
	 movq $.str_1096, %rax 
.eif_445: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1097, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $41, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1098, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1099, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $41, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $40, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_484 
	 movq $0, %rax 
	 jmp .cmp_485 
.cmp_484: 
	 movq $1, %rax 
.cmp_485: 
	 cmpq $1, %rax 
	 je .eif_446 
	 movq $.str_1100, %rax 
	 jmp .eif_447 
.eif_446: 
	 movq $.str_1101, %rax 
.eif_447: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1102, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $41, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $40, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1103, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1104, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $42, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_486 
	 movq $0, %rax 
	 jmp .cmp_487 
.cmp_486: 
	 movq $1, %rax 
.cmp_487: 
	 cmpq $1, %rax 
	 je .eif_448 
	 movq $.str_1105, %rax 
	 jmp .eif_449 
.eif_448: 
	 movq $.str_1106, %rax 
.eif_449: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1107, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $42, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1108, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1109, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $42, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $41, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_488 
	 movq $0, %rax 
	 jmp .cmp_489 
.cmp_488: 
	 movq $1, %rax 
.cmp_489: 
	 cmpq $1, %rax 
	 je .eif_450 
	 movq $.str_1110, %rax 
	 jmp .eif_451 
.eif_450: 
	 movq $.str_1111, %rax 
.eif_451: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1112, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $42, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $41, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1113, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1114, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $43, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_490 
	 movq $0, %rax 
	 jmp .cmp_491 
.cmp_490: 
	 movq $1, %rax 
.cmp_491: 
	 cmpq $1, %rax 
	 je .eif_452 
	 movq $.str_1115, %rax 
	 jmp .eif_453 
.eif_452: 
	 movq $.str_1116, %rax 
.eif_453: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1117, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $43, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1118, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1119, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $43, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $42, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_492 
	 movq $0, %rax 
	 jmp .cmp_493 
.cmp_492: 
	 movq $1, %rax 
.cmp_493: 
	 cmpq $1, %rax 
	 je .eif_454 
	 movq $.str_1120, %rax 
	 jmp .eif_455 
.eif_454: 
	 movq $.str_1121, %rax 
.eif_455: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1122, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $43, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $42, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1123, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1124, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $44, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_494 
	 movq $0, %rax 
	 jmp .cmp_495 
.cmp_494: 
	 movq $1, %rax 
.cmp_495: 
	 cmpq $1, %rax 
	 je .eif_456 
	 movq $.str_1125, %rax 
	 jmp .eif_457 
.eif_456: 
	 movq $.str_1126, %rax 
.eif_457: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1127, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $44, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1128, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1129, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $44, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $43, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_496 
	 movq $0, %rax 
	 jmp .cmp_497 
.cmp_496: 
	 movq $1, %rax 
.cmp_497: 
	 cmpq $1, %rax 
	 je .eif_458 
	 movq $.str_1130, %rax 
	 jmp .eif_459 
.eif_458: 
	 movq $.str_1131, %rax 
.eif_459: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1132, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $44, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $43, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1133, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1134, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $45, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_498 
	 movq $0, %rax 
	 jmp .cmp_499 
.cmp_498: 
	 movq $1, %rax 
.cmp_499: 
	 cmpq $1, %rax 
	 je .eif_460 
	 movq $.str_1135, %rax 
	 jmp .eif_461 
.eif_460: 
	 movq $.str_1136, %rax 
.eif_461: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1137, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $45, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1138, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1139, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $45, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $44, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_500 
	 movq $0, %rax 
	 jmp .cmp_501 
.cmp_500: 
	 movq $1, %rax 
.cmp_501: 
	 cmpq $1, %rax 
	 je .eif_462 
	 movq $.str_1140, %rax 
	 jmp .eif_463 
.eif_462: 
	 movq $.str_1141, %rax 
.eif_463: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1142, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $45, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $44, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1143, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1144, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $46, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_502 
	 movq $0, %rax 
	 jmp .cmp_503 
.cmp_502: 
	 movq $1, %rax 
.cmp_503: 
	 cmpq $1, %rax 
	 je .eif_464 
	 movq $.str_1145, %rax 
	 jmp .eif_465 
.eif_464: 
	 movq $.str_1146, %rax 
.eif_465: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1147, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $46, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1148, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1149, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $46, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $45, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_504 
	 movq $0, %rax 
	 jmp .cmp_505 
.cmp_504: 
	 movq $1, %rax 
.cmp_505: 
	 cmpq $1, %rax 
	 je .eif_466 
	 movq $.str_1150, %rax 
	 jmp .eif_467 
.eif_466: 
	 movq $.str_1151, %rax 
.eif_467: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1152, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $46, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $45, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1153, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1154, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $47, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_506 
	 movq $0, %rax 
	 jmp .cmp_507 
.cmp_506: 
	 movq $1, %rax 
.cmp_507: 
	 cmpq $1, %rax 
	 je .eif_468 
	 movq $.str_1155, %rax 
	 jmp .eif_469 
.eif_468: 
	 movq $.str_1156, %rax 
.eif_469: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1157, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $47, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1158, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1159, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $47, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $46, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_508 
	 movq $0, %rax 
	 jmp .cmp_509 
.cmp_508: 
	 movq $1, %rax 
.cmp_509: 
	 cmpq $1, %rax 
	 je .eif_470 
	 movq $.str_1160, %rax 
	 jmp .eif_471 
.eif_470: 
	 movq $.str_1161, %rax 
.eif_471: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1162, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $47, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $46, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1163, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1164, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $48, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_510 
	 movq $0, %rax 
	 jmp .cmp_511 
.cmp_510: 
	 movq $1, %rax 
.cmp_511: 
	 cmpq $1, %rax 
	 je .eif_472 
	 movq $.str_1165, %rax 
	 jmp .eif_473 
.eif_472: 
	 movq $.str_1166, %rax 
.eif_473: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1167, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $48, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1168, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1169, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $48, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $47, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_512 
	 movq $0, %rax 
	 jmp .cmp_513 
.cmp_512: 
	 movq $1, %rax 
.cmp_513: 
	 cmpq $1, %rax 
	 je .eif_474 
	 movq $.str_1170, %rax 
	 jmp .eif_475 
.eif_474: 
	 movq $.str_1171, %rax 
.eif_475: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1172, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $48, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $47, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1173, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1174, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $49, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_514 
	 movq $0, %rax 
	 jmp .cmp_515 
.cmp_514: 
	 movq $1, %rax 
.cmp_515: 
	 cmpq $1, %rax 
	 je .eif_476 
	 movq $.str_1175, %rax 
	 jmp .eif_477 
.eif_476: 
	 movq $.str_1176, %rax 
.eif_477: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1177, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $49, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1178, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1179, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $49, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $48, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_516 
	 movq $0, %rax 
	 jmp .cmp_517 
.cmp_516: 
	 movq $1, %rax 
.cmp_517: 
	 cmpq $1, %rax 
	 je .eif_478 
	 movq $.str_1180, %rax 
	 jmp .eif_479 
.eif_478: 
	 movq $.str_1181, %rax 
.eif_479: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1182, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $49, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $48, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1183, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1184, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $50, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_518 
	 movq $0, %rax 
	 jmp .cmp_519 
.cmp_518: 
	 movq $1, %rax 
.cmp_519: 
	 cmpq $1, %rax 
	 je .eif_480 
	 movq $.str_1185, %rax 
	 jmp .eif_481 
.eif_480: 
	 movq $.str_1186, %rax 
.eif_481: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1187, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $50, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1188, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1189, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $50, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $49, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_520 
	 movq $0, %rax 
	 jmp .cmp_521 
.cmp_520: 
	 movq $1, %rax 
.cmp_521: 
	 cmpq $1, %rax 
	 je .eif_482 
	 movq $.str_1190, %rax 
	 jmp .eif_483 
.eif_482: 
	 movq $.str_1191, %rax 
.eif_483: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1192, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $50, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $49, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1193, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1194, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_522 
	 movq $0, %rax 
	 jmp .cmp_523 
.cmp_522: 
	 movq $1, %rax 
.cmp_523: 
	 cmpq $1, %rax 
	 je .eif_484 
	 movq $.str_1195, %rax 
	 jmp .eif_485 
.eif_484: 
	 movq $.str_1196, %rax 
.eif_485: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1197, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1198, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1199, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $50, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_524 
	 movq $0, %rax 
	 jmp .cmp_525 
.cmp_524: 
	 movq $1, %rax 
.cmp_525: 
	 cmpq $1, %rax 
	 je .eif_486 
	 movq $.str_1200, %rax 
	 jmp .eif_487 
.eif_486: 
	 movq $.str_1201, %rax 
.eif_487: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1202, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $51, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $50, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1203, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1204, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $52, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_526 
	 movq $0, %rax 
	 jmp .cmp_527 
.cmp_526: 
	 movq $1, %rax 
.cmp_527: 
	 cmpq $1, %rax 
	 je .eif_488 
	 movq $.str_1205, %rax 
	 jmp .eif_489 
.eif_488: 
	 movq $.str_1206, %rax 
.eif_489: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1207, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $52, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1208, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1209, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $52, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $51, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_528 
	 movq $0, %rax 
	 jmp .cmp_529 
.cmp_528: 
	 movq $1, %rax 
.cmp_529: 
	 cmpq $1, %rax 
	 je .eif_490 
	 movq $.str_1210, %rax 
	 jmp .eif_491 
.eif_490: 
	 movq $.str_1211, %rax 
.eif_491: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1212, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $52, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $51, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1213, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1214, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $53, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_530 
	 movq $0, %rax 
	 jmp .cmp_531 
.cmp_530: 
	 movq $1, %rax 
.cmp_531: 
	 cmpq $1, %rax 
	 je .eif_492 
	 movq $.str_1215, %rax 
	 jmp .eif_493 
.eif_492: 
	 movq $.str_1216, %rax 
.eif_493: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1217, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $53, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1218, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1219, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $53, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $52, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_532 
	 movq $0, %rax 
	 jmp .cmp_533 
.cmp_532: 
	 movq $1, %rax 
.cmp_533: 
	 cmpq $1, %rax 
	 je .eif_494 
	 movq $.str_1220, %rax 
	 jmp .eif_495 
.eif_494: 
	 movq $.str_1221, %rax 
.eif_495: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1222, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $53, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $52, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1223, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1224, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $54, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_534 
	 movq $0, %rax 
	 jmp .cmp_535 
.cmp_534: 
	 movq $1, %rax 
.cmp_535: 
	 cmpq $1, %rax 
	 je .eif_496 
	 movq $.str_1225, %rax 
	 jmp .eif_497 
.eif_496: 
	 movq $.str_1226, %rax 
.eif_497: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1227, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $54, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1228, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1229, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $54, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $53, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_536 
	 movq $0, %rax 
	 jmp .cmp_537 
.cmp_536: 
	 movq $1, %rax 
.cmp_537: 
	 cmpq $1, %rax 
	 je .eif_498 
	 movq $.str_1230, %rax 
	 jmp .eif_499 
.eif_498: 
	 movq $.str_1231, %rax 
.eif_499: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1232, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $54, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $53, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1233, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1234, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $55, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_538 
	 movq $0, %rax 
	 jmp .cmp_539 
.cmp_538: 
	 movq $1, %rax 
.cmp_539: 
	 cmpq $1, %rax 
	 je .eif_500 
	 movq $.str_1235, %rax 
	 jmp .eif_501 
.eif_500: 
	 movq $.str_1236, %rax 
.eif_501: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1237, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $55, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1238, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1239, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $55, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $54, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_540 
	 movq $0, %rax 
	 jmp .cmp_541 
.cmp_540: 
	 movq $1, %rax 
.cmp_541: 
	 cmpq $1, %rax 
	 je .eif_502 
	 movq $.str_1240, %rax 
	 jmp .eif_503 
.eif_502: 
	 movq $.str_1241, %rax 
.eif_503: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1242, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $55, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $54, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1243, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1244, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_542 
	 movq $0, %rax 
	 jmp .cmp_543 
.cmp_542: 
	 movq $1, %rax 
.cmp_543: 
	 cmpq $1, %rax 
	 je .eif_504 
	 movq $.str_1245, %rax 
	 jmp .eif_505 
.eif_504: 
	 movq $.str_1246, %rax 
.eif_505: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1247, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1248, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1249, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $55, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_544 
	 movq $0, %rax 
	 jmp .cmp_545 
.cmp_544: 
	 movq $1, %rax 
.cmp_545: 
	 cmpq $1, %rax 
	 je .eif_506 
	 movq $.str_1250, %rax 
	 jmp .eif_507 
.eif_506: 
	 movq $.str_1251, %rax 
.eif_507: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1252, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $56, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $55, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1253, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1254, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $57, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_546 
	 movq $0, %rax 
	 jmp .cmp_547 
.cmp_546: 
	 movq $1, %rax 
.cmp_547: 
	 cmpq $1, %rax 
	 je .eif_508 
	 movq $.str_1255, %rax 
	 jmp .eif_509 
.eif_508: 
	 movq $.str_1256, %rax 
.eif_509: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1257, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $57, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1258, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1259, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $57, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $56, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_548 
	 movq $0, %rax 
	 jmp .cmp_549 
.cmp_548: 
	 movq $1, %rax 
.cmp_549: 
	 cmpq $1, %rax 
	 je .eif_510 
	 movq $.str_1260, %rax 
	 jmp .eif_511 
.eif_510: 
	 movq $.str_1261, %rax 
.eif_511: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1262, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $57, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $56, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1263, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1264, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $58, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_550 
	 movq $0, %rax 
	 jmp .cmp_551 
.cmp_550: 
	 movq $1, %rax 
.cmp_551: 
	 cmpq $1, %rax 
	 je .eif_512 
	 movq $.str_1265, %rax 
	 jmp .eif_513 
.eif_512: 
	 movq $.str_1266, %rax 
.eif_513: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1267, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $58, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1268, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1269, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $58, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $57, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_552 
	 movq $0, %rax 
	 jmp .cmp_553 
.cmp_552: 
	 movq $1, %rax 
.cmp_553: 
	 cmpq $1, %rax 
	 je .eif_514 
	 movq $.str_1270, %rax 
	 jmp .eif_515 
.eif_514: 
	 movq $.str_1271, %rax 
.eif_515: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1272, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $58, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $57, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1273, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1274, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $59, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_554 
	 movq $0, %rax 
	 jmp .cmp_555 
.cmp_554: 
	 movq $1, %rax 
.cmp_555: 
	 cmpq $1, %rax 
	 je .eif_516 
	 movq $.str_1275, %rax 
	 jmp .eif_517 
.eif_516: 
	 movq $.str_1276, %rax 
.eif_517: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1277, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $59, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1278, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1279, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $59, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $58, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_556 
	 movq $0, %rax 
	 jmp .cmp_557 
.cmp_556: 
	 movq $1, %rax 
.cmp_557: 
	 cmpq $1, %rax 
	 je .eif_518 
	 movq $.str_1280, %rax 
	 jmp .eif_519 
.eif_518: 
	 movq $.str_1281, %rax 
.eif_519: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1282, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $59, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $58, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1283, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1284, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $60, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_558 
	 movq $0, %rax 
	 jmp .cmp_559 
.cmp_558: 
	 movq $1, %rax 
.cmp_559: 
	 cmpq $1, %rax 
	 je .eif_520 
	 movq $.str_1285, %rax 
	 jmp .eif_521 
.eif_520: 
	 movq $.str_1286, %rax 
.eif_521: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1287, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $60, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1288, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1289, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $60, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $59, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_560 
	 movq $0, %rax 
	 jmp .cmp_561 
.cmp_560: 
	 movq $1, %rax 
.cmp_561: 
	 cmpq $1, %rax 
	 je .eif_522 
	 movq $.str_1290, %rax 
	 jmp .eif_523 
.eif_522: 
	 movq $.str_1291, %rax 
.eif_523: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1292, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $60, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $59, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1293, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1294, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $61, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_562 
	 movq $0, %rax 
	 jmp .cmp_563 
.cmp_562: 
	 movq $1, %rax 
.cmp_563: 
	 cmpq $1, %rax 
	 je .eif_524 
	 movq $.str_1295, %rax 
	 jmp .eif_525 
.eif_524: 
	 movq $.str_1296, %rax 
.eif_525: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1297, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $61, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1298, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1299, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $61, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $60, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_564 
	 movq $0, %rax 
	 jmp .cmp_565 
.cmp_564: 
	 movq $1, %rax 
.cmp_565: 
	 cmpq $1, %rax 
	 je .eif_526 
	 movq $.str_1300, %rax 
	 jmp .eif_527 
.eif_526: 
	 movq $.str_1301, %rax 
.eif_527: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1302, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $61, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $60, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1303, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1304, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $62, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_566 
	 movq $0, %rax 
	 jmp .cmp_567 
.cmp_566: 
	 movq $1, %rax 
.cmp_567: 
	 cmpq $1, %rax 
	 je .eif_528 
	 movq $.str_1305, %rax 
	 jmp .eif_529 
.eif_528: 
	 movq $.str_1306, %rax 
.eif_529: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1307, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $62, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1308, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1309, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $62, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $61, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_568 
	 movq $0, %rax 
	 jmp .cmp_569 
.cmp_568: 
	 movq $1, %rax 
.cmp_569: 
	 cmpq $1, %rax 
	 je .eif_530 
	 movq $.str_1310, %rax 
	 jmp .eif_531 
.eif_530: 
	 movq $.str_1311, %rax 
.eif_531: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1312, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $62, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $61, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1313, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1314, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $63, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_570 
	 movq $0, %rax 
	 jmp .cmp_571 
.cmp_570: 
	 movq $1, %rax 
.cmp_571: 
	 cmpq $1, %rax 
	 je .eif_532 
	 movq $.str_1315, %rax 
	 jmp .eif_533 
.eif_532: 
	 movq $.str_1316, %rax 
.eif_533: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1317, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $63, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1318, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1319, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $63, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $62, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_572 
	 movq $0, %rax 
	 jmp .cmp_573 
.cmp_572: 
	 movq $1, %rax 
.cmp_573: 
	 cmpq $1, %rax 
	 je .eif_534 
	 movq $.str_1320, %rax 
	 jmp .eif_535 
.eif_534: 
	 movq $.str_1321, %rax 
.eif_535: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1322, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $63, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $62, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1323, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1324, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $64, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_574 
	 movq $0, %rax 
	 jmp .cmp_575 
.cmp_574: 
	 movq $1, %rax 
.cmp_575: 
	 cmpq $1, %rax 
	 je .eif_536 
	 movq $.str_1325, %rax 
	 jmp .eif_537 
.eif_536: 
	 movq $.str_1326, %rax 
.eif_537: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1327, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $64, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1328, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1329, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $64, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $63, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_576 
	 movq $0, %rax 
	 jmp .cmp_577 
.cmp_576: 
	 movq $1, %rax 
.cmp_577: 
	 cmpq $1, %rax 
	 je .eif_538 
	 movq $.str_1330, %rax 
	 jmp .eif_539 
.eif_538: 
	 movq $.str_1331, %rax 
.eif_539: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1332, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $64, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $63, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1333, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1334, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $65, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_578 
	 movq $0, %rax 
	 jmp .cmp_579 
.cmp_578: 
	 movq $1, %rax 
.cmp_579: 
	 cmpq $1, %rax 
	 je .eif_540 
	 movq $.str_1335, %rax 
	 jmp .eif_541 
.eif_540: 
	 movq $.str_1336, %rax 
.eif_541: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1337, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $65, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1338, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1339, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $65, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $64, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_580 
	 movq $0, %rax 
	 jmp .cmp_581 
.cmp_580: 
	 movq $1, %rax 
.cmp_581: 
	 cmpq $1, %rax 
	 je .eif_542 
	 movq $.str_1340, %rax 
	 jmp .eif_543 
.eif_542: 
	 movq $.str_1341, %rax 
.eif_543: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1342, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $65, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $64, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1343, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1344, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $66, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_582 
	 movq $0, %rax 
	 jmp .cmp_583 
.cmp_582: 
	 movq $1, %rax 
.cmp_583: 
	 cmpq $1, %rax 
	 je .eif_544 
	 movq $.str_1345, %rax 
	 jmp .eif_545 
.eif_544: 
	 movq $.str_1346, %rax 
.eif_545: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1347, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $66, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1348, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1349, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $66, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $65, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_584 
	 movq $0, %rax 
	 jmp .cmp_585 
.cmp_584: 
	 movq $1, %rax 
.cmp_585: 
	 cmpq $1, %rax 
	 je .eif_546 
	 movq $.str_1350, %rax 
	 jmp .eif_547 
.eif_546: 
	 movq $.str_1351, %rax 
.eif_547: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1352, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $66, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $65, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1353, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1354, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $67, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_586 
	 movq $0, %rax 
	 jmp .cmp_587 
.cmp_586: 
	 movq $1, %rax 
.cmp_587: 
	 cmpq $1, %rax 
	 je .eif_548 
	 movq $.str_1355, %rax 
	 jmp .eif_549 
.eif_548: 
	 movq $.str_1356, %rax 
.eif_549: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1357, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $67, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1358, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1359, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $67, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $66, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_588 
	 movq $0, %rax 
	 jmp .cmp_589 
.cmp_588: 
	 movq $1, %rax 
.cmp_589: 
	 cmpq $1, %rax 
	 je .eif_550 
	 movq $.str_1360, %rax 
	 jmp .eif_551 
.eif_550: 
	 movq $.str_1361, %rax 
.eif_551: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1362, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $67, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $66, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1363, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1364, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $68, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_590 
	 movq $0, %rax 
	 jmp .cmp_591 
.cmp_590: 
	 movq $1, %rax 
.cmp_591: 
	 cmpq $1, %rax 
	 je .eif_552 
	 movq $.str_1365, %rax 
	 jmp .eif_553 
.eif_552: 
	 movq $.str_1366, %rax 
.eif_553: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1367, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $68, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1368, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1369, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $68, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $67, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_592 
	 movq $0, %rax 
	 jmp .cmp_593 
.cmp_592: 
	 movq $1, %rax 
.cmp_593: 
	 cmpq $1, %rax 
	 je .eif_554 
	 movq $.str_1370, %rax 
	 jmp .eif_555 
.eif_554: 
	 movq $.str_1371, %rax 
.eif_555: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1372, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $68, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $67, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1373, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1374, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $69, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_594 
	 movq $0, %rax 
	 jmp .cmp_595 
.cmp_594: 
	 movq $1, %rax 
.cmp_595: 
	 cmpq $1, %rax 
	 je .eif_556 
	 movq $.str_1375, %rax 
	 jmp .eif_557 
.eif_556: 
	 movq $.str_1376, %rax 
.eif_557: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1377, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $69, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1378, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1379, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $69, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $68, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_596 
	 movq $0, %rax 
	 jmp .cmp_597 
.cmp_596: 
	 movq $1, %rax 
.cmp_597: 
	 cmpq $1, %rax 
	 je .eif_558 
	 movq $.str_1380, %rax 
	 jmp .eif_559 
.eif_558: 
	 movq $.str_1381, %rax 
.eif_559: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1382, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $69, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $68, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1383, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1384, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $70, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_598 
	 movq $0, %rax 
	 jmp .cmp_599 
.cmp_598: 
	 movq $1, %rax 
.cmp_599: 
	 cmpq $1, %rax 
	 je .eif_560 
	 movq $.str_1385, %rax 
	 jmp .eif_561 
.eif_560: 
	 movq $.str_1386, %rax 
.eif_561: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1387, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $70, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1388, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1389, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $70, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $69, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_600 
	 movq $0, %rax 
	 jmp .cmp_601 
.cmp_600: 
	 movq $1, %rax 
.cmp_601: 
	 cmpq $1, %rax 
	 je .eif_562 
	 movq $.str_1390, %rax 
	 jmp .eif_563 
.eif_562: 
	 movq $.str_1391, %rax 
.eif_563: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1392, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $70, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $69, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1393, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1394, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $71, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_602 
	 movq $0, %rax 
	 jmp .cmp_603 
.cmp_602: 
	 movq $1, %rax 
.cmp_603: 
	 cmpq $1, %rax 
	 je .eif_564 
	 movq $.str_1395, %rax 
	 jmp .eif_565 
.eif_564: 
	 movq $.str_1396, %rax 
.eif_565: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1397, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $71, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1398, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1399, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $71, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $70, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_604 
	 movq $0, %rax 
	 jmp .cmp_605 
.cmp_604: 
	 movq $1, %rax 
.cmp_605: 
	 cmpq $1, %rax 
	 je .eif_566 
	 movq $.str_1400, %rax 
	 jmp .eif_567 
.eif_566: 
	 movq $.str_1401, %rax 
.eif_567: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1402, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $71, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $70, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1403, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1404, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $72, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_606 
	 movq $0, %rax 
	 jmp .cmp_607 
.cmp_606: 
	 movq $1, %rax 
.cmp_607: 
	 cmpq $1, %rax 
	 je .eif_568 
	 movq $.str_1405, %rax 
	 jmp .eif_569 
.eif_568: 
	 movq $.str_1406, %rax 
.eif_569: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1407, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $72, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1408, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1409, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $72, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $71, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_608 
	 movq $0, %rax 
	 jmp .cmp_609 
.cmp_608: 
	 movq $1, %rax 
.cmp_609: 
	 cmpq $1, %rax 
	 je .eif_570 
	 movq $.str_1410, %rax 
	 jmp .eif_571 
.eif_570: 
	 movq $.str_1411, %rax 
.eif_571: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1412, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $72, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $71, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1413, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1414, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $73, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_610 
	 movq $0, %rax 
	 jmp .cmp_611 
.cmp_610: 
	 movq $1, %rax 
.cmp_611: 
	 cmpq $1, %rax 
	 je .eif_572 
	 movq $.str_1415, %rax 
	 jmp .eif_573 
.eif_572: 
	 movq $.str_1416, %rax 
.eif_573: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1417, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $73, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1418, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1419, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $73, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $72, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_612 
	 movq $0, %rax 
	 jmp .cmp_613 
.cmp_612: 
	 movq $1, %rax 
.cmp_613: 
	 cmpq $1, %rax 
	 je .eif_574 
	 movq $.str_1420, %rax 
	 jmp .eif_575 
.eif_574: 
	 movq $.str_1421, %rax 
.eif_575: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1422, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $73, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $72, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1423, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1424, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $74, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_614 
	 movq $0, %rax 
	 jmp .cmp_615 
.cmp_614: 
	 movq $1, %rax 
.cmp_615: 
	 cmpq $1, %rax 
	 je .eif_576 
	 movq $.str_1425, %rax 
	 jmp .eif_577 
.eif_576: 
	 movq $.str_1426, %rax 
.eif_577: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1427, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $74, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1428, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1429, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $74, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $73, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_616 
	 movq $0, %rax 
	 jmp .cmp_617 
.cmp_616: 
	 movq $1, %rax 
.cmp_617: 
	 cmpq $1, %rax 
	 je .eif_578 
	 movq $.str_1430, %rax 
	 jmp .eif_579 
.eif_578: 
	 movq $.str_1431, %rax 
.eif_579: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1432, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $74, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $73, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1433, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1434, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $75, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_618 
	 movq $0, %rax 
	 jmp .cmp_619 
.cmp_618: 
	 movq $1, %rax 
.cmp_619: 
	 cmpq $1, %rax 
	 je .eif_580 
	 movq $.str_1435, %rax 
	 jmp .eif_581 
.eif_580: 
	 movq $.str_1436, %rax 
.eif_581: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1437, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $75, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1438, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1439, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $75, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $74, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_620 
	 movq $0, %rax 
	 jmp .cmp_621 
.cmp_620: 
	 movq $1, %rax 
.cmp_621: 
	 cmpq $1, %rax 
	 je .eif_582 
	 movq $.str_1440, %rax 
	 jmp .eif_583 
.eif_582: 
	 movq $.str_1441, %rax 
.eif_583: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1442, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $75, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $74, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1443, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1444, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $76, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_622 
	 movq $0, %rax 
	 jmp .cmp_623 
.cmp_622: 
	 movq $1, %rax 
.cmp_623: 
	 cmpq $1, %rax 
	 je .eif_584 
	 movq $.str_1445, %rax 
	 jmp .eif_585 
.eif_584: 
	 movq $.str_1446, %rax 
.eif_585: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1447, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $76, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1448, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1449, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $76, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $75, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_624 
	 movq $0, %rax 
	 jmp .cmp_625 
.cmp_624: 
	 movq $1, %rax 
.cmp_625: 
	 cmpq $1, %rax 
	 je .eif_586 
	 movq $.str_1450, %rax 
	 jmp .eif_587 
.eif_586: 
	 movq $.str_1451, %rax 
.eif_587: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1452, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $76, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $75, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1453, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1454, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $77, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_626 
	 movq $0, %rax 
	 jmp .cmp_627 
.cmp_626: 
	 movq $1, %rax 
.cmp_627: 
	 cmpq $1, %rax 
	 je .eif_588 
	 movq $.str_1455, %rax 
	 jmp .eif_589 
.eif_588: 
	 movq $.str_1456, %rax 
.eif_589: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1457, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $77, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1458, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1459, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $77, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $76, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_628 
	 movq $0, %rax 
	 jmp .cmp_629 
.cmp_628: 
	 movq $1, %rax 
.cmp_629: 
	 cmpq $1, %rax 
	 je .eif_590 
	 movq $.str_1460, %rax 
	 jmp .eif_591 
.eif_590: 
	 movq $.str_1461, %rax 
.eif_591: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1462, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $77, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $76, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1463, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1464, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $78, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_630 
	 movq $0, %rax 
	 jmp .cmp_631 
.cmp_630: 
	 movq $1, %rax 
.cmp_631: 
	 cmpq $1, %rax 
	 je .eif_592 
	 movq $.str_1465, %rax 
	 jmp .eif_593 
.eif_592: 
	 movq $.str_1466, %rax 
.eif_593: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1467, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $78, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1468, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1469, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $78, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $77, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_632 
	 movq $0, %rax 
	 jmp .cmp_633 
.cmp_632: 
	 movq $1, %rax 
.cmp_633: 
	 cmpq $1, %rax 
	 je .eif_594 
	 movq $.str_1470, %rax 
	 jmp .eif_595 
.eif_594: 
	 movq $.str_1471, %rax 
.eif_595: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1472, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $78, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $77, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1473, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1474, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $79, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_634 
	 movq $0, %rax 
	 jmp .cmp_635 
.cmp_634: 
	 movq $1, %rax 
.cmp_635: 
	 cmpq $1, %rax 
	 je .eif_596 
	 movq $.str_1475, %rax 
	 jmp .eif_597 
.eif_596: 
	 movq $.str_1476, %rax 
.eif_597: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1477, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $79, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1478, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1479, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $79, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $78, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_636 
	 movq $0, %rax 
	 jmp .cmp_637 
.cmp_636: 
	 movq $1, %rax 
.cmp_637: 
	 cmpq $1, %rax 
	 je .eif_598 
	 movq $.str_1480, %rax 
	 jmp .eif_599 
.eif_598: 
	 movq $.str_1481, %rax 
.eif_599: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1482, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $79, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $78, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1483, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1484, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $80, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_638 
	 movq $0, %rax 
	 jmp .cmp_639 
.cmp_638: 
	 movq $1, %rax 
.cmp_639: 
	 cmpq $1, %rax 
	 je .eif_600 
	 movq $.str_1485, %rax 
	 jmp .eif_601 
.eif_600: 
	 movq $.str_1486, %rax 
.eif_601: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1487, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $80, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1488, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1489, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $80, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $79, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_640 
	 movq $0, %rax 
	 jmp .cmp_641 
.cmp_640: 
	 movq $1, %rax 
.cmp_641: 
	 cmpq $1, %rax 
	 je .eif_602 
	 movq $.str_1490, %rax 
	 jmp .eif_603 
.eif_602: 
	 movq $.str_1491, %rax 
.eif_603: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1492, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $80, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $79, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1493, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1494, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $81, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_642 
	 movq $0, %rax 
	 jmp .cmp_643 
.cmp_642: 
	 movq $1, %rax 
.cmp_643: 
	 cmpq $1, %rax 
	 je .eif_604 
	 movq $.str_1495, %rax 
	 jmp .eif_605 
.eif_604: 
	 movq $.str_1496, %rax 
.eif_605: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1497, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $81, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1498, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1499, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $81, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $80, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_644 
	 movq $0, %rax 
	 jmp .cmp_645 
.cmp_644: 
	 movq $1, %rax 
.cmp_645: 
	 cmpq $1, %rax 
	 je .eif_606 
	 movq $.str_1500, %rax 
	 jmp .eif_607 
.eif_606: 
	 movq $.str_1501, %rax 
.eif_607: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1502, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $81, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $80, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1503, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1504, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $82, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_646 
	 movq $0, %rax 
	 jmp .cmp_647 
.cmp_646: 
	 movq $1, %rax 
.cmp_647: 
	 cmpq $1, %rax 
	 je .eif_608 
	 movq $.str_1505, %rax 
	 jmp .eif_609 
.eif_608: 
	 movq $.str_1506, %rax 
.eif_609: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1507, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $82, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1508, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1509, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $82, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $81, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_648 
	 movq $0, %rax 
	 jmp .cmp_649 
.cmp_648: 
	 movq $1, %rax 
.cmp_649: 
	 cmpq $1, %rax 
	 je .eif_610 
	 movq $.str_1510, %rax 
	 jmp .eif_611 
.eif_610: 
	 movq $.str_1511, %rax 
.eif_611: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1512, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $82, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $81, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1513, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1514, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $83, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_650 
	 movq $0, %rax 
	 jmp .cmp_651 
.cmp_650: 
	 movq $1, %rax 
.cmp_651: 
	 cmpq $1, %rax 
	 je .eif_612 
	 movq $.str_1515, %rax 
	 jmp .eif_613 
.eif_612: 
	 movq $.str_1516, %rax 
.eif_613: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1517, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $83, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1518, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1519, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $83, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $82, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_652 
	 movq $0, %rax 
	 jmp .cmp_653 
.cmp_652: 
	 movq $1, %rax 
.cmp_653: 
	 cmpq $1, %rax 
	 je .eif_614 
	 movq $.str_1520, %rax 
	 jmp .eif_615 
.eif_614: 
	 movq $.str_1521, %rax 
.eif_615: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1522, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $83, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $82, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1523, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1524, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $84, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_654 
	 movq $0, %rax 
	 jmp .cmp_655 
.cmp_654: 
	 movq $1, %rax 
.cmp_655: 
	 cmpq $1, %rax 
	 je .eif_616 
	 movq $.str_1525, %rax 
	 jmp .eif_617 
.eif_616: 
	 movq $.str_1526, %rax 
.eif_617: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1527, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $84, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1528, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1529, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $84, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $83, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_656 
	 movq $0, %rax 
	 jmp .cmp_657 
.cmp_656: 
	 movq $1, %rax 
.cmp_657: 
	 cmpq $1, %rax 
	 je .eif_618 
	 movq $.str_1530, %rax 
	 jmp .eif_619 
.eif_618: 
	 movq $.str_1531, %rax 
.eif_619: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1532, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $84, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $83, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1533, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1534, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $85, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_658 
	 movq $0, %rax 
	 jmp .cmp_659 
.cmp_658: 
	 movq $1, %rax 
.cmp_659: 
	 cmpq $1, %rax 
	 je .eif_620 
	 movq $.str_1535, %rax 
	 jmp .eif_621 
.eif_620: 
	 movq $.str_1536, %rax 
.eif_621: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1537, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $85, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1538, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1539, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $85, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $84, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_660 
	 movq $0, %rax 
	 jmp .cmp_661 
.cmp_660: 
	 movq $1, %rax 
.cmp_661: 
	 cmpq $1, %rax 
	 je .eif_622 
	 movq $.str_1540, %rax 
	 jmp .eif_623 
.eif_622: 
	 movq $.str_1541, %rax 
.eif_623: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1542, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $85, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $84, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1543, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1544, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $86, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_662 
	 movq $0, %rax 
	 jmp .cmp_663 
.cmp_662: 
	 movq $1, %rax 
.cmp_663: 
	 cmpq $1, %rax 
	 je .eif_624 
	 movq $.str_1545, %rax 
	 jmp .eif_625 
.eif_624: 
	 movq $.str_1546, %rax 
.eif_625: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1547, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $86, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1548, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1549, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $86, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $85, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_664 
	 movq $0, %rax 
	 jmp .cmp_665 
.cmp_664: 
	 movq $1, %rax 
.cmp_665: 
	 cmpq $1, %rax 
	 je .eif_626 
	 movq $.str_1550, %rax 
	 jmp .eif_627 
.eif_626: 
	 movq $.str_1551, %rax 
.eif_627: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1552, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $86, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $85, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1553, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1554, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $87, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_666 
	 movq $0, %rax 
	 jmp .cmp_667 
.cmp_666: 
	 movq $1, %rax 
.cmp_667: 
	 cmpq $1, %rax 
	 je .eif_628 
	 movq $.str_1555, %rax 
	 jmp .eif_629 
.eif_628: 
	 movq $.str_1556, %rax 
.eif_629: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1557, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $87, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1558, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1559, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $87, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $86, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_668 
	 movq $0, %rax 
	 jmp .cmp_669 
.cmp_668: 
	 movq $1, %rax 
.cmp_669: 
	 cmpq $1, %rax 
	 je .eif_630 
	 movq $.str_1560, %rax 
	 jmp .eif_631 
.eif_630: 
	 movq $.str_1561, %rax 
.eif_631: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1562, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $87, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $86, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1563, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1564, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $88, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_670 
	 movq $0, %rax 
	 jmp .cmp_671 
.cmp_670: 
	 movq $1, %rax 
.cmp_671: 
	 cmpq $1, %rax 
	 je .eif_632 
	 movq $.str_1565, %rax 
	 jmp .eif_633 
.eif_632: 
	 movq $.str_1566, %rax 
.eif_633: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1567, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $88, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1568, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1569, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $88, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $87, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_672 
	 movq $0, %rax 
	 jmp .cmp_673 
.cmp_672: 
	 movq $1, %rax 
.cmp_673: 
	 cmpq $1, %rax 
	 je .eif_634 
	 movq $.str_1570, %rax 
	 jmp .eif_635 
.eif_634: 
	 movq $.str_1571, %rax 
.eif_635: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1572, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $88, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $87, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1573, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1574, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $89, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_674 
	 movq $0, %rax 
	 jmp .cmp_675 
.cmp_674: 
	 movq $1, %rax 
.cmp_675: 
	 cmpq $1, %rax 
	 je .eif_636 
	 movq $.str_1575, %rax 
	 jmp .eif_637 
.eif_636: 
	 movq $.str_1576, %rax 
.eif_637: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1577, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $89, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1578, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1579, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $89, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $88, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_676 
	 movq $0, %rax 
	 jmp .cmp_677 
.cmp_676: 
	 movq $1, %rax 
.cmp_677: 
	 cmpq $1, %rax 
	 je .eif_638 
	 movq $.str_1580, %rax 
	 jmp .eif_639 
.eif_638: 
	 movq $.str_1581, %rax 
.eif_639: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1582, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $89, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $88, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1583, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1584, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $90, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_678 
	 movq $0, %rax 
	 jmp .cmp_679 
.cmp_678: 
	 movq $1, %rax 
.cmp_679: 
	 cmpq $1, %rax 
	 je .eif_640 
	 movq $.str_1585, %rax 
	 jmp .eif_641 
.eif_640: 
	 movq $.str_1586, %rax 
.eif_641: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1587, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $90, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1588, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1589, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $90, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $89, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_680 
	 movq $0, %rax 
	 jmp .cmp_681 
.cmp_680: 
	 movq $1, %rax 
.cmp_681: 
	 cmpq $1, %rax 
	 je .eif_642 
	 movq $.str_1590, %rax 
	 jmp .eif_643 
.eif_642: 
	 movq $.str_1591, %rax 
.eif_643: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1592, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $90, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $89, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1593, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1594, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $91, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_682 
	 movq $0, %rax 
	 jmp .cmp_683 
.cmp_682: 
	 movq $1, %rax 
.cmp_683: 
	 cmpq $1, %rax 
	 je .eif_644 
	 movq $.str_1595, %rax 
	 jmp .eif_645 
.eif_644: 
	 movq $.str_1596, %rax 
.eif_645: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1597, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $91, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1598, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1599, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $91, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $90, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_684 
	 movq $0, %rax 
	 jmp .cmp_685 
.cmp_684: 
	 movq $1, %rax 
.cmp_685: 
	 cmpq $1, %rax 
	 je .eif_646 
	 movq $.str_1600, %rax 
	 jmp .eif_647 
.eif_646: 
	 movq $.str_1601, %rax 
.eif_647: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1602, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $91, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $90, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1603, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1604, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $92, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_686 
	 movq $0, %rax 
	 jmp .cmp_687 
.cmp_686: 
	 movq $1, %rax 
.cmp_687: 
	 cmpq $1, %rax 
	 je .eif_648 
	 movq $.str_1605, %rax 
	 jmp .eif_649 
.eif_648: 
	 movq $.str_1606, %rax 
.eif_649: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1607, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $92, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1608, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1609, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $92, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $91, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_688 
	 movq $0, %rax 
	 jmp .cmp_689 
.cmp_688: 
	 movq $1, %rax 
.cmp_689: 
	 cmpq $1, %rax 
	 je .eif_650 
	 movq $.str_1610, %rax 
	 jmp .eif_651 
.eif_650: 
	 movq $.str_1611, %rax 
.eif_651: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1612, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $92, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $91, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1613, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1614, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $93, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_690 
	 movq $0, %rax 
	 jmp .cmp_691 
.cmp_690: 
	 movq $1, %rax 
.cmp_691: 
	 cmpq $1, %rax 
	 je .eif_652 
	 movq $.str_1615, %rax 
	 jmp .eif_653 
.eif_652: 
	 movq $.str_1616, %rax 
.eif_653: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1617, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $93, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1618, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1619, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $93, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $92, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_692 
	 movq $0, %rax 
	 jmp .cmp_693 
.cmp_692: 
	 movq $1, %rax 
.cmp_693: 
	 cmpq $1, %rax 
	 je .eif_654 
	 movq $.str_1620, %rax 
	 jmp .eif_655 
.eif_654: 
	 movq $.str_1621, %rax 
.eif_655: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1622, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $93, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $92, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1623, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1624, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $94, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_694 
	 movq $0, %rax 
	 jmp .cmp_695 
.cmp_694: 
	 movq $1, %rax 
.cmp_695: 
	 cmpq $1, %rax 
	 je .eif_656 
	 movq $.str_1625, %rax 
	 jmp .eif_657 
.eif_656: 
	 movq $.str_1626, %rax 
.eif_657: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1627, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $94, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1628, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1629, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $94, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $93, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_696 
	 movq $0, %rax 
	 jmp .cmp_697 
.cmp_696: 
	 movq $1, %rax 
.cmp_697: 
	 cmpq $1, %rax 
	 je .eif_658 
	 movq $.str_1630, %rax 
	 jmp .eif_659 
.eif_658: 
	 movq $.str_1631, %rax 
.eif_659: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1632, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $94, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $93, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1633, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1634, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $95, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_698 
	 movq $0, %rax 
	 jmp .cmp_699 
.cmp_698: 
	 movq $1, %rax 
.cmp_699: 
	 cmpq $1, %rax 
	 je .eif_660 
	 movq $.str_1635, %rax 
	 jmp .eif_661 
.eif_660: 
	 movq $.str_1636, %rax 
.eif_661: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1637, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $95, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1638, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1639, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $95, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $94, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_700 
	 movq $0, %rax 
	 jmp .cmp_701 
.cmp_700: 
	 movq $1, %rax 
.cmp_701: 
	 cmpq $1, %rax 
	 je .eif_662 
	 movq $.str_1640, %rax 
	 jmp .eif_663 
.eif_662: 
	 movq $.str_1641, %rax 
.eif_663: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1642, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $95, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $94, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1643, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1644, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $96, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_702 
	 movq $0, %rax 
	 jmp .cmp_703 
.cmp_702: 
	 movq $1, %rax 
.cmp_703: 
	 cmpq $1, %rax 
	 je .eif_664 
	 movq $.str_1645, %rax 
	 jmp .eif_665 
.eif_664: 
	 movq $.str_1646, %rax 
.eif_665: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1647, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $96, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1648, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1649, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $96, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $95, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_704 
	 movq $0, %rax 
	 jmp .cmp_705 
.cmp_704: 
	 movq $1, %rax 
.cmp_705: 
	 cmpq $1, %rax 
	 je .eif_666 
	 movq $.str_1650, %rax 
	 jmp .eif_667 
.eif_666: 
	 movq $.str_1651, %rax 
.eif_667: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1652, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $96, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $95, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1653, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1654, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $97, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_706 
	 movq $0, %rax 
	 jmp .cmp_707 
.cmp_706: 
	 movq $1, %rax 
.cmp_707: 
	 cmpq $1, %rax 
	 je .eif_668 
	 movq $.str_1655, %rax 
	 jmp .eif_669 
.eif_668: 
	 movq $.str_1656, %rax 
.eif_669: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1657, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $97, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $4, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1658, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1659, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $97, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $96, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_708 
	 movq $0, %rax 
	 jmp .cmp_709 
.cmp_708: 
	 movq $1, %rax 
.cmp_709: 
	 cmpq $1, %rax 
	 je .eif_670 
	 movq $.str_1660, %rax 
	 jmp .eif_671 
.eif_670: 
	 movq $.str_1661, %rax 
.eif_671: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1662, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $97, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $96, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1663, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1664, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $98, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_710 
	 movq $0, %rax 
	 jmp .cmp_711 
.cmp_710: 
	 movq $1, %rax 
.cmp_711: 
	 cmpq $1, %rax 
	 je .eif_672 
	 movq $.str_1665, %rax 
	 jmp .eif_673 
.eif_672: 
	 movq $.str_1666, %rax 
.eif_673: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1667, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $98, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1668, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1669, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $98, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $97, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_712 
	 movq $0, %rax 
	 jmp .cmp_713 
.cmp_712: 
	 movq $1, %rax 
.cmp_713: 
	 cmpq $1, %rax 
	 je .eif_674 
	 movq $.str_1670, %rax 
	 jmp .eif_675 
.eif_674: 
	 movq $.str_1671, %rax 
.eif_675: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1672, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $98, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $97, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1673, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1674, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $99, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $7, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_714 
	 movq $0, %rax 
	 jmp .cmp_715 
.cmp_714: 
	 movq $1, %rax 
.cmp_715: 
	 cmpq $1, %rax 
	 je .eif_676 
	 movq $.str_1675, %rax 
	 jmp .eif_677 
.eif_676: 
	 movq $.str_1676, %rax 
.eif_677: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1677, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $99, %rax 
	 pushq %rax 
	 movq .global_5(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $7, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1678, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1679, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $99, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $98, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_716 
	 movq $0, %rax 
	 jmp .cmp_717 
.cmp_716: 
	 movq $1, %rax 
.cmp_717: 
	 cmpq $1, %rax 
	 je .eif_678 
	 movq $.str_1680, %rax 
	 jmp .eif_679 
.eif_678: 
	 movq $.str_1681, %rax 
.eif_679: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1682, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $99, %rax 
	 pushq %rax 
	 movq .global_6(%rip), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $98, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1683, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1684, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_global: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq -8(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 pushq %rax 
	 movq $10, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 pushq %rdx 
	 movq .global_4(%rip), %rax 
	 pushq %rax 
	 pushq %rdx 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_3(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 pushq %rax 
	 movq $3, %rax 
	 pushq %rax 
	 movq .global_2(%rip), %rax 
	 pushq %rax 
	 movq .global_1(%rip), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 movq %rax ,.global_1(%rip) 
	 pushq %rdx 
	 movq $121, %rax 
	 pushq %rax 
	 movq .global_1(%rip), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 movq %rax ,.global_2(%rip) 
	 movq .global_2(%rip), %rax 
	 pushq %rax 
	 movq .global_4(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.global_3(%rip) 
	 movq $152, %rax 
	 pushq %rax 
	 movq .global_4(%rip), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq .global_4(%rip), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.global_4(%rip) 
	 popq %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,.global_4(%rip) 
	 movq $0, %rax 
	 .align 16 
	 callq verify_global 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
test_last: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 pushq %rdx 
	 movq $2, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 movq %rax ,-24(%rbp) 
	 movq $14, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 pushq %rax 
	 pushq %rdx 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 pushq %rax 
	 pushq %rdx 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 popq %rax 
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
	 subq %r10, %rax 
	 pushq %rax 
	 pushq %rdx 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 popq %rdx 
	 pushq %rax 
	 pushq %rdx 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %r10 
	 imulq %r10, %rax 
	 popq %r10 
	 cqto 
	 idivq %r10 
	 movq %rdx, %rax 
	 popq %rdx 
	 popq %r10 
	 addq %r10, %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $6056, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_718 
	 movq $0, %rax 
	 jmp .cmp_719 
.cmp_718: 
	 movq $1, %rax 
.cmp_719: 
	 cmpq $1, %rax 
	 je .eif_680 
	 movq $.str_1685, %rax 
	 jmp .eif_681 
.eif_680: 
	 movq $.str_1686, %rax 
.eif_681: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1687, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $6056, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1688, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1689, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $613825, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_720 
	 movq $0, %rax 
	 jmp .cmp_721 
.cmp_720: 
	 movq $1, %rax 
.cmp_721: 
	 cmpq $1, %rax 
	 je .eif_682 
	 movq $.str_1690, %rax 
	 jmp .eif_683 
.eif_682: 
	 movq $.str_1691, %rax 
.eif_683: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1692, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $613825, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1693, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1694, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $0, %rax 
	 .align 16 
	 callq test_expr 
	 movq %rax ,-8(%rbp) 
	 movq $0, %rax 
	 .align 16 
	 callq test_code 
	 movq %rax ,-16(%rbp) 
	 movq $5, %rax 
	 pushq %rax 
	 movq .global_1(%rip), %rax 
	 pushq %rax 
	 movq .global_2(%rip), %rax 
	 pushq %rax 
	 movq $589, %rax 
	 negq %rax 
	 pushq %rax 
	 movq $12, %rax 
	 movq %rax, %r9 
	 pushq %r9 
	 movq $1547, %rax 
	 movq %rax, %r8 
	 pushq %r8 
	 movq .global_1(%rip), %rax 
	 pushq %rax 
	 movq $9, %rax 
	 pushq %rax 
	 movq $8, %rax 
	 popq %r10 
	 subq %r10, %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax, %rcx 
	 pushq %rcx 
	 movq .global_1(%rip), %rax 
	 pushq %rax 
	 movq .global_2(%rip), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq .global_1(%rip), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $5, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 popq %rcx 
	 popq %r8 
	 popq %r9 
	 movq $0, %rax 
	 .align 16 
	 callq test_args 
	 movq %rax ,-24(%rbp) 
	 movq .NULL(%rip), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq test_tabs 
	 movq %rax ,-40(%rbp) 
	 movq $1947, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq test_global 
	 movq $98, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $54, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq test_last 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $56, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_722 
	 movq $0, %rax 
	 jmp .cmp_723 
.cmp_722: 
	 movq $1, %rax 
.cmp_723: 
	 cmpq $1, %rax 
	 je .eif_684 
	 movq $.str_1695, %rax 
	 jmp .eif_685 
.eif_684: 
	 movq $.str_1696, %rax 
.eif_685: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1697, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -8(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $56, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1698, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1699, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq $145, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_724 
	 movq $0, %rax 
	 jmp .cmp_725 
.cmp_724: 
	 movq $1, %rax 
.cmp_725: 
	 cmpq $1, %rax 
	 je .eif_686 
	 movq $.str_1700, %rax 
	 jmp .eif_687 
.eif_686: 
	 movq $.str_1701, %rax 
.eif_687: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1702, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -16(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $145, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1703, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1704, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_726 
	 movq $0, %rax 
	 jmp .cmp_727 
.cmp_726: 
	 movq $1, %rax 
.cmp_727: 
	 cmpq $1, %rax 
	 je .eif_688 
	 movq $.str_1705, %rax 
	 jmp .eif_689 
.eif_688: 
	 movq $.str_1706, %rax 
.eif_689: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1707, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $0, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1708, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1709, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $8929, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_728 
	 movq $0, %rax 
	 jmp .cmp_729 
.cmp_728: 
	 movq $1, %rax 
.cmp_729: 
	 cmpq $1, %rax 
	 je .eif_690 
	 movq $.str_1710, %rax 
	 jmp .eif_691 
.eif_690: 
	 movq $.str_1711, %rax 
.eif_691: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1712, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $8929, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1713, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1714, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $14, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_730 
	 movq $0, %rax 
	 jmp .cmp_731 
.cmp_730: 
	 movq $1, %rax 
.cmp_731: 
	 cmpq $1, %rax 
	 je .eif_692 
	 movq $.str_1715, %rax 
	 jmp .eif_693 
.eif_692: 
	 movq $.str_1716, %rax 
.eif_693: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1717, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $14, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1718, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1719, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 pushq %rax 
	 movq $56, %rax 
	 negq %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_732 
	 movq $0, %rax 
	 jmp .cmp_733 
.cmp_732: 
	 movq $1, %rax 
.cmp_733: 
	 cmpq $1, %rax 
	 je .eif_694 
	 movq $.str_1720, %rax 
	 jmp .eif_695 
.eif_694: 
	 movq $.str_1721, %rax 
.eif_695: 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1722, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $2, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq $56, %rax 
	 negq %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_1723, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_1724, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -40(%rbp), %rax 
	 cmpq $1, %rax 
	 je .cif_8 
	 jmp .cif_9 
.cif_8: 
	 movq -40(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq free 
	 movslq %eax, %rax 
.cif_9: 
	 movq .global_5(%rip), %rax 
	 cmpq $1, %rax 
	 je .cif_10 
	 jmp .cif_11 
.cif_10: 
	 movq .global_5(%rip), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq free 
	 movslq %eax, %rax 
.cif_11: 
	 movq .global_6(%rip), %rax 
	 cmpq $1, %rax 
	 je .cif_12 
	 jmp .cif_13 
.cif_12: 
	 movq .global_6(%rip), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq free 
	 movslq %eax, %rax 
.cif_13: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.section .rodata 
 	 .align 8 
.str_1724:
 	 .string "----------------------\n" 
	 .align 8 
.str_1723:
 	 .string "test_tabs[2] th=%d, value=%d\n" 
	 .align 8 
.str_1722:
 	 .string "test_tabs[2]  %s\n" 
	 .align 8 
.str_1721:
 	 .string "pass" 
	 .align 8 
.str_1720:
 	 .string "failed" 
	 .align 8 
.str_1719:
 	 .string "----------------------\n" 
	 .align 8 
.str_1718:
 	 .string "test_tabs[1] th=%d, value=%d\n" 
	 .align 8 
.str_1717:
 	 .string "test_tabs[1]  %s\n" 
	 .align 8 
.str_1716:
 	 .string "pass" 
	 .align 8 
.str_1715:
 	 .string "failed" 
	 .align 8 
.str_1714:
 	 .string "----------------------\n" 
	 .align 8 
.str_1713:
 	 .string "test_tabs[0] th=%d, value=%d\n" 
	 .align 8 
.str_1712:
 	 .string "test_tabs[0]  %s\n" 
	 .align 8 
.str_1711:
 	 .string "pass" 
	 .align 8 
.str_1710:
 	 .string "failed" 
	 .align 8 
.str_1709:
 	 .string "----------------------\n" 
	 .align 8 
.str_1708:
 	 .string "test_args th=%d, value=%d\n" 
	 .align 8 
.str_1707:
 	 .string "test_args  %s\n" 
	 .align 8 
.str_1706:
 	 .string "pass" 
	 .align 8 
.str_1705:
 	 .string "failed" 
	 .align 8 
.str_1704:
 	 .string "----------------------\n" 
	 .align 8 
.str_1703:
 	 .string "test_code th=%d, value=%d\n" 
	 .align 8 
.str_1702:
 	 .string "test_code  %s\n" 
	 .align 8 
.str_1701:
 	 .string "pass" 
	 .align 8 
.str_1700:
 	 .string "failed" 
	 .align 8 
.str_1699:
 	 .string "----------------------\n" 
	 .align 8 
.str_1698:
 	 .string "test_expr th=%d, value=%d\n" 
	 .align 8 
.str_1697:
 	 .string "test_expr  %s\n" 
	 .align 8 
.str_1696:
 	 .string "pass" 
	 .align 8 
.str_1695:
 	 .string "failed" 
	 .align 8 
.str_1694:
 	 .string "----------------------\n" 
	 .align 8 
.str_1693:
 	 .string "beta  th=%d, value=%d\n" 
	 .align 8 
.str_1692:
 	 .string "beta  %s\n" 
	 .align 8 
.str_1691:
 	 .string "pass" 
	 .align 8 
.str_1690:
 	 .string "failed" 
	 .align 8 
.str_1689:
 	 .string "----------------------\n" 
	 .align 8 
.str_1688:
 	 .string "alpha  th=%d, value=%d\n" 
	 .align 8 
.str_1687:
 	 .string "alpha  %s\n" 
	 .align 8 
.str_1686:
 	 .string "pass" 
	 .align 8 
.str_1685:
 	 .string "failed" 
	 .align 8 
.str_1684:
 	 .string "----------------------\n" 
	 .align 8 
.str_1683:
 	 .string "global_6[99]  th=%d, value=%d\n" 
	 .align 8 
.str_1682:
 	 .string "global_6[99]  %s\n" 
	 .align 8 
.str_1681:
 	 .string "pass" 
	 .align 8 
.str_1680:
 	 .string "failed" 
	 .align 8 
.str_1679:
 	 .string "----------------------\n" 
	 .align 8 
.str_1678:
 	 .string "global_5[99]  th=%d, value=%d\n" 
	 .align 8 
.str_1677:
 	 .string "global_5[99]  %s\n" 
	 .align 8 
.str_1676:
 	 .string "pass" 
	 .align 8 
.str_1675:
 	 .string "failed" 
	 .align 8 
.str_1674:
 	 .string "----------------------\n" 
	 .align 8 
.str_1673:
 	 .string "global_6[98]  th=%d, value=%d\n" 
	 .align 8 
.str_1672:
 	 .string "global_6[98]  %s\n" 
	 .align 8 
.str_1671:
 	 .string "pass" 
	 .align 8 
.str_1670:
 	 .string "failed" 
	 .align 8 
.str_1669:
 	 .string "----------------------\n" 
	 .align 8 
.str_1668:
 	 .string "global_5[98]  th=%d, value=%d\n" 
	 .align 8 
.str_1667:
 	 .string "global_5[98]  %s\n" 
	 .align 8 
.str_1666:
 	 .string "pass" 
	 .align 8 
.str_1665:
 	 .string "failed" 
	 .align 8 
.str_1664:
 	 .string "----------------------\n" 
	 .align 8 
.str_1663:
 	 .string "global_6[97]  th=%d, value=%d\n" 
	 .align 8 
.str_1662:
 	 .string "global_6[97]  %s\n" 
	 .align 8 
.str_1661:
 	 .string "pass" 
	 .align 8 
.str_1660:
 	 .string "failed" 
	 .align 8 
.str_1659:
 	 .string "----------------------\n" 
	 .align 8 
.str_1658:
 	 .string "global_5[97]  th=%d, value=%d\n" 
	 .align 8 
.str_1657:
 	 .string "global_5[97]  %s\n" 
	 .align 8 
.str_1656:
 	 .string "pass" 
	 .align 8 
.str_1655:
 	 .string "failed" 
	 .align 8 
.str_1654:
 	 .string "----------------------\n" 
	 .align 8 
.str_1653:
 	 .string "global_6[96]  th=%d, value=%d\n" 
	 .align 8 
.str_1652:
 	 .string "global_6[96]  %s\n" 
	 .align 8 
.str_1651:
 	 .string "pass" 
	 .align 8 
.str_1650:
 	 .string "failed" 
	 .align 8 
.str_1649:
 	 .string "----------------------\n" 
	 .align 8 
.str_1648:
 	 .string "global_5[96]  th=%d, value=%d\n" 
	 .align 8 
.str_1647:
 	 .string "global_5[96]  %s\n" 
	 .align 8 
.str_1646:
 	 .string "pass" 
	 .align 8 
.str_1645:
 	 .string "failed" 
	 .align 8 
.str_1644:
 	 .string "----------------------\n" 
	 .align 8 
.str_1643:
 	 .string "global_6[95]  th=%d, value=%d\n" 
	 .align 8 
.str_1642:
 	 .string "global_6[95]  %s\n" 
	 .align 8 
.str_1641:
 	 .string "pass" 
	 .align 8 
.str_1640:
 	 .string "failed" 
	 .align 8 
.str_1639:
 	 .string "----------------------\n" 
	 .align 8 
.str_1638:
 	 .string "global_5[95]  th=%d, value=%d\n" 
	 .align 8 
.str_1637:
 	 .string "global_5[95]  %s\n" 
	 .align 8 
.str_1636:
 	 .string "pass" 
	 .align 8 
.str_1635:
 	 .string "failed" 
	 .align 8 
.str_1634:
 	 .string "----------------------\n" 
	 .align 8 
.str_1633:
 	 .string "global_6[94]  th=%d, value=%d\n" 
	 .align 8 
.str_1632:
 	 .string "global_6[94]  %s\n" 
	 .align 8 
.str_1631:
 	 .string "pass" 
	 .align 8 
.str_1630:
 	 .string "failed" 
	 .align 8 
.str_1629:
 	 .string "----------------------\n" 
	 .align 8 
.str_1628:
 	 .string "global_5[94]  th=%d, value=%d\n" 
	 .align 8 
.str_1627:
 	 .string "global_5[94]  %s\n" 
	 .align 8 
.str_1626:
 	 .string "pass" 
	 .align 8 
.str_1625:
 	 .string "failed" 
	 .align 8 
.str_1624:
 	 .string "----------------------\n" 
	 .align 8 
.str_1623:
 	 .string "global_6[93]  th=%d, value=%d\n" 
	 .align 8 
.str_1622:
 	 .string "global_6[93]  %s\n" 
	 .align 8 
.str_1621:
 	 .string "pass" 
	 .align 8 
.str_1620:
 	 .string "failed" 
	 .align 8 
.str_1619:
 	 .string "----------------------\n" 
	 .align 8 
.str_1618:
 	 .string "global_5[93]  th=%d, value=%d\n" 
	 .align 8 
.str_1617:
 	 .string "global_5[93]  %s\n" 
	 .align 8 
.str_1616:
 	 .string "pass" 
	 .align 8 
.str_1615:
 	 .string "failed" 
	 .align 8 
.str_1614:
 	 .string "----------------------\n" 
	 .align 8 
.str_1613:
 	 .string "global_6[92]  th=%d, value=%d\n" 
	 .align 8 
.str_1612:
 	 .string "global_6[92]  %s\n" 
	 .align 8 
.str_1611:
 	 .string "pass" 
	 .align 8 
.str_1610:
 	 .string "failed" 
	 .align 8 
.str_1609:
 	 .string "----------------------\n" 
	 .align 8 
.str_1608:
 	 .string "global_5[92]  th=%d, value=%d\n" 
	 .align 8 
.str_1607:
 	 .string "global_5[92]  %s\n" 
	 .align 8 
.str_1606:
 	 .string "pass" 
	 .align 8 
.str_1605:
 	 .string "failed" 
	 .align 8 
.str_1604:
 	 .string "----------------------\n" 
	 .align 8 
.str_1603:
 	 .string "global_6[91]  th=%d, value=%d\n" 
	 .align 8 
.str_1602:
 	 .string "global_6[91]  %s\n" 
	 .align 8 
.str_1601:
 	 .string "pass" 
	 .align 8 
.str_1600:
 	 .string "failed" 
	 .align 8 
.str_1599:
 	 .string "----------------------\n" 
	 .align 8 
.str_1598:
 	 .string "global_5[91]  th=%d, value=%d\n" 
	 .align 8 
.str_1597:
 	 .string "global_5[91]  %s\n" 
	 .align 8 
.str_1596:
 	 .string "pass" 
	 .align 8 
.str_1595:
 	 .string "failed" 
	 .align 8 
.str_1594:
 	 .string "----------------------\n" 
	 .align 8 
.str_1593:
 	 .string "global_6[90]  th=%d, value=%d\n" 
	 .align 8 
.str_1592:
 	 .string "global_6[90]  %s\n" 
	 .align 8 
.str_1591:
 	 .string "pass" 
	 .align 8 
.str_1590:
 	 .string "failed" 
	 .align 8 
.str_1589:
 	 .string "----------------------\n" 
	 .align 8 
.str_1588:
 	 .string "global_5[90]  th=%d, value=%d\n" 
	 .align 8 
.str_1587:
 	 .string "global_5[90]  %s\n" 
	 .align 8 
.str_1586:
 	 .string "pass" 
	 .align 8 
.str_1585:
 	 .string "failed" 
	 .align 8 
.str_1584:
 	 .string "----------------------\n" 
	 .align 8 
.str_1583:
 	 .string "global_6[89]  th=%d, value=%d\n" 
	 .align 8 
.str_1582:
 	 .string "global_6[89]  %s\n" 
	 .align 8 
.str_1581:
 	 .string "pass" 
	 .align 8 
.str_1580:
 	 .string "failed" 
	 .align 8 
.str_1579:
 	 .string "----------------------\n" 
	 .align 8 
.str_1578:
 	 .string "global_5[89]  th=%d, value=%d\n" 
	 .align 8 
.str_1577:
 	 .string "global_5[89]  %s\n" 
	 .align 8 
.str_1576:
 	 .string "pass" 
	 .align 8 
.str_1575:
 	 .string "failed" 
	 .align 8 
.str_1574:
 	 .string "----------------------\n" 
	 .align 8 
.str_1573:
 	 .string "global_6[88]  th=%d, value=%d\n" 
	 .align 8 
.str_1572:
 	 .string "global_6[88]  %s\n" 
	 .align 8 
.str_1571:
 	 .string "pass" 
	 .align 8 
.str_1570:
 	 .string "failed" 
	 .align 8 
.str_1569:
 	 .string "----------------------\n" 
	 .align 8 
.str_1568:
 	 .string "global_5[88]  th=%d, value=%d\n" 
	 .align 8 
.str_1567:
 	 .string "global_5[88]  %s\n" 
	 .align 8 
.str_1566:
 	 .string "pass" 
	 .align 8 
.str_1565:
 	 .string "failed" 
	 .align 8 
.str_1564:
 	 .string "----------------------\n" 
	 .align 8 
.str_1563:
 	 .string "global_6[87]  th=%d, value=%d\n" 
	 .align 8 
.str_1562:
 	 .string "global_6[87]  %s\n" 
	 .align 8 
.str_1561:
 	 .string "pass" 
	 .align 8 
.str_1560:
 	 .string "failed" 
	 .align 8 
.str_1559:
 	 .string "----------------------\n" 
	 .align 8 
.str_1558:
 	 .string "global_5[87]  th=%d, value=%d\n" 
	 .align 8 
.str_1557:
 	 .string "global_5[87]  %s\n" 
	 .align 8 
.str_1556:
 	 .string "pass" 
	 .align 8 
.str_1555:
 	 .string "failed" 
	 .align 8 
.str_1554:
 	 .string "----------------------\n" 
	 .align 8 
.str_1553:
 	 .string "global_6[86]  th=%d, value=%d\n" 
	 .align 8 
.str_1552:
 	 .string "global_6[86]  %s\n" 
	 .align 8 
.str_1551:
 	 .string "pass" 
	 .align 8 
.str_1550:
 	 .string "failed" 
	 .align 8 
.str_1549:
 	 .string "----------------------\n" 
	 .align 8 
.str_1548:
 	 .string "global_5[86]  th=%d, value=%d\n" 
	 .align 8 
.str_1547:
 	 .string "global_5[86]  %s\n" 
	 .align 8 
.str_1546:
 	 .string "pass" 
	 .align 8 
.str_1545:
 	 .string "failed" 
	 .align 8 
.str_1544:
 	 .string "----------------------\n" 
	 .align 8 
.str_1543:
 	 .string "global_6[85]  th=%d, value=%d\n" 
	 .align 8 
.str_1542:
 	 .string "global_6[85]  %s\n" 
	 .align 8 
.str_1541:
 	 .string "pass" 
	 .align 8 
.str_1540:
 	 .string "failed" 
	 .align 8 
.str_1539:
 	 .string "----------------------\n" 
	 .align 8 
.str_1538:
 	 .string "global_5[85]  th=%d, value=%d\n" 
	 .align 8 
.str_1537:
 	 .string "global_5[85]  %s\n" 
	 .align 8 
.str_1536:
 	 .string "pass" 
	 .align 8 
.str_1535:
 	 .string "failed" 
	 .align 8 
.str_1534:
 	 .string "----------------------\n" 
	 .align 8 
.str_1533:
 	 .string "global_6[84]  th=%d, value=%d\n" 
	 .align 8 
.str_1532:
 	 .string "global_6[84]  %s\n" 
	 .align 8 
.str_1531:
 	 .string "pass" 
	 .align 8 
.str_1530:
 	 .string "failed" 
	 .align 8 
.str_1529:
 	 .string "----------------------\n" 
	 .align 8 
.str_1528:
 	 .string "global_5[84]  th=%d, value=%d\n" 
	 .align 8 
.str_1527:
 	 .string "global_5[84]  %s\n" 
	 .align 8 
.str_1526:
 	 .string "pass" 
	 .align 8 
.str_1525:
 	 .string "failed" 
	 .align 8 
.str_1524:
 	 .string "----------------------\n" 
	 .align 8 
.str_1523:
 	 .string "global_6[83]  th=%d, value=%d\n" 
	 .align 8 
.str_1522:
 	 .string "global_6[83]  %s\n" 
	 .align 8 
.str_1521:
 	 .string "pass" 
	 .align 8 
.str_1520:
 	 .string "failed" 
	 .align 8 
.str_1519:
 	 .string "----------------------\n" 
	 .align 8 
.str_1518:
 	 .string "global_5[83]  th=%d, value=%d\n" 
	 .align 8 
.str_1517:
 	 .string "global_5[83]  %s\n" 
	 .align 8 
.str_1516:
 	 .string "pass" 
	 .align 8 
.str_1515:
 	 .string "failed" 
	 .align 8 
.str_1514:
 	 .string "----------------------\n" 
	 .align 8 
.str_1513:
 	 .string "global_6[82]  th=%d, value=%d\n" 
	 .align 8 
.str_1512:
 	 .string "global_6[82]  %s\n" 
	 .align 8 
.str_1511:
 	 .string "pass" 
	 .align 8 
.str_1510:
 	 .string "failed" 
	 .align 8 
.str_1509:
 	 .string "----------------------\n" 
	 .align 8 
.str_1508:
 	 .string "global_5[82]  th=%d, value=%d\n" 
	 .align 8 
.str_1507:
 	 .string "global_5[82]  %s\n" 
	 .align 8 
.str_1506:
 	 .string "pass" 
	 .align 8 
.str_1505:
 	 .string "failed" 
	 .align 8 
.str_1504:
 	 .string "----------------------\n" 
	 .align 8 
.str_1503:
 	 .string "global_6[81]  th=%d, value=%d\n" 
	 .align 8 
.str_1502:
 	 .string "global_6[81]  %s\n" 
	 .align 8 
.str_1501:
 	 .string "pass" 
	 .align 8 
.str_1500:
 	 .string "failed" 
	 .align 8 
.str_1499:
 	 .string "----------------------\n" 
	 .align 8 
.str_1498:
 	 .string "global_5[81]  th=%d, value=%d\n" 
	 .align 8 
.str_1497:
 	 .string "global_5[81]  %s\n" 
	 .align 8 
.str_1496:
 	 .string "pass" 
	 .align 8 
.str_1495:
 	 .string "failed" 
	 .align 8 
.str_1494:
 	 .string "----------------------\n" 
	 .align 8 
.str_1493:
 	 .string "global_6[80]  th=%d, value=%d\n" 
	 .align 8 
.str_1492:
 	 .string "global_6[80]  %s\n" 
	 .align 8 
.str_1491:
 	 .string "pass" 
	 .align 8 
.str_1490:
 	 .string "failed" 
	 .align 8 
.str_1489:
 	 .string "----------------------\n" 
	 .align 8 
.str_1488:
 	 .string "global_5[80]  th=%d, value=%d\n" 
	 .align 8 
.str_1487:
 	 .string "global_5[80]  %s\n" 
	 .align 8 
.str_1486:
 	 .string "pass" 
	 .align 8 
.str_1485:
 	 .string "failed" 
	 .align 8 
.str_1484:
 	 .string "----------------------\n" 
	 .align 8 
.str_1483:
 	 .string "global_6[79]  th=%d, value=%d\n" 
	 .align 8 
.str_1482:
 	 .string "global_6[79]  %s\n" 
	 .align 8 
.str_1481:
 	 .string "pass" 
	 .align 8 
.str_1480:
 	 .string "failed" 
	 .align 8 
.str_1479:
 	 .string "----------------------\n" 
	 .align 8 
.str_1478:
 	 .string "global_5[79]  th=%d, value=%d\n" 
	 .align 8 
.str_1477:
 	 .string "global_5[79]  %s\n" 
	 .align 8 
.str_1476:
 	 .string "pass" 
	 .align 8 
.str_1475:
 	 .string "failed" 
	 .align 8 
.str_1474:
 	 .string "----------------------\n" 
	 .align 8 
.str_1473:
 	 .string "global_6[78]  th=%d, value=%d\n" 
	 .align 8 
.str_1472:
 	 .string "global_6[78]  %s\n" 
	 .align 8 
.str_1471:
 	 .string "pass" 
	 .align 8 
.str_1470:
 	 .string "failed" 
	 .align 8 
.str_1469:
 	 .string "----------------------\n" 
	 .align 8 
.str_1468:
 	 .string "global_5[78]  th=%d, value=%d\n" 
	 .align 8 
.str_1467:
 	 .string "global_5[78]  %s\n" 
	 .align 8 
.str_1466:
 	 .string "pass" 
	 .align 8 
.str_1465:
 	 .string "failed" 
	 .align 8 
.str_1464:
 	 .string "----------------------\n" 
	 .align 8 
.str_1463:
 	 .string "global_6[77]  th=%d, value=%d\n" 
	 .align 8 
.str_1462:
 	 .string "global_6[77]  %s\n" 
	 .align 8 
.str_1461:
 	 .string "pass" 
	 .align 8 
.str_1460:
 	 .string "failed" 
	 .align 8 
.str_1459:
 	 .string "----------------------\n" 
	 .align 8 
.str_1458:
 	 .string "global_5[77]  th=%d, value=%d\n" 
	 .align 8 
.str_1457:
 	 .string "global_5[77]  %s\n" 
	 .align 8 
.str_1456:
 	 .string "pass" 
	 .align 8 
.str_1455:
 	 .string "failed" 
	 .align 8 
.str_1454:
 	 .string "----------------------\n" 
	 .align 8 
.str_1453:
 	 .string "global_6[76]  th=%d, value=%d\n" 
	 .align 8 
.str_1452:
 	 .string "global_6[76]  %s\n" 
	 .align 8 
.str_1451:
 	 .string "pass" 
	 .align 8 
.str_1450:
 	 .string "failed" 
	 .align 8 
.str_1449:
 	 .string "----------------------\n" 
	 .align 8 
.str_1448:
 	 .string "global_5[76]  th=%d, value=%d\n" 
	 .align 8 
.str_1447:
 	 .string "global_5[76]  %s\n" 
	 .align 8 
.str_1446:
 	 .string "pass" 
	 .align 8 
.str_1445:
 	 .string "failed" 
	 .align 8 
.str_1444:
 	 .string "----------------------\n" 
	 .align 8 
.str_1443:
 	 .string "global_6[75]  th=%d, value=%d\n" 
	 .align 8 
.str_1442:
 	 .string "global_6[75]  %s\n" 
	 .align 8 
.str_1441:
 	 .string "pass" 
	 .align 8 
.str_1440:
 	 .string "failed" 
	 .align 8 
.str_1439:
 	 .string "----------------------\n" 
	 .align 8 
.str_1438:
 	 .string "global_5[75]  th=%d, value=%d\n" 
	 .align 8 
.str_1437:
 	 .string "global_5[75]  %s\n" 
	 .align 8 
.str_1436:
 	 .string "pass" 
	 .align 8 
.str_1435:
 	 .string "failed" 
	 .align 8 
.str_1434:
 	 .string "----------------------\n" 
	 .align 8 
.str_1433:
 	 .string "global_6[74]  th=%d, value=%d\n" 
	 .align 8 
.str_1432:
 	 .string "global_6[74]  %s\n" 
	 .align 8 
.str_1431:
 	 .string "pass" 
	 .align 8 
.str_1430:
 	 .string "failed" 
	 .align 8 
.str_1429:
 	 .string "----------------------\n" 
	 .align 8 
.str_1428:
 	 .string "global_5[74]  th=%d, value=%d\n" 
	 .align 8 
.str_1427:
 	 .string "global_5[74]  %s\n" 
	 .align 8 
.str_1426:
 	 .string "pass" 
	 .align 8 
.str_1425:
 	 .string "failed" 
	 .align 8 
.str_1424:
 	 .string "----------------------\n" 
	 .align 8 
.str_1423:
 	 .string "global_6[73]  th=%d, value=%d\n" 
	 .align 8 
.str_1422:
 	 .string "global_6[73]  %s\n" 
	 .align 8 
.str_1421:
 	 .string "pass" 
	 .align 8 
.str_1420:
 	 .string "failed" 
	 .align 8 
.str_1419:
 	 .string "----------------------\n" 
	 .align 8 
.str_1418:
 	 .string "global_5[73]  th=%d, value=%d\n" 
	 .align 8 
.str_1417:
 	 .string "global_5[73]  %s\n" 
	 .align 8 
.str_1416:
 	 .string "pass" 
	 .align 8 
.str_1415:
 	 .string "failed" 
	 .align 8 
.str_1414:
 	 .string "----------------------\n" 
	 .align 8 
.str_1413:
 	 .string "global_6[72]  th=%d, value=%d\n" 
	 .align 8 
.str_1412:
 	 .string "global_6[72]  %s\n" 
	 .align 8 
.str_1411:
 	 .string "pass" 
	 .align 8 
.str_1410:
 	 .string "failed" 
	 .align 8 
.str_1409:
 	 .string "----------------------\n" 
	 .align 8 
.str_1408:
 	 .string "global_5[72]  th=%d, value=%d\n" 
	 .align 8 
.str_1407:
 	 .string "global_5[72]  %s\n" 
	 .align 8 
.str_1406:
 	 .string "pass" 
	 .align 8 
.str_1405:
 	 .string "failed" 
	 .align 8 
.str_1404:
 	 .string "----------------------\n" 
	 .align 8 
.str_1403:
 	 .string "global_6[71]  th=%d, value=%d\n" 
	 .align 8 
.str_1402:
 	 .string "global_6[71]  %s\n" 
	 .align 8 
.str_1401:
 	 .string "pass" 
	 .align 8 
.str_1400:
 	 .string "failed" 
	 .align 8 
.str_1399:
 	 .string "----------------------\n" 
	 .align 8 
.str_1398:
 	 .string "global_5[71]  th=%d, value=%d\n" 
	 .align 8 
.str_1397:
 	 .string "global_5[71]  %s\n" 
	 .align 8 
.str_1396:
 	 .string "pass" 
	 .align 8 
.str_1395:
 	 .string "failed" 
	 .align 8 
.str_1394:
 	 .string "----------------------\n" 
	 .align 8 
.str_1393:
 	 .string "global_6[70]  th=%d, value=%d\n" 
	 .align 8 
.str_1392:
 	 .string "global_6[70]  %s\n" 
	 .align 8 
.str_1391:
 	 .string "pass" 
	 .align 8 
.str_1390:
 	 .string "failed" 
	 .align 8 
.str_1389:
 	 .string "----------------------\n" 
	 .align 8 
.str_1388:
 	 .string "global_5[70]  th=%d, value=%d\n" 
	 .align 8 
.str_1387:
 	 .string "global_5[70]  %s\n" 
	 .align 8 
.str_1386:
 	 .string "pass" 
	 .align 8 
.str_1385:
 	 .string "failed" 
	 .align 8 
.str_1384:
 	 .string "----------------------\n" 
	 .align 8 
.str_1383:
 	 .string "global_6[69]  th=%d, value=%d\n" 
	 .align 8 
.str_1382:
 	 .string "global_6[69]  %s\n" 
	 .align 8 
.str_1381:
 	 .string "pass" 
	 .align 8 
.str_1380:
 	 .string "failed" 
	 .align 8 
.str_1379:
 	 .string "----------------------\n" 
	 .align 8 
.str_1378:
 	 .string "global_5[69]  th=%d, value=%d\n" 
	 .align 8 
.str_1377:
 	 .string "global_5[69]  %s\n" 
	 .align 8 
.str_1376:
 	 .string "pass" 
	 .align 8 
.str_1375:
 	 .string "failed" 
	 .align 8 
.str_1374:
 	 .string "----------------------\n" 
	 .align 8 
.str_1373:
 	 .string "global_6[68]  th=%d, value=%d\n" 
	 .align 8 
.str_1372:
 	 .string "global_6[68]  %s\n" 
	 .align 8 
.str_1371:
 	 .string "pass" 
	 .align 8 
.str_1370:
 	 .string "failed" 
	 .align 8 
.str_1369:
 	 .string "----------------------\n" 
	 .align 8 
.str_1368:
 	 .string "global_5[68]  th=%d, value=%d\n" 
	 .align 8 
.str_1367:
 	 .string "global_5[68]  %s\n" 
	 .align 8 
.str_1366:
 	 .string "pass" 
	 .align 8 
.str_1365:
 	 .string "failed" 
	 .align 8 
.str_1364:
 	 .string "----------------------\n" 
	 .align 8 
.str_1363:
 	 .string "global_6[67]  th=%d, value=%d\n" 
	 .align 8 
.str_1362:
 	 .string "global_6[67]  %s\n" 
	 .align 8 
.str_1361:
 	 .string "pass" 
	 .align 8 
.str_1360:
 	 .string "failed" 
	 .align 8 
.str_1359:
 	 .string "----------------------\n" 
	 .align 8 
.str_1358:
 	 .string "global_5[67]  th=%d, value=%d\n" 
	 .align 8 
.str_1357:
 	 .string "global_5[67]  %s\n" 
	 .align 8 
.str_1356:
 	 .string "pass" 
	 .align 8 
.str_1355:
 	 .string "failed" 
	 .align 8 
.str_1354:
 	 .string "----------------------\n" 
	 .align 8 
.str_1353:
 	 .string "global_6[66]  th=%d, value=%d\n" 
	 .align 8 
.str_1352:
 	 .string "global_6[66]  %s\n" 
	 .align 8 
.str_1351:
 	 .string "pass" 
	 .align 8 
.str_1350:
 	 .string "failed" 
	 .align 8 
.str_1349:
 	 .string "----------------------\n" 
	 .align 8 
.str_1348:
 	 .string "global_5[66]  th=%d, value=%d\n" 
	 .align 8 
.str_1347:
 	 .string "global_5[66]  %s\n" 
	 .align 8 
.str_1346:
 	 .string "pass" 
	 .align 8 
.str_1345:
 	 .string "failed" 
	 .align 8 
.str_1344:
 	 .string "----------------------\n" 
	 .align 8 
.str_1343:
 	 .string "global_6[65]  th=%d, value=%d\n" 
	 .align 8 
.str_1342:
 	 .string "global_6[65]  %s\n" 
	 .align 8 
.str_1341:
 	 .string "pass" 
	 .align 8 
.str_1340:
 	 .string "failed" 
	 .align 8 
.str_1339:
 	 .string "----------------------\n" 
	 .align 8 
.str_1338:
 	 .string "global_5[65]  th=%d, value=%d\n" 
	 .align 8 
.str_1337:
 	 .string "global_5[65]  %s\n" 
	 .align 8 
.str_1336:
 	 .string "pass" 
	 .align 8 
.str_1335:
 	 .string "failed" 
	 .align 8 
.str_1334:
 	 .string "----------------------\n" 
	 .align 8 
.str_1333:
 	 .string "global_6[64]  th=%d, value=%d\n" 
	 .align 8 
.str_1332:
 	 .string "global_6[64]  %s\n" 
	 .align 8 
.str_1331:
 	 .string "pass" 
	 .align 8 
.str_1330:
 	 .string "failed" 
	 .align 8 
.str_1329:
 	 .string "----------------------\n" 
	 .align 8 
.str_1328:
 	 .string "global_5[64]  th=%d, value=%d\n" 
	 .align 8 
.str_1327:
 	 .string "global_5[64]  %s\n" 
	 .align 8 
.str_1326:
 	 .string "pass" 
	 .align 8 
.str_1325:
 	 .string "failed" 
	 .align 8 
.str_1324:
 	 .string "----------------------\n" 
	 .align 8 
.str_1323:
 	 .string "global_6[63]  th=%d, value=%d\n" 
	 .align 8 
.str_1322:
 	 .string "global_6[63]  %s\n" 
	 .align 8 
.str_1321:
 	 .string "pass" 
	 .align 8 
.str_1320:
 	 .string "failed" 
	 .align 8 
.str_1319:
 	 .string "----------------------\n" 
	 .align 8 
.str_1318:
 	 .string "global_5[63]  th=%d, value=%d\n" 
	 .align 8 
.str_1317:
 	 .string "global_5[63]  %s\n" 
	 .align 8 
.str_1316:
 	 .string "pass" 
	 .align 8 
.str_1315:
 	 .string "failed" 
	 .align 8 
.str_1314:
 	 .string "----------------------\n" 
	 .align 8 
.str_1313:
 	 .string "global_6[62]  th=%d, value=%d\n" 
	 .align 8 
.str_1312:
 	 .string "global_6[62]  %s\n" 
	 .align 8 
.str_1311:
 	 .string "pass" 
	 .align 8 
.str_1310:
 	 .string "failed" 
	 .align 8 
.str_1309:
 	 .string "----------------------\n" 
	 .align 8 
.str_1308:
 	 .string "global_5[62]  th=%d, value=%d\n" 
	 .align 8 
.str_1307:
 	 .string "global_5[62]  %s\n" 
	 .align 8 
.str_1306:
 	 .string "pass" 
	 .align 8 
.str_1305:
 	 .string "failed" 
	 .align 8 
.str_1304:
 	 .string "----------------------\n" 
	 .align 8 
.str_1303:
 	 .string "global_6[61]  th=%d, value=%d\n" 
	 .align 8 
.str_1302:
 	 .string "global_6[61]  %s\n" 
	 .align 8 
.str_1301:
 	 .string "pass" 
	 .align 8 
.str_1300:
 	 .string "failed" 
	 .align 8 
.str_1299:
 	 .string "----------------------\n" 
	 .align 8 
.str_1298:
 	 .string "global_5[61]  th=%d, value=%d\n" 
	 .align 8 
.str_1297:
 	 .string "global_5[61]  %s\n" 
	 .align 8 
.str_1296:
 	 .string "pass" 
	 .align 8 
.str_1295:
 	 .string "failed" 
	 .align 8 
.str_1294:
 	 .string "----------------------\n" 
	 .align 8 
.str_1293:
 	 .string "global_6[60]  th=%d, value=%d\n" 
	 .align 8 
.str_1292:
 	 .string "global_6[60]  %s\n" 
	 .align 8 
.str_1291:
 	 .string "pass" 
	 .align 8 
.str_1290:
 	 .string "failed" 
	 .align 8 
.str_1289:
 	 .string "----------------------\n" 
	 .align 8 
.str_1288:
 	 .string "global_5[60]  th=%d, value=%d\n" 
	 .align 8 
.str_1287:
 	 .string "global_5[60]  %s\n" 
	 .align 8 
.str_1286:
 	 .string "pass" 
	 .align 8 
.str_1285:
 	 .string "failed" 
	 .align 8 
.str_1284:
 	 .string "----------------------\n" 
	 .align 8 
.str_1283:
 	 .string "global_6[59]  th=%d, value=%d\n" 
	 .align 8 
.str_1282:
 	 .string "global_6[59]  %s\n" 
	 .align 8 
.str_1281:
 	 .string "pass" 
	 .align 8 
.str_1280:
 	 .string "failed" 
	 .align 8 
.str_1279:
 	 .string "----------------------\n" 
	 .align 8 
.str_1278:
 	 .string "global_5[59]  th=%d, value=%d\n" 
	 .align 8 
.str_1277:
 	 .string "global_5[59]  %s\n" 
	 .align 8 
.str_1276:
 	 .string "pass" 
	 .align 8 
.str_1275:
 	 .string "failed" 
	 .align 8 
.str_1274:
 	 .string "----------------------\n" 
	 .align 8 
.str_1273:
 	 .string "global_6[58]  th=%d, value=%d\n" 
	 .align 8 
.str_1272:
 	 .string "global_6[58]  %s\n" 
	 .align 8 
.str_1271:
 	 .string "pass" 
	 .align 8 
.str_1270:
 	 .string "failed" 
	 .align 8 
.str_1269:
 	 .string "----------------------\n" 
	 .align 8 
.str_1268:
 	 .string "global_5[58]  th=%d, value=%d\n" 
	 .align 8 
.str_1267:
 	 .string "global_5[58]  %s\n" 
	 .align 8 
.str_1266:
 	 .string "pass" 
	 .align 8 
.str_1265:
 	 .string "failed" 
	 .align 8 
.str_1264:
 	 .string "----------------------\n" 
	 .align 8 
.str_1263:
 	 .string "global_6[57]  th=%d, value=%d\n" 
	 .align 8 
.str_1262:
 	 .string "global_6[57]  %s\n" 
	 .align 8 
.str_1261:
 	 .string "pass" 
	 .align 8 
.str_1260:
 	 .string "failed" 
	 .align 8 
.str_1259:
 	 .string "----------------------\n" 
	 .align 8 
.str_1258:
 	 .string "global_5[57]  th=%d, value=%d\n" 
	 .align 8 
.str_1257:
 	 .string "global_5[57]  %s\n" 
	 .align 8 
.str_1256:
 	 .string "pass" 
	 .align 8 
.str_1255:
 	 .string "failed" 
	 .align 8 
.str_1254:
 	 .string "----------------------\n" 
	 .align 8 
.str_1253:
 	 .string "global_6[56]  th=%d, value=%d\n" 
	 .align 8 
.str_1252:
 	 .string "global_6[56]  %s\n" 
	 .align 8 
.str_1251:
 	 .string "pass" 
	 .align 8 
.str_1250:
 	 .string "failed" 
	 .align 8 
.str_1249:
 	 .string "----------------------\n" 
	 .align 8 
.str_1248:
 	 .string "global_5[56]  th=%d, value=%d\n" 
	 .align 8 
.str_1247:
 	 .string "global_5[56]  %s\n" 
	 .align 8 
.str_1246:
 	 .string "pass" 
	 .align 8 
.str_1245:
 	 .string "failed" 
	 .align 8 
.str_1244:
 	 .string "----------------------\n" 
	 .align 8 
.str_1243:
 	 .string "global_6[55]  th=%d, value=%d\n" 
	 .align 8 
.str_1242:
 	 .string "global_6[55]  %s\n" 
	 .align 8 
.str_1241:
 	 .string "pass" 
	 .align 8 
.str_1240:
 	 .string "failed" 
	 .align 8 
.str_1239:
 	 .string "----------------------\n" 
	 .align 8 
.str_1238:
 	 .string "global_5[55]  th=%d, value=%d\n" 
	 .align 8 
.str_1237:
 	 .string "global_5[55]  %s\n" 
	 .align 8 
.str_1236:
 	 .string "pass" 
	 .align 8 
.str_1235:
 	 .string "failed" 
	 .align 8 
.str_1234:
 	 .string "----------------------\n" 
	 .align 8 
.str_1233:
 	 .string "global_6[54]  th=%d, value=%d\n" 
	 .align 8 
.str_1232:
 	 .string "global_6[54]  %s\n" 
	 .align 8 
.str_1231:
 	 .string "pass" 
	 .align 8 
.str_1230:
 	 .string "failed" 
	 .align 8 
.str_1229:
 	 .string "----------------------\n" 
	 .align 8 
.str_1228:
 	 .string "global_5[54]  th=%d, value=%d\n" 
	 .align 8 
.str_1227:
 	 .string "global_5[54]  %s\n" 
	 .align 8 
.str_1226:
 	 .string "pass" 
	 .align 8 
.str_1225:
 	 .string "failed" 
	 .align 8 
.str_1224:
 	 .string "----------------------\n" 
	 .align 8 
.str_1223:
 	 .string "global_6[53]  th=%d, value=%d\n" 
	 .align 8 
.str_1222:
 	 .string "global_6[53]  %s\n" 
	 .align 8 
.str_1221:
 	 .string "pass" 
	 .align 8 
.str_1220:
 	 .string "failed" 
	 .align 8 
.str_1219:
 	 .string "----------------------\n" 
	 .align 8 
.str_1218:
 	 .string "global_5[53]  th=%d, value=%d\n" 
	 .align 8 
.str_1217:
 	 .string "global_5[53]  %s\n" 
	 .align 8 
.str_1216:
 	 .string "pass" 
	 .align 8 
.str_1215:
 	 .string "failed" 
	 .align 8 
.str_1214:
 	 .string "----------------------\n" 
	 .align 8 
.str_1213:
 	 .string "global_6[52]  th=%d, value=%d\n" 
	 .align 8 
.str_1212:
 	 .string "global_6[52]  %s\n" 
	 .align 8 
.str_1211:
 	 .string "pass" 
	 .align 8 
.str_1210:
 	 .string "failed" 
	 .align 8 
.str_1209:
 	 .string "----------------------\n" 
	 .align 8 
.str_1208:
 	 .string "global_5[52]  th=%d, value=%d\n" 
	 .align 8 
.str_1207:
 	 .string "global_5[52]  %s\n" 
	 .align 8 
.str_1206:
 	 .string "pass" 
	 .align 8 
.str_1205:
 	 .string "failed" 
	 .align 8 
.str_1204:
 	 .string "----------------------\n" 
	 .align 8 
.str_1203:
 	 .string "global_6[51]  th=%d, value=%d\n" 
	 .align 8 
.str_1202:
 	 .string "global_6[51]  %s\n" 
	 .align 8 
.str_1201:
 	 .string "pass" 
	 .align 8 
.str_1200:
 	 .string "failed" 
	 .align 8 
.str_1199:
 	 .string "----------------------\n" 
	 .align 8 
.str_1198:
 	 .string "global_5[51]  th=%d, value=%d\n" 
	 .align 8 
.str_1197:
 	 .string "global_5[51]  %s\n" 
	 .align 8 
.str_1196:
 	 .string "pass" 
	 .align 8 
.str_1195:
 	 .string "failed" 
	 .align 8 
.str_1194:
 	 .string "----------------------\n" 
	 .align 8 
.str_1193:
 	 .string "global_6[50]  th=%d, value=%d\n" 
	 .align 8 
.str_1192:
 	 .string "global_6[50]  %s\n" 
	 .align 8 
.str_1191:
 	 .string "pass" 
	 .align 8 
.str_1190:
 	 .string "failed" 
	 .align 8 
.str_1189:
 	 .string "----------------------\n" 
	 .align 8 
.str_1188:
 	 .string "global_5[50]  th=%d, value=%d\n" 
	 .align 8 
.str_1187:
 	 .string "global_5[50]  %s\n" 
	 .align 8 
.str_1186:
 	 .string "pass" 
	 .align 8 
.str_1185:
 	 .string "failed" 
	 .align 8 
.str_1184:
 	 .string "----------------------\n" 
	 .align 8 
.str_1183:
 	 .string "global_6[49]  th=%d, value=%d\n" 
	 .align 8 
.str_1182:
 	 .string "global_6[49]  %s\n" 
	 .align 8 
.str_1181:
 	 .string "pass" 
	 .align 8 
.str_1180:
 	 .string "failed" 
	 .align 8 
.str_1179:
 	 .string "----------------------\n" 
	 .align 8 
.str_1178:
 	 .string "global_5[49]  th=%d, value=%d\n" 
	 .align 8 
.str_1177:
 	 .string "global_5[49]  %s\n" 
	 .align 8 
.str_1176:
 	 .string "pass" 
	 .align 8 
.str_1175:
 	 .string "failed" 
	 .align 8 
.str_1174:
 	 .string "----------------------\n" 
	 .align 8 
.str_1173:
 	 .string "global_6[48]  th=%d, value=%d\n" 
	 .align 8 
.str_1172:
 	 .string "global_6[48]  %s\n" 
	 .align 8 
.str_1171:
 	 .string "pass" 
	 .align 8 
.str_1170:
 	 .string "failed" 
	 .align 8 
.str_1169:
 	 .string "----------------------\n" 
	 .align 8 
.str_1168:
 	 .string "global_5[48]  th=%d, value=%d\n" 
	 .align 8 
.str_1167:
 	 .string "global_5[48]  %s\n" 
	 .align 8 
.str_1166:
 	 .string "pass" 
	 .align 8 
.str_1165:
 	 .string "failed" 
	 .align 8 
.str_1164:
 	 .string "----------------------\n" 
	 .align 8 
.str_1163:
 	 .string "global_6[47]  th=%d, value=%d\n" 
	 .align 8 
.str_1162:
 	 .string "global_6[47]  %s\n" 
	 .align 8 
.str_1161:
 	 .string "pass" 
	 .align 8 
.str_1160:
 	 .string "failed" 
	 .align 8 
.str_1159:
 	 .string "----------------------\n" 
	 .align 8 
.str_1158:
 	 .string "global_5[47]  th=%d, value=%d\n" 
	 .align 8 
.str_1157:
 	 .string "global_5[47]  %s\n" 
	 .align 8 
.str_1156:
 	 .string "pass" 
	 .align 8 
.str_1155:
 	 .string "failed" 
	 .align 8 
.str_1154:
 	 .string "----------------------\n" 
	 .align 8 
.str_1153:
 	 .string "global_6[46]  th=%d, value=%d\n" 
	 .align 8 
.str_1152:
 	 .string "global_6[46]  %s\n" 
	 .align 8 
.str_1151:
 	 .string "pass" 
	 .align 8 
.str_1150:
 	 .string "failed" 
	 .align 8 
.str_1149:
 	 .string "----------------------\n" 
	 .align 8 
.str_1148:
 	 .string "global_5[46]  th=%d, value=%d\n" 
	 .align 8 
.str_1147:
 	 .string "global_5[46]  %s\n" 
	 .align 8 
.str_1146:
 	 .string "pass" 
	 .align 8 
.str_1145:
 	 .string "failed" 
	 .align 8 
.str_1144:
 	 .string "----------------------\n" 
	 .align 8 
.str_1143:
 	 .string "global_6[45]  th=%d, value=%d\n" 
	 .align 8 
.str_1142:
 	 .string "global_6[45]  %s\n" 
	 .align 8 
.str_1141:
 	 .string "pass" 
	 .align 8 
.str_1140:
 	 .string "failed" 
	 .align 8 
.str_1139:
 	 .string "----------------------\n" 
	 .align 8 
.str_1138:
 	 .string "global_5[45]  th=%d, value=%d\n" 
	 .align 8 
.str_1137:
 	 .string "global_5[45]  %s\n" 
	 .align 8 
.str_1136:
 	 .string "pass" 
	 .align 8 
.str_1135:
 	 .string "failed" 
	 .align 8 
.str_1134:
 	 .string "----------------------\n" 
	 .align 8 
.str_1133:
 	 .string "global_6[44]  th=%d, value=%d\n" 
	 .align 8 
.str_1132:
 	 .string "global_6[44]  %s\n" 
	 .align 8 
.str_1131:
 	 .string "pass" 
	 .align 8 
.str_1130:
 	 .string "failed" 
	 .align 8 
.str_1129:
 	 .string "----------------------\n" 
	 .align 8 
.str_1128:
 	 .string "global_5[44]  th=%d, value=%d\n" 
	 .align 8 
.str_1127:
 	 .string "global_5[44]  %s\n" 
	 .align 8 
.str_1126:
 	 .string "pass" 
	 .align 8 
.str_1125:
 	 .string "failed" 
	 .align 8 
.str_1124:
 	 .string "----------------------\n" 
	 .align 8 
.str_1123:
 	 .string "global_6[43]  th=%d, value=%d\n" 
	 .align 8 
.str_1122:
 	 .string "global_6[43]  %s\n" 
	 .align 8 
.str_1121:
 	 .string "pass" 
	 .align 8 
.str_1120:
 	 .string "failed" 
	 .align 8 
.str_1119:
 	 .string "----------------------\n" 
	 .align 8 
.str_1118:
 	 .string "global_5[43]  th=%d, value=%d\n" 
	 .align 8 
.str_1117:
 	 .string "global_5[43]  %s\n" 
	 .align 8 
.str_1116:
 	 .string "pass" 
	 .align 8 
.str_1115:
 	 .string "failed" 
	 .align 8 
.str_1114:
 	 .string "----------------------\n" 
	 .align 8 
.str_1113:
 	 .string "global_6[42]  th=%d, value=%d\n" 
	 .align 8 
.str_1112:
 	 .string "global_6[42]  %s\n" 
	 .align 8 
.str_1111:
 	 .string "pass" 
	 .align 8 
.str_1110:
 	 .string "failed" 
	 .align 8 
.str_1109:
 	 .string "----------------------\n" 
	 .align 8 
.str_1108:
 	 .string "global_5[42]  th=%d, value=%d\n" 
	 .align 8 
.str_1107:
 	 .string "global_5[42]  %s\n" 
	 .align 8 
.str_1106:
 	 .string "pass" 
	 .align 8 
.str_1105:
 	 .string "failed" 
	 .align 8 
.str_1104:
 	 .string "----------------------\n" 
	 .align 8 
.str_1103:
 	 .string "global_6[41]  th=%d, value=%d\n" 
	 .align 8 
.str_1102:
 	 .string "global_6[41]  %s\n" 
	 .align 8 
.str_1101:
 	 .string "pass" 
	 .align 8 
.str_1100:
 	 .string "failed" 
	 .align 8 
.str_1099:
 	 .string "----------------------\n" 
	 .align 8 
.str_1098:
 	 .string "global_5[41]  th=%d, value=%d\n" 
	 .align 8 
.str_1097:
 	 .string "global_5[41]  %s\n" 
	 .align 8 
.str_1096:
 	 .string "pass" 
	 .align 8 
.str_1095:
 	 .string "failed" 
	 .align 8 
.str_1094:
 	 .string "----------------------\n" 
	 .align 8 
.str_1093:
 	 .string "global_6[40]  th=%d, value=%d\n" 
	 .align 8 
.str_1092:
 	 .string "global_6[40]  %s\n" 
	 .align 8 
.str_1091:
 	 .string "pass" 
	 .align 8 
.str_1090:
 	 .string "failed" 
	 .align 8 
.str_1089:
 	 .string "----------------------\n" 
	 .align 8 
.str_1088:
 	 .string "global_5[40]  th=%d, value=%d\n" 
	 .align 8 
.str_1087:
 	 .string "global_5[40]  %s\n" 
	 .align 8 
.str_1086:
 	 .string "pass" 
	 .align 8 
.str_1085:
 	 .string "failed" 
	 .align 8 
.str_1084:
 	 .string "----------------------\n" 
	 .align 8 
.str_1083:
 	 .string "global_6[39]  th=%d, value=%d\n" 
	 .align 8 
.str_1082:
 	 .string "global_6[39]  %s\n" 
	 .align 8 
.str_1081:
 	 .string "pass" 
	 .align 8 
.str_1080:
 	 .string "failed" 
	 .align 8 
.str_1079:
 	 .string "----------------------\n" 
	 .align 8 
.str_1078:
 	 .string "global_5[39]  th=%d, value=%d\n" 
	 .align 8 
.str_1077:
 	 .string "global_5[39]  %s\n" 
	 .align 8 
.str_1076:
 	 .string "pass" 
	 .align 8 
.str_1075:
 	 .string "failed" 
	 .align 8 
.str_1074:
 	 .string "----------------------\n" 
	 .align 8 
.str_1073:
 	 .string "global_6[38]  th=%d, value=%d\n" 
	 .align 8 
.str_1072:
 	 .string "global_6[38]  %s\n" 
	 .align 8 
.str_1071:
 	 .string "pass" 
	 .align 8 
.str_1070:
 	 .string "failed" 
	 .align 8 
.str_1069:
 	 .string "----------------------\n" 
	 .align 8 
.str_1068:
 	 .string "global_5[38]  th=%d, value=%d\n" 
	 .align 8 
.str_1067:
 	 .string "global_5[38]  %s\n" 
	 .align 8 
.str_1066:
 	 .string "pass" 
	 .align 8 
.str_1065:
 	 .string "failed" 
	 .align 8 
.str_1064:
 	 .string "----------------------\n" 
	 .align 8 
.str_1063:
 	 .string "global_6[37]  th=%d, value=%d\n" 
	 .align 8 
.str_1062:
 	 .string "global_6[37]  %s\n" 
	 .align 8 
.str_1061:
 	 .string "pass" 
	 .align 8 
.str_1060:
 	 .string "failed" 
	 .align 8 
.str_1059:
 	 .string "----------------------\n" 
	 .align 8 
.str_1058:
 	 .string "global_5[37]  th=%d, value=%d\n" 
	 .align 8 
.str_1057:
 	 .string "global_5[37]  %s\n" 
	 .align 8 
.str_1056:
 	 .string "pass" 
	 .align 8 
.str_1055:
 	 .string "failed" 
	 .align 8 
.str_1054:
 	 .string "----------------------\n" 
	 .align 8 
.str_1053:
 	 .string "global_6[36]  th=%d, value=%d\n" 
	 .align 8 
.str_1052:
 	 .string "global_6[36]  %s\n" 
	 .align 8 
.str_1051:
 	 .string "pass" 
	 .align 8 
.str_1050:
 	 .string "failed" 
	 .align 8 
.str_1049:
 	 .string "----------------------\n" 
	 .align 8 
.str_1048:
 	 .string "global_5[36]  th=%d, value=%d\n" 
	 .align 8 
.str_1047:
 	 .string "global_5[36]  %s\n" 
	 .align 8 
.str_1046:
 	 .string "pass" 
	 .align 8 
.str_1045:
 	 .string "failed" 
	 .align 8 
.str_1044:
 	 .string "----------------------\n" 
	 .align 8 
.str_1043:
 	 .string "global_6[35]  th=%d, value=%d\n" 
	 .align 8 
.str_1042:
 	 .string "global_6[35]  %s\n" 
	 .align 8 
.str_1041:
 	 .string "pass" 
	 .align 8 
.str_1040:
 	 .string "failed" 
	 .align 8 
.str_1039:
 	 .string "----------------------\n" 
	 .align 8 
.str_1038:
 	 .string "global_5[35]  th=%d, value=%d\n" 
	 .align 8 
.str_1037:
 	 .string "global_5[35]  %s\n" 
	 .align 8 
.str_1036:
 	 .string "pass" 
	 .align 8 
.str_1035:
 	 .string "failed" 
	 .align 8 
.str_1034:
 	 .string "----------------------\n" 
	 .align 8 
.str_1033:
 	 .string "global_6[34]  th=%d, value=%d\n" 
	 .align 8 
.str_1032:
 	 .string "global_6[34]  %s\n" 
	 .align 8 
.str_1031:
 	 .string "pass" 
	 .align 8 
.str_1030:
 	 .string "failed" 
	 .align 8 
.str_1029:
 	 .string "----------------------\n" 
	 .align 8 
.str_1028:
 	 .string "global_5[34]  th=%d, value=%d\n" 
	 .align 8 
.str_1027:
 	 .string "global_5[34]  %s\n" 
	 .align 8 
.str_1026:
 	 .string "pass" 
	 .align 8 
.str_1025:
 	 .string "failed" 
	 .align 8 
.str_1024:
 	 .string "----------------------\n" 
	 .align 8 
.str_1023:
 	 .string "global_6[33]  th=%d, value=%d\n" 
	 .align 8 
.str_1022:
 	 .string "global_6[33]  %s\n" 
	 .align 8 
.str_1021:
 	 .string "pass" 
	 .align 8 
.str_1020:
 	 .string "failed" 
	 .align 8 
.str_1019:
 	 .string "----------------------\n" 
	 .align 8 
.str_1018:
 	 .string "global_5[33]  th=%d, value=%d\n" 
	 .align 8 
.str_1017:
 	 .string "global_5[33]  %s\n" 
	 .align 8 
.str_1016:
 	 .string "pass" 
	 .align 8 
.str_1015:
 	 .string "failed" 
	 .align 8 
.str_1014:
 	 .string "----------------------\n" 
	 .align 8 
.str_1013:
 	 .string "global_6[32]  th=%d, value=%d\n" 
	 .align 8 
.str_1012:
 	 .string "global_6[32]  %s\n" 
	 .align 8 
.str_1011:
 	 .string "pass" 
	 .align 8 
.str_1010:
 	 .string "failed" 
	 .align 8 
.str_1009:
 	 .string "----------------------\n" 
	 .align 8 
.str_1008:
 	 .string "global_5[32]  th=%d, value=%d\n" 
	 .align 8 
.str_1007:
 	 .string "global_5[32]  %s\n" 
	 .align 8 
.str_1006:
 	 .string "pass" 
	 .align 8 
.str_1005:
 	 .string "failed" 
	 .align 8 
.str_1004:
 	 .string "----------------------\n" 
	 .align 8 
.str_1003:
 	 .string "global_6[31]  th=%d, value=%d\n" 
	 .align 8 
.str_1002:
 	 .string "global_6[31]  %s\n" 
	 .align 8 
.str_1001:
 	 .string "pass" 
	 .align 8 
.str_1000:
 	 .string "failed" 
	 .align 8 
.str_999:
 	 .string "----------------------\n" 
	 .align 8 
.str_998:
 	 .string "global_5[31]  th=%d, value=%d\n" 
	 .align 8 
.str_997:
 	 .string "global_5[31]  %s\n" 
	 .align 8 
.str_996:
 	 .string "pass" 
	 .align 8 
.str_995:
 	 .string "failed" 
	 .align 8 
.str_994:
 	 .string "----------------------\n" 
	 .align 8 
.str_993:
 	 .string "global_6[30]  th=%d, value=%d\n" 
	 .align 8 
.str_992:
 	 .string "global_6[30]  %s\n" 
	 .align 8 
.str_991:
 	 .string "pass" 
	 .align 8 
.str_990:
 	 .string "failed" 
	 .align 8 
.str_989:
 	 .string "----------------------\n" 
	 .align 8 
.str_988:
 	 .string "global_5[30]  th=%d, value=%d\n" 
	 .align 8 
.str_987:
 	 .string "global_5[30]  %s\n" 
	 .align 8 
.str_986:
 	 .string "pass" 
	 .align 8 
.str_985:
 	 .string "failed" 
	 .align 8 
.str_984:
 	 .string "----------------------\n" 
	 .align 8 
.str_983:
 	 .string "global_6[29]  th=%d, value=%d\n" 
	 .align 8 
.str_982:
 	 .string "global_6[29]  %s\n" 
	 .align 8 
.str_981:
 	 .string "pass" 
	 .align 8 
.str_980:
 	 .string "failed" 
	 .align 8 
.str_979:
 	 .string "----------------------\n" 
	 .align 8 
.str_978:
 	 .string "global_5[29]  th=%d, value=%d\n" 
	 .align 8 
.str_977:
 	 .string "global_5[29]  %s\n" 
	 .align 8 
.str_976:
 	 .string "pass" 
	 .align 8 
.str_975:
 	 .string "failed" 
	 .align 8 
.str_974:
 	 .string "----------------------\n" 
	 .align 8 
.str_973:
 	 .string "global_6[28]  th=%d, value=%d\n" 
	 .align 8 
.str_972:
 	 .string "global_6[28]  %s\n" 
	 .align 8 
.str_971:
 	 .string "pass" 
	 .align 8 
.str_970:
 	 .string "failed" 
	 .align 8 
.str_969:
 	 .string "----------------------\n" 
	 .align 8 
.str_968:
 	 .string "global_5[28]  th=%d, value=%d\n" 
	 .align 8 
.str_967:
 	 .string "global_5[28]  %s\n" 
	 .align 8 
.str_966:
 	 .string "pass" 
	 .align 8 
.str_965:
 	 .string "failed" 
	 .align 8 
.str_964:
 	 .string "----------------------\n" 
	 .align 8 
.str_963:
 	 .string "global_6[27]  th=%d, value=%d\n" 
	 .align 8 
.str_962:
 	 .string "global_6[27]  %s\n" 
	 .align 8 
.str_961:
 	 .string "pass" 
	 .align 8 
.str_960:
 	 .string "failed" 
	 .align 8 
.str_959:
 	 .string "----------------------\n" 
	 .align 8 
.str_958:
 	 .string "global_5[27]  th=%d, value=%d\n" 
	 .align 8 
.str_957:
 	 .string "global_5[27]  %s\n" 
	 .align 8 
.str_956:
 	 .string "pass" 
	 .align 8 
.str_955:
 	 .string "failed" 
	 .align 8 
.str_954:
 	 .string "----------------------\n" 
	 .align 8 
.str_953:
 	 .string "global_6[26]  th=%d, value=%d\n" 
	 .align 8 
.str_952:
 	 .string "global_6[26]  %s\n" 
	 .align 8 
.str_951:
 	 .string "pass" 
	 .align 8 
.str_950:
 	 .string "failed" 
	 .align 8 
.str_949:
 	 .string "----------------------\n" 
	 .align 8 
.str_948:
 	 .string "global_5[26]  th=%d, value=%d\n" 
	 .align 8 
.str_947:
 	 .string "global_5[26]  %s\n" 
	 .align 8 
.str_946:
 	 .string "pass" 
	 .align 8 
.str_945:
 	 .string "failed" 
	 .align 8 
.str_944:
 	 .string "----------------------\n" 
	 .align 8 
.str_943:
 	 .string "global_6[25]  th=%d, value=%d\n" 
	 .align 8 
.str_942:
 	 .string "global_6[25]  %s\n" 
	 .align 8 
.str_941:
 	 .string "pass" 
	 .align 8 
.str_940:
 	 .string "failed" 
	 .align 8 
.str_939:
 	 .string "----------------------\n" 
	 .align 8 
.str_938:
 	 .string "global_5[25]  th=%d, value=%d\n" 
	 .align 8 
.str_937:
 	 .string "global_5[25]  %s\n" 
	 .align 8 
.str_936:
 	 .string "pass" 
	 .align 8 
.str_935:
 	 .string "failed" 
	 .align 8 
.str_934:
 	 .string "----------------------\n" 
	 .align 8 
.str_933:
 	 .string "global_6[24]  th=%d, value=%d\n" 
	 .align 8 
.str_932:
 	 .string "global_6[24]  %s\n" 
	 .align 8 
.str_931:
 	 .string "pass" 
	 .align 8 
.str_930:
 	 .string "failed" 
	 .align 8 
.str_929:
 	 .string "----------------------\n" 
	 .align 8 
.str_928:
 	 .string "global_5[24]  th=%d, value=%d\n" 
	 .align 8 
.str_927:
 	 .string "global_5[24]  %s\n" 
	 .align 8 
.str_926:
 	 .string "pass" 
	 .align 8 
.str_925:
 	 .string "failed" 
	 .align 8 
.str_924:
 	 .string "----------------------\n" 
	 .align 8 
.str_923:
 	 .string "global_6[23]  th=%d, value=%d\n" 
	 .align 8 
.str_922:
 	 .string "global_6[23]  %s\n" 
	 .align 8 
.str_921:
 	 .string "pass" 
	 .align 8 
.str_920:
 	 .string "failed" 
	 .align 8 
.str_919:
 	 .string "----------------------\n" 
	 .align 8 
.str_918:
 	 .string "global_5[23]  th=%d, value=%d\n" 
	 .align 8 
.str_917:
 	 .string "global_5[23]  %s\n" 
	 .align 8 
.str_916:
 	 .string "pass" 
	 .align 8 
.str_915:
 	 .string "failed" 
	 .align 8 
.str_914:
 	 .string "----------------------\n" 
	 .align 8 
.str_913:
 	 .string "global_6[22]  th=%d, value=%d\n" 
	 .align 8 
.str_912:
 	 .string "global_6[22]  %s\n" 
	 .align 8 
.str_911:
 	 .string "pass" 
	 .align 8 
.str_910:
 	 .string "failed" 
	 .align 8 
.str_909:
 	 .string "----------------------\n" 
	 .align 8 
.str_908:
 	 .string "global_5[22]  th=%d, value=%d\n" 
	 .align 8 
.str_907:
 	 .string "global_5[22]  %s\n" 
	 .align 8 
.str_906:
 	 .string "pass" 
	 .align 8 
.str_905:
 	 .string "failed" 
	 .align 8 
.str_904:
 	 .string "----------------------\n" 
	 .align 8 
.str_903:
 	 .string "global_6[21]  th=%d, value=%d\n" 
	 .align 8 
.str_902:
 	 .string "global_6[21]  %s\n" 
	 .align 8 
.str_901:
 	 .string "pass" 
	 .align 8 
.str_900:
 	 .string "failed" 
	 .align 8 
.str_899:
 	 .string "----------------------\n" 
	 .align 8 
.str_898:
 	 .string "global_5[21]  th=%d, value=%d\n" 
	 .align 8 
.str_897:
 	 .string "global_5[21]  %s\n" 
	 .align 8 
.str_896:
 	 .string "pass" 
	 .align 8 
.str_895:
 	 .string "failed" 
	 .align 8 
.str_894:
 	 .string "----------------------\n" 
	 .align 8 
.str_893:
 	 .string "global_6[20]  th=%d, value=%d\n" 
	 .align 8 
.str_892:
 	 .string "global_6[20]  %s\n" 
	 .align 8 
.str_891:
 	 .string "pass" 
	 .align 8 
.str_890:
 	 .string "failed" 
	 .align 8 
.str_889:
 	 .string "----------------------\n" 
	 .align 8 
.str_888:
 	 .string "global_5[20]  th=%d, value=%d\n" 
	 .align 8 
.str_887:
 	 .string "global_5[20]  %s\n" 
	 .align 8 
.str_886:
 	 .string "pass" 
	 .align 8 
.str_885:
 	 .string "failed" 
	 .align 8 
.str_884:
 	 .string "----------------------\n" 
	 .align 8 
.str_883:
 	 .string "global_6[19]  th=%d, value=%d\n" 
	 .align 8 
.str_882:
 	 .string "global_6[19]  %s\n" 
	 .align 8 
.str_881:
 	 .string "pass" 
	 .align 8 
.str_880:
 	 .string "failed" 
	 .align 8 
.str_879:
 	 .string "----------------------\n" 
	 .align 8 
.str_878:
 	 .string "global_5[19]  th=%d, value=%d\n" 
	 .align 8 
.str_877:
 	 .string "global_5[19]  %s\n" 
	 .align 8 
.str_876:
 	 .string "pass" 
	 .align 8 
.str_875:
 	 .string "failed" 
	 .align 8 
.str_874:
 	 .string "----------------------\n" 
	 .align 8 
.str_873:
 	 .string "global_6[18]  th=%d, value=%d\n" 
	 .align 8 
.str_872:
 	 .string "global_6[18]  %s\n" 
	 .align 8 
.str_871:
 	 .string "pass" 
	 .align 8 
.str_870:
 	 .string "failed" 
	 .align 8 
.str_869:
 	 .string "----------------------\n" 
	 .align 8 
.str_868:
 	 .string "global_5[18]  th=%d, value=%d\n" 
	 .align 8 
.str_867:
 	 .string "global_5[18]  %s\n" 
	 .align 8 
.str_866:
 	 .string "pass" 
	 .align 8 
.str_865:
 	 .string "failed" 
	 .align 8 
.str_864:
 	 .string "----------------------\n" 
	 .align 8 
.str_863:
 	 .string "global_6[17]  th=%d, value=%d\n" 
	 .align 8 
.str_862:
 	 .string "global_6[17]  %s\n" 
	 .align 8 
.str_861:
 	 .string "pass" 
	 .align 8 
.str_860:
 	 .string "failed" 
	 .align 8 
.str_859:
 	 .string "----------------------\n" 
	 .align 8 
.str_858:
 	 .string "global_5[17]  th=%d, value=%d\n" 
	 .align 8 
.str_857:
 	 .string "global_5[17]  %s\n" 
	 .align 8 
.str_856:
 	 .string "pass" 
	 .align 8 
.str_855:
 	 .string "failed" 
	 .align 8 
.str_854:
 	 .string "----------------------\n" 
	 .align 8 
.str_853:
 	 .string "global_6[16]  th=%d, value=%d\n" 
	 .align 8 
.str_852:
 	 .string "global_6[16]  %s\n" 
	 .align 8 
.str_851:
 	 .string "pass" 
	 .align 8 
.str_850:
 	 .string "failed" 
	 .align 8 
.str_849:
 	 .string "----------------------\n" 
	 .align 8 
.str_848:
 	 .string "global_5[16]  th=%d, value=%d\n" 
	 .align 8 
.str_847:
 	 .string "global_5[16]  %s\n" 
	 .align 8 
.str_846:
 	 .string "pass" 
	 .align 8 
.str_845:
 	 .string "failed" 
	 .align 8 
.str_844:
 	 .string "----------------------\n" 
	 .align 8 
.str_843:
 	 .string "global_6[15]  th=%d, value=%d\n" 
	 .align 8 
.str_842:
 	 .string "global_6[15]  %s\n" 
	 .align 8 
.str_841:
 	 .string "pass" 
	 .align 8 
.str_840:
 	 .string "failed" 
	 .align 8 
.str_839:
 	 .string "----------------------\n" 
	 .align 8 
.str_838:
 	 .string "global_5[15]  th=%d, value=%d\n" 
	 .align 8 
.str_837:
 	 .string "global_5[15]  %s\n" 
	 .align 8 
.str_836:
 	 .string "pass" 
	 .align 8 
.str_835:
 	 .string "failed" 
	 .align 8 
.str_834:
 	 .string "----------------------\n" 
	 .align 8 
.str_833:
 	 .string "global_6[14]  th=%d, value=%d\n" 
	 .align 8 
.str_832:
 	 .string "global_6[14]  %s\n" 
	 .align 8 
.str_831:
 	 .string "pass" 
	 .align 8 
.str_830:
 	 .string "failed" 
	 .align 8 
.str_829:
 	 .string "----------------------\n" 
	 .align 8 
.str_828:
 	 .string "global_5[14]  th=%d, value=%d\n" 
	 .align 8 
.str_827:
 	 .string "global_5[14]  %s\n" 
	 .align 8 
.str_826:
 	 .string "pass" 
	 .align 8 
.str_825:
 	 .string "failed" 
	 .align 8 
.str_824:
 	 .string "----------------------\n" 
	 .align 8 
.str_823:
 	 .string "global_6[13]  th=%d, value=%d\n" 
	 .align 8 
.str_822:
 	 .string "global_6[13]  %s\n" 
	 .align 8 
.str_821:
 	 .string "pass" 
	 .align 8 
.str_820:
 	 .string "failed" 
	 .align 8 
.str_819:
 	 .string "----------------------\n" 
	 .align 8 
.str_818:
 	 .string "global_5[13]  th=%d, value=%d\n" 
	 .align 8 
.str_817:
 	 .string "global_5[13]  %s\n" 
	 .align 8 
.str_816:
 	 .string "pass" 
	 .align 8 
.str_815:
 	 .string "failed" 
	 .align 8 
.str_814:
 	 .string "----------------------\n" 
	 .align 8 
.str_813:
 	 .string "global_6[12]  th=%d, value=%d\n" 
	 .align 8 
.str_812:
 	 .string "global_6[12]  %s\n" 
	 .align 8 
.str_811:
 	 .string "pass" 
	 .align 8 
.str_810:
 	 .string "failed" 
	 .align 8 
.str_809:
 	 .string "----------------------\n" 
	 .align 8 
.str_808:
 	 .string "global_5[12]  th=%d, value=%d\n" 
	 .align 8 
.str_807:
 	 .string "global_5[12]  %s\n" 
	 .align 8 
.str_806:
 	 .string "pass" 
	 .align 8 
.str_805:
 	 .string "failed" 
	 .align 8 
.str_804:
 	 .string "----------------------\n" 
	 .align 8 
.str_803:
 	 .string "global_6[11]  th=%d, value=%d\n" 
	 .align 8 
.str_802:
 	 .string "global_6[11]  %s\n" 
	 .align 8 
.str_801:
 	 .string "pass" 
	 .align 8 
.str_800:
 	 .string "failed" 
	 .align 8 
.str_799:
 	 .string "----------------------\n" 
	 .align 8 
.str_798:
 	 .string "global_5[11]  th=%d, value=%d\n" 
	 .align 8 
.str_797:
 	 .string "global_5[11]  %s\n" 
	 .align 8 
.str_796:
 	 .string "pass" 
	 .align 8 
.str_795:
 	 .string "failed" 
	 .align 8 
.str_794:
 	 .string "----------------------\n" 
	 .align 8 
.str_793:
 	 .string "global_6[10]  th=%d, value=%d\n" 
	 .align 8 
.str_792:
 	 .string "global_6[10]  %s\n" 
	 .align 8 
.str_791:
 	 .string "pass" 
	 .align 8 
.str_790:
 	 .string "failed" 
	 .align 8 
.str_789:
 	 .string "----------------------\n" 
	 .align 8 
.str_788:
 	 .string "global_5[10]  th=%d, value=%d\n" 
	 .align 8 
.str_787:
 	 .string "global_5[10]  %s\n" 
	 .align 8 
.str_786:
 	 .string "pass" 
	 .align 8 
.str_785:
 	 .string "failed" 
	 .align 8 
.str_784:
 	 .string "----------------------\n" 
	 .align 8 
.str_783:
 	 .string "global_6[9]  th=%d, value=%d\n" 
	 .align 8 
.str_782:
 	 .string "global_6[9]  %s\n" 
	 .align 8 
.str_781:
 	 .string "pass" 
	 .align 8 
.str_780:
 	 .string "failed" 
	 .align 8 
.str_779:
 	 .string "----------------------\n" 
	 .align 8 
.str_778:
 	 .string "global_5[9]  th=%d, value=%d\n" 
	 .align 8 
.str_777:
 	 .string "global_5[9]  %s\n" 
	 .align 8 
.str_776:
 	 .string "pass" 
	 .align 8 
.str_775:
 	 .string "failed" 
	 .align 8 
.str_774:
 	 .string "----------------------\n" 
	 .align 8 
.str_773:
 	 .string "global_6[8]  th=%d, value=%d\n" 
	 .align 8 
.str_772:
 	 .string "global_6[8]  %s\n" 
	 .align 8 
.str_771:
 	 .string "pass" 
	 .align 8 
.str_770:
 	 .string "failed" 
	 .align 8 
.str_769:
 	 .string "----------------------\n" 
	 .align 8 
.str_768:
 	 .string "global_5[8]  th=%d, value=%d\n" 
	 .align 8 
.str_767:
 	 .string "global_5[8]  %s\n" 
	 .align 8 
.str_766:
 	 .string "pass" 
	 .align 8 
.str_765:
 	 .string "failed" 
	 .align 8 
.str_764:
 	 .string "----------------------\n" 
	 .align 8 
.str_763:
 	 .string "global_6[7]  th=%d, value=%d\n" 
	 .align 8 
.str_762:
 	 .string "global_6[7]  %s\n" 
	 .align 8 
.str_761:
 	 .string "pass" 
	 .align 8 
.str_760:
 	 .string "failed" 
	 .align 8 
.str_759:
 	 .string "----------------------\n" 
	 .align 8 
.str_758:
 	 .string "global_5[7]  th=%d, value=%d\n" 
	 .align 8 
.str_757:
 	 .string "global_5[7]  %s\n" 
	 .align 8 
.str_756:
 	 .string "pass" 
	 .align 8 
.str_755:
 	 .string "failed" 
	 .align 8 
.str_754:
 	 .string "----------------------\n" 
	 .align 8 
.str_753:
 	 .string "global_6[6]  th=%d, value=%d\n" 
	 .align 8 
.str_752:
 	 .string "global_6[6]  %s\n" 
	 .align 8 
.str_751:
 	 .string "pass" 
	 .align 8 
.str_750:
 	 .string "failed" 
	 .align 8 
.str_749:
 	 .string "----------------------\n" 
	 .align 8 
.str_748:
 	 .string "global_5[6]  th=%d, value=%d\n" 
	 .align 8 
.str_747:
 	 .string "global_5[6]  %s\n" 
	 .align 8 
.str_746:
 	 .string "pass" 
	 .align 8 
.str_745:
 	 .string "failed" 
	 .align 8 
.str_744:
 	 .string "----------------------\n" 
	 .align 8 
.str_743:
 	 .string "global_6[5]  th=%d, value=%d\n" 
	 .align 8 
.str_742:
 	 .string "global_6[5]  %s\n" 
	 .align 8 
.str_741:
 	 .string "pass" 
	 .align 8 
.str_740:
 	 .string "failed" 
	 .align 8 
.str_739:
 	 .string "----------------------\n" 
	 .align 8 
.str_738:
 	 .string "global_5[5]  th=%d, value=%d\n" 
	 .align 8 
.str_737:
 	 .string "global_5[5]  %s\n" 
	 .align 8 
.str_736:
 	 .string "pass" 
	 .align 8 
.str_735:
 	 .string "failed" 
	 .align 8 
.str_734:
 	 .string "----------------------\n" 
	 .align 8 
.str_733:
 	 .string "global_6[4]  th=%d, value=%d\n" 
	 .align 8 
.str_732:
 	 .string "global_6[4]  %s\n" 
	 .align 8 
.str_731:
 	 .string "pass" 
	 .align 8 
.str_730:
 	 .string "failed" 
	 .align 8 
.str_729:
 	 .string "----------------------\n" 
	 .align 8 
.str_728:
 	 .string "global_5[4]  th=%d, value=%d\n" 
	 .align 8 
.str_727:
 	 .string "global_5[4]  %s\n" 
	 .align 8 
.str_726:
 	 .string "pass" 
	 .align 8 
.str_725:
 	 .string "failed" 
	 .align 8 
.str_724:
 	 .string "----------------------\n" 
	 .align 8 
.str_723:
 	 .string "global_6[3]  th=%d, value=%d\n" 
	 .align 8 
.str_722:
 	 .string "global_6[3]  %s\n" 
	 .align 8 
.str_721:
 	 .string "pass" 
	 .align 8 
.str_720:
 	 .string "failed" 
	 .align 8 
.str_719:
 	 .string "----------------------\n" 
	 .align 8 
.str_718:
 	 .string "global_5[3]  th=%d, value=%d\n" 
	 .align 8 
.str_717:
 	 .string "global_5[3]  %s\n" 
	 .align 8 
.str_716:
 	 .string "pass" 
	 .align 8 
.str_715:
 	 .string "failed" 
	 .align 8 
.str_714:
 	 .string "----------------------\n" 
	 .align 8 
.str_713:
 	 .string "global_6[2]  th=%d, value=%d\n" 
	 .align 8 
.str_712:
 	 .string "global_6[2]  %s\n" 
	 .align 8 
.str_711:
 	 .string "pass" 
	 .align 8 
.str_710:
 	 .string "failed" 
	 .align 8 
.str_709:
 	 .string "----------------------\n" 
	 .align 8 
.str_708:
 	 .string "global_5[2]  th=%d, value=%d\n" 
	 .align 8 
.str_707:
 	 .string "global_5[2]  %s\n" 
	 .align 8 
.str_706:
 	 .string "pass" 
	 .align 8 
.str_705:
 	 .string "failed" 
	 .align 8 
.str_704:
 	 .string "----------------------\n" 
	 .align 8 
.str_703:
 	 .string "global_6[1]  th=%d, value=%d\n" 
	 .align 8 
.str_702:
 	 .string "global_6[1]  %s\n" 
	 .align 8 
.str_701:
 	 .string "pass" 
	 .align 8 
.str_700:
 	 .string "failed" 
	 .align 8 
.str_699:
 	 .string "----------------------\n" 
	 .align 8 
.str_698:
 	 .string "global_5[1]  th=%d, value=%d\n" 
	 .align 8 
.str_697:
 	 .string "global_5[1]  %s\n" 
	 .align 8 
.str_696:
 	 .string "pass" 
	 .align 8 
.str_695:
 	 .string "failed" 
	 .align 8 
.str_694:
 	 .string "----------------------\n" 
	 .align 8 
.str_693:
 	 .string "global_6[0]  th=%d, value=%d\n" 
	 .align 8 
.str_692:
 	 .string "global_6[0]  %s\n" 
	 .align 8 
.str_691:
 	 .string "pass" 
	 .align 8 
.str_690:
 	 .string "failed" 
	 .align 8 
.str_689:
 	 .string "----------------------\n" 
	 .align 8 
.str_688:
 	 .string "global_5[0]  th=%d, value=%d\n" 
	 .align 8 
.str_687:
 	 .string "global_5[0]  %s\n" 
	 .align 8 
.str_686:
 	 .string "pass" 
	 .align 8 
.str_685:
 	 .string "failed" 
	 .align 8 
.str_684:
 	 .string "----------------------\n" 
	 .align 8 
.str_683:
 	 .string "global_4  th=%d, value=%d\n" 
	 .align 8 
.str_682:
 	 .string "global_4  %s\n" 
	 .align 8 
.str_681:
 	 .string "pass" 
	 .align 8 
.str_680:
 	 .string "failed" 
	 .align 8 
.str_679:
 	 .string "----------------------\n" 
	 .align 8 
.str_678:
 	 .string "global_3  th=%d, value=%d\n" 
	 .align 8 
.str_677:
 	 .string "global_3  %s\n" 
	 .align 8 
.str_676:
 	 .string "pass" 
	 .align 8 
.str_675:
 	 .string "failed" 
	 .align 8 
.str_674:
 	 .string "----------------------\n" 
	 .align 8 
.str_673:
 	 .string "global_2  th=%d, value=%d\n" 
	 .align 8 
.str_672:
 	 .string "global_2  %s\n" 
	 .align 8 
.str_671:
 	 .string "pass" 
	 .align 8 
.str_670:
 	 .string "failed" 
	 .align 8 
.str_669:
 	 .string "----------------------\n" 
	 .align 8 
.str_668:
 	 .string "global_1  th=%d, value=%d\n" 
	 .align 8 
.str_667:
 	 .string "global_1  %s\n" 
	 .align 8 
.str_666:
 	 .string "pass" 
	 .align 8 
.str_665:
 	 .string "failed" 
	 .align 8 
.str_664:
 	 .string "----------------------\n" 
	 .align 8 
.str_663:
 	 .string "tab_1[99]  th=%d, value=%d\n" 
	 .align 8 
.str_662:
 	 .string "tab_1[99]  %s\n" 
	 .align 8 
.str_661:
 	 .string "pass" 
	 .align 8 
.str_660:
 	 .string "failed" 
	 .align 8 
.str_659:
 	 .string "----------------------\n" 
	 .align 8 
.str_658:
 	 .string "tab_1[98]  th=%d, value=%d\n" 
	 .align 8 
.str_657:
 	 .string "tab_1[98]  %s\n" 
	 .align 8 
.str_656:
 	 .string "pass" 
	 .align 8 
.str_655:
 	 .string "failed" 
	 .align 8 
.str_654:
 	 .string "----------------------\n" 
	 .align 8 
.str_653:
 	 .string "tab_1[97]  th=%d, value=%d\n" 
	 .align 8 
.str_652:
 	 .string "tab_1[97]  %s\n" 
	 .align 8 
.str_651:
 	 .string "pass" 
	 .align 8 
.str_650:
 	 .string "failed" 
	 .align 8 
.str_649:
 	 .string "----------------------\n" 
	 .align 8 
.str_648:
 	 .string "tab_1[96]  th=%d, value=%d\n" 
	 .align 8 
.str_647:
 	 .string "tab_1[96]  %s\n" 
	 .align 8 
.str_646:
 	 .string "pass" 
	 .align 8 
.str_645:
 	 .string "failed" 
	 .align 8 
.str_644:
 	 .string "----------------------\n" 
	 .align 8 
.str_643:
 	 .string "tab_1[95]  th=%d, value=%d\n" 
	 .align 8 
.str_642:
 	 .string "tab_1[95]  %s\n" 
	 .align 8 
.str_641:
 	 .string "pass" 
	 .align 8 
.str_640:
 	 .string "failed" 
	 .align 8 
.str_639:
 	 .string "----------------------\n" 
	 .align 8 
.str_638:
 	 .string "tab_1[94]  th=%d, value=%d\n" 
	 .align 8 
.str_637:
 	 .string "tab_1[94]  %s\n" 
	 .align 8 
.str_636:
 	 .string "pass" 
	 .align 8 
.str_635:
 	 .string "failed" 
	 .align 8 
.str_634:
 	 .string "----------------------\n" 
	 .align 8 
.str_633:
 	 .string "tab_1[93]  th=%d, value=%d\n" 
	 .align 8 
.str_632:
 	 .string "tab_1[93]  %s\n" 
	 .align 8 
.str_631:
 	 .string "pass" 
	 .align 8 
.str_630:
 	 .string "failed" 
	 .align 8 
.str_629:
 	 .string "----------------------\n" 
	 .align 8 
.str_628:
 	 .string "tab_1[92]  th=%d, value=%d\n" 
	 .align 8 
.str_627:
 	 .string "tab_1[92]  %s\n" 
	 .align 8 
.str_626:
 	 .string "pass" 
	 .align 8 
.str_625:
 	 .string "failed" 
	 .align 8 
.str_624:
 	 .string "----------------------\n" 
	 .align 8 
.str_623:
 	 .string "tab_1[91]  th=%d, value=%d\n" 
	 .align 8 
.str_622:
 	 .string "tab_1[91]  %s\n" 
	 .align 8 
.str_621:
 	 .string "pass" 
	 .align 8 
.str_620:
 	 .string "failed" 
	 .align 8 
.str_619:
 	 .string "----------------------\n" 
	 .align 8 
.str_618:
 	 .string "tab_1[90]  th=%d, value=%d\n" 
	 .align 8 
.str_617:
 	 .string "tab_1[90]  %s\n" 
	 .align 8 
.str_616:
 	 .string "pass" 
	 .align 8 
.str_615:
 	 .string "failed" 
	 .align 8 
.str_614:
 	 .string "----------------------\n" 
	 .align 8 
.str_613:
 	 .string "tab_1[89]  th=%d, value=%d\n" 
	 .align 8 
.str_612:
 	 .string "tab_1[89]  %s\n" 
	 .align 8 
.str_611:
 	 .string "pass" 
	 .align 8 
.str_610:
 	 .string "failed" 
	 .align 8 
.str_609:
 	 .string "----------------------\n" 
	 .align 8 
.str_608:
 	 .string "tab_1[88]  th=%d, value=%d\n" 
	 .align 8 
.str_607:
 	 .string "tab_1[88]  %s\n" 
	 .align 8 
.str_606:
 	 .string "pass" 
	 .align 8 
.str_605:
 	 .string "failed" 
	 .align 8 
.str_604:
 	 .string "----------------------\n" 
	 .align 8 
.str_603:
 	 .string "tab_1[87]  th=%d, value=%d\n" 
	 .align 8 
.str_602:
 	 .string "tab_1[87]  %s\n" 
	 .align 8 
.str_601:
 	 .string "pass" 
	 .align 8 
.str_600:
 	 .string "failed" 
	 .align 8 
.str_599:
 	 .string "----------------------\n" 
	 .align 8 
.str_598:
 	 .string "tab_1[86]  th=%d, value=%d\n" 
	 .align 8 
.str_597:
 	 .string "tab_1[86]  %s\n" 
	 .align 8 
.str_596:
 	 .string "pass" 
	 .align 8 
.str_595:
 	 .string "failed" 
	 .align 8 
.str_594:
 	 .string "----------------------\n" 
	 .align 8 
.str_593:
 	 .string "tab_1[85]  th=%d, value=%d\n" 
	 .align 8 
.str_592:
 	 .string "tab_1[85]  %s\n" 
	 .align 8 
.str_591:
 	 .string "pass" 
	 .align 8 
.str_590:
 	 .string "failed" 
	 .align 8 
.str_589:
 	 .string "----------------------\n" 
	 .align 8 
.str_588:
 	 .string "tab_1[84]  th=%d, value=%d\n" 
	 .align 8 
.str_587:
 	 .string "tab_1[84]  %s\n" 
	 .align 8 
.str_586:
 	 .string "pass" 
	 .align 8 
.str_585:
 	 .string "failed" 
	 .align 8 
.str_584:
 	 .string "----------------------\n" 
	 .align 8 
.str_583:
 	 .string "tab_1[83]  th=%d, value=%d\n" 
	 .align 8 
.str_582:
 	 .string "tab_1[83]  %s\n" 
	 .align 8 
.str_581:
 	 .string "pass" 
	 .align 8 
.str_580:
 	 .string "failed" 
	 .align 8 
.str_579:
 	 .string "----------------------\n" 
	 .align 8 
.str_578:
 	 .string "tab_1[82]  th=%d, value=%d\n" 
	 .align 8 
.str_577:
 	 .string "tab_1[82]  %s\n" 
	 .align 8 
.str_576:
 	 .string "pass" 
	 .align 8 
.str_575:
 	 .string "failed" 
	 .align 8 
.str_574:
 	 .string "----------------------\n" 
	 .align 8 
.str_573:
 	 .string "tab_1[81]  th=%d, value=%d\n" 
	 .align 8 
.str_572:
 	 .string "tab_1[81]  %s\n" 
	 .align 8 
.str_571:
 	 .string "pass" 
	 .align 8 
.str_570:
 	 .string "failed" 
	 .align 8 
.str_569:
 	 .string "----------------------\n" 
	 .align 8 
.str_568:
 	 .string "tab_1[80]  th=%d, value=%d\n" 
	 .align 8 
.str_567:
 	 .string "tab_1[80]  %s\n" 
	 .align 8 
.str_566:
 	 .string "pass" 
	 .align 8 
.str_565:
 	 .string "failed" 
	 .align 8 
.str_564:
 	 .string "----------------------\n" 
	 .align 8 
.str_563:
 	 .string "tab_1[79]  th=%d, value=%d\n" 
	 .align 8 
.str_562:
 	 .string "tab_1[79]  %s\n" 
	 .align 8 
.str_561:
 	 .string "pass" 
	 .align 8 
.str_560:
 	 .string "failed" 
	 .align 8 
.str_559:
 	 .string "----------------------\n" 
	 .align 8 
.str_558:
 	 .string "tab_1[78]  th=%d, value=%d\n" 
	 .align 8 
.str_557:
 	 .string "tab_1[78]  %s\n" 
	 .align 8 
.str_556:
 	 .string "pass" 
	 .align 8 
.str_555:
 	 .string "failed" 
	 .align 8 
.str_554:
 	 .string "----------------------\n" 
	 .align 8 
.str_553:
 	 .string "tab_1[77]  th=%d, value=%d\n" 
	 .align 8 
.str_552:
 	 .string "tab_1[77]  %s\n" 
	 .align 8 
.str_551:
 	 .string "pass" 
	 .align 8 
.str_550:
 	 .string "failed" 
	 .align 8 
.str_549:
 	 .string "----------------------\n" 
	 .align 8 
.str_548:
 	 .string "tab_1[76]  th=%d, value=%d\n" 
	 .align 8 
.str_547:
 	 .string "tab_1[76]  %s\n" 
	 .align 8 
.str_546:
 	 .string "pass" 
	 .align 8 
.str_545:
 	 .string "failed" 
	 .align 8 
.str_544:
 	 .string "----------------------\n" 
	 .align 8 
.str_543:
 	 .string "tab_1[75]  th=%d, value=%d\n" 
	 .align 8 
.str_542:
 	 .string "tab_1[75]  %s\n" 
	 .align 8 
.str_541:
 	 .string "pass" 
	 .align 8 
.str_540:
 	 .string "failed" 
	 .align 8 
.str_539:
 	 .string "----------------------\n" 
	 .align 8 
.str_538:
 	 .string "tab_1[74]  th=%d, value=%d\n" 
	 .align 8 
.str_537:
 	 .string "tab_1[74]  %s\n" 
	 .align 8 
.str_536:
 	 .string "pass" 
	 .align 8 
.str_535:
 	 .string "failed" 
	 .align 8 
.str_534:
 	 .string "----------------------\n" 
	 .align 8 
.str_533:
 	 .string "tab_1[73]  th=%d, value=%d\n" 
	 .align 8 
.str_532:
 	 .string "tab_1[73]  %s\n" 
	 .align 8 
.str_531:
 	 .string "pass" 
	 .align 8 
.str_530:
 	 .string "failed" 
	 .align 8 
.str_529:
 	 .string "----------------------\n" 
	 .align 8 
.str_528:
 	 .string "tab_1[72]  th=%d, value=%d\n" 
	 .align 8 
.str_527:
 	 .string "tab_1[72]  %s\n" 
	 .align 8 
.str_526:
 	 .string "pass" 
	 .align 8 
.str_525:
 	 .string "failed" 
	 .align 8 
.str_524:
 	 .string "----------------------\n" 
	 .align 8 
.str_523:
 	 .string "tab_1[71]  th=%d, value=%d\n" 
	 .align 8 
.str_522:
 	 .string "tab_1[71]  %s\n" 
	 .align 8 
.str_521:
 	 .string "pass" 
	 .align 8 
.str_520:
 	 .string "failed" 
	 .align 8 
.str_519:
 	 .string "----------------------\n" 
	 .align 8 
.str_518:
 	 .string "tab_1[70]  th=%d, value=%d\n" 
	 .align 8 
.str_517:
 	 .string "tab_1[70]  %s\n" 
	 .align 8 
.str_516:
 	 .string "pass" 
	 .align 8 
.str_515:
 	 .string "failed" 
	 .align 8 
.str_514:
 	 .string "----------------------\n" 
	 .align 8 
.str_513:
 	 .string "tab_1[69]  th=%d, value=%d\n" 
	 .align 8 
.str_512:
 	 .string "tab_1[69]  %s\n" 
	 .align 8 
.str_511:
 	 .string "pass" 
	 .align 8 
.str_510:
 	 .string "failed" 
	 .align 8 
.str_509:
 	 .string "----------------------\n" 
	 .align 8 
.str_508:
 	 .string "tab_1[68]  th=%d, value=%d\n" 
	 .align 8 
.str_507:
 	 .string "tab_1[68]  %s\n" 
	 .align 8 
.str_506:
 	 .string "pass" 
	 .align 8 
.str_505:
 	 .string "failed" 
	 .align 8 
.str_504:
 	 .string "----------------------\n" 
	 .align 8 
.str_503:
 	 .string "tab_1[67]  th=%d, value=%d\n" 
	 .align 8 
.str_502:
 	 .string "tab_1[67]  %s\n" 
	 .align 8 
.str_501:
 	 .string "pass" 
	 .align 8 
.str_500:
 	 .string "failed" 
	 .align 8 
.str_499:
 	 .string "----------------------\n" 
	 .align 8 
.str_498:
 	 .string "tab_1[66]  th=%d, value=%d\n" 
	 .align 8 
.str_497:
 	 .string "tab_1[66]  %s\n" 
	 .align 8 
.str_496:
 	 .string "pass" 
	 .align 8 
.str_495:
 	 .string "failed" 
	 .align 8 
.str_494:
 	 .string "----------------------\n" 
	 .align 8 
.str_493:
 	 .string "tab_1[65]  th=%d, value=%d\n" 
	 .align 8 
.str_492:
 	 .string "tab_1[65]  %s\n" 
	 .align 8 
.str_491:
 	 .string "pass" 
	 .align 8 
.str_490:
 	 .string "failed" 
	 .align 8 
.str_489:
 	 .string "----------------------\n" 
	 .align 8 
.str_488:
 	 .string "tab_1[64]  th=%d, value=%d\n" 
	 .align 8 
.str_487:
 	 .string "tab_1[64]  %s\n" 
	 .align 8 
.str_486:
 	 .string "pass" 
	 .align 8 
.str_485:
 	 .string "failed" 
	 .align 8 
.str_484:
 	 .string "----------------------\n" 
	 .align 8 
.str_483:
 	 .string "tab_1[63]  th=%d, value=%d\n" 
	 .align 8 
.str_482:
 	 .string "tab_1[63]  %s\n" 
	 .align 8 
.str_481:
 	 .string "pass" 
	 .align 8 
.str_480:
 	 .string "failed" 
	 .align 8 
.str_479:
 	 .string "----------------------\n" 
	 .align 8 
.str_478:
 	 .string "tab_1[62]  th=%d, value=%d\n" 
	 .align 8 
.str_477:
 	 .string "tab_1[62]  %s\n" 
	 .align 8 
.str_476:
 	 .string "pass" 
	 .align 8 
.str_475:
 	 .string "failed" 
	 .align 8 
.str_474:
 	 .string "----------------------\n" 
	 .align 8 
.str_473:
 	 .string "tab_1[61]  th=%d, value=%d\n" 
	 .align 8 
.str_472:
 	 .string "tab_1[61]  %s\n" 
	 .align 8 
.str_471:
 	 .string "pass" 
	 .align 8 
.str_470:
 	 .string "failed" 
	 .align 8 
.str_469:
 	 .string "----------------------\n" 
	 .align 8 
.str_468:
 	 .string "tab_1[60]  th=%d, value=%d\n" 
	 .align 8 
.str_467:
 	 .string "tab_1[60]  %s\n" 
	 .align 8 
.str_466:
 	 .string "pass" 
	 .align 8 
.str_465:
 	 .string "failed" 
	 .align 8 
.str_464:
 	 .string "----------------------\n" 
	 .align 8 
.str_463:
 	 .string "tab_1[59]  th=%d, value=%d\n" 
	 .align 8 
.str_462:
 	 .string "tab_1[59]  %s\n" 
	 .align 8 
.str_461:
 	 .string "pass" 
	 .align 8 
.str_460:
 	 .string "failed" 
	 .align 8 
.str_459:
 	 .string "----------------------\n" 
	 .align 8 
.str_458:
 	 .string "tab_1[58]  th=%d, value=%d\n" 
	 .align 8 
.str_457:
 	 .string "tab_1[58]  %s\n" 
	 .align 8 
.str_456:
 	 .string "pass" 
	 .align 8 
.str_455:
 	 .string "failed" 
	 .align 8 
.str_454:
 	 .string "----------------------\n" 
	 .align 8 
.str_453:
 	 .string "tab_1[57]  th=%d, value=%d\n" 
	 .align 8 
.str_452:
 	 .string "tab_1[57]  %s\n" 
	 .align 8 
.str_451:
 	 .string "pass" 
	 .align 8 
.str_450:
 	 .string "failed" 
	 .align 8 
.str_449:
 	 .string "----------------------\n" 
	 .align 8 
.str_448:
 	 .string "tab_1[56]  th=%d, value=%d\n" 
	 .align 8 
.str_447:
 	 .string "tab_1[56]  %s\n" 
	 .align 8 
.str_446:
 	 .string "pass" 
	 .align 8 
.str_445:
 	 .string "failed" 
	 .align 8 
.str_444:
 	 .string "----------------------\n" 
	 .align 8 
.str_443:
 	 .string "tab_1[55]  th=%d, value=%d\n" 
	 .align 8 
.str_442:
 	 .string "tab_1[55]  %s\n" 
	 .align 8 
.str_441:
 	 .string "pass" 
	 .align 8 
.str_440:
 	 .string "failed" 
	 .align 8 
.str_439:
 	 .string "----------------------\n" 
	 .align 8 
.str_438:
 	 .string "tab_1[54]  th=%d, value=%d\n" 
	 .align 8 
.str_437:
 	 .string "tab_1[54]  %s\n" 
	 .align 8 
.str_436:
 	 .string "pass" 
	 .align 8 
.str_435:
 	 .string "failed" 
	 .align 8 
.str_434:
 	 .string "----------------------\n" 
	 .align 8 
.str_433:
 	 .string "tab_1[53]  th=%d, value=%d\n" 
	 .align 8 
.str_432:
 	 .string "tab_1[53]  %s\n" 
	 .align 8 
.str_431:
 	 .string "pass" 
	 .align 8 
.str_430:
 	 .string "failed" 
	 .align 8 
.str_429:
 	 .string "----------------------\n" 
	 .align 8 
.str_428:
 	 .string "tab_1[52]  th=%d, value=%d\n" 
	 .align 8 
.str_427:
 	 .string "tab_1[52]  %s\n" 
	 .align 8 
.str_426:
 	 .string "pass" 
	 .align 8 
.str_425:
 	 .string "failed" 
	 .align 8 
.str_424:
 	 .string "----------------------\n" 
	 .align 8 
.str_423:
 	 .string "tab_1[51]  th=%d, value=%d\n" 
	 .align 8 
.str_422:
 	 .string "tab_1[51]  %s\n" 
	 .align 8 
.str_421:
 	 .string "pass" 
	 .align 8 
.str_420:
 	 .string "failed" 
	 .align 8 
.str_419:
 	 .string "----------------------\n" 
	 .align 8 
.str_418:
 	 .string "tab_1[50]  th=%d, value=%d\n" 
	 .align 8 
.str_417:
 	 .string "tab_1[50]  %s\n" 
	 .align 8 
.str_416:
 	 .string "pass" 
	 .align 8 
.str_415:
 	 .string "failed" 
	 .align 8 
.str_414:
 	 .string "----------------------\n" 
	 .align 8 
.str_413:
 	 .string "tab_1[49]  th=%d, value=%d\n" 
	 .align 8 
.str_412:
 	 .string "tab_1[49]  %s\n" 
	 .align 8 
.str_411:
 	 .string "pass" 
	 .align 8 
.str_410:
 	 .string "failed" 
	 .align 8 
.str_409:
 	 .string "----------------------\n" 
	 .align 8 
.str_408:
 	 .string "tab_1[48]  th=%d, value=%d\n" 
	 .align 8 
.str_407:
 	 .string "tab_1[48]  %s\n" 
	 .align 8 
.str_406:
 	 .string "pass" 
	 .align 8 
.str_405:
 	 .string "failed" 
	 .align 8 
.str_404:
 	 .string "----------------------\n" 
	 .align 8 
.str_403:
 	 .string "tab_1[47]  th=%d, value=%d\n" 
	 .align 8 
.str_402:
 	 .string "tab_1[47]  %s\n" 
	 .align 8 
.str_401:
 	 .string "pass" 
	 .align 8 
.str_400:
 	 .string "failed" 
	 .align 8 
.str_399:
 	 .string "----------------------\n" 
	 .align 8 
.str_398:
 	 .string "tab_1[46]  th=%d, value=%d\n" 
	 .align 8 
.str_397:
 	 .string "tab_1[46]  %s\n" 
	 .align 8 
.str_396:
 	 .string "pass" 
	 .align 8 
.str_395:
 	 .string "failed" 
	 .align 8 
.str_394:
 	 .string "----------------------\n" 
	 .align 8 
.str_393:
 	 .string "tab_1[45]  th=%d, value=%d\n" 
	 .align 8 
.str_392:
 	 .string "tab_1[45]  %s\n" 
	 .align 8 
.str_391:
 	 .string "pass" 
	 .align 8 
.str_390:
 	 .string "failed" 
	 .align 8 
.str_389:
 	 .string "----------------------\n" 
	 .align 8 
.str_388:
 	 .string "tab_1[44]  th=%d, value=%d\n" 
	 .align 8 
.str_387:
 	 .string "tab_1[44]  %s\n" 
	 .align 8 
.str_386:
 	 .string "pass" 
	 .align 8 
.str_385:
 	 .string "failed" 
	 .align 8 
.str_384:
 	 .string "----------------------\n" 
	 .align 8 
.str_383:
 	 .string "tab_1[43]  th=%d, value=%d\n" 
	 .align 8 
.str_382:
 	 .string "tab_1[43]  %s\n" 
	 .align 8 
.str_381:
 	 .string "pass" 
	 .align 8 
.str_380:
 	 .string "failed" 
	 .align 8 
.str_379:
 	 .string "----------------------\n" 
	 .align 8 
.str_378:
 	 .string "tab_1[42]  th=%d, value=%d\n" 
	 .align 8 
.str_377:
 	 .string "tab_1[42]  %s\n" 
	 .align 8 
.str_376:
 	 .string "pass" 
	 .align 8 
.str_375:
 	 .string "failed" 
	 .align 8 
.str_374:
 	 .string "----------------------\n" 
	 .align 8 
.str_373:
 	 .string "tab_1[41]  th=%d, value=%d\n" 
	 .align 8 
.str_372:
 	 .string "tab_1[41]  %s\n" 
	 .align 8 
.str_371:
 	 .string "pass" 
	 .align 8 
.str_370:
 	 .string "failed" 
	 .align 8 
.str_369:
 	 .string "----------------------\n" 
	 .align 8 
.str_368:
 	 .string "tab_1[40]  th=%d, value=%d\n" 
	 .align 8 
.str_367:
 	 .string "tab_1[40]  %s\n" 
	 .align 8 
.str_366:
 	 .string "pass" 
	 .align 8 
.str_365:
 	 .string "failed" 
	 .align 8 
.str_364:
 	 .string "----------------------\n" 
	 .align 8 
.str_363:
 	 .string "tab_1[39]  th=%d, value=%d\n" 
	 .align 8 
.str_362:
 	 .string "tab_1[39]  %s\n" 
	 .align 8 
.str_361:
 	 .string "pass" 
	 .align 8 
.str_360:
 	 .string "failed" 
	 .align 8 
.str_359:
 	 .string "----------------------\n" 
	 .align 8 
.str_358:
 	 .string "tab_1[38]  th=%d, value=%d\n" 
	 .align 8 
.str_357:
 	 .string "tab_1[38]  %s\n" 
	 .align 8 
.str_356:
 	 .string "pass" 
	 .align 8 
.str_355:
 	 .string "failed" 
	 .align 8 
.str_354:
 	 .string "----------------------\n" 
	 .align 8 
.str_353:
 	 .string "tab_1[37]  th=%d, value=%d\n" 
	 .align 8 
.str_352:
 	 .string "tab_1[37]  %s\n" 
	 .align 8 
.str_351:
 	 .string "pass" 
	 .align 8 
.str_350:
 	 .string "failed" 
	 .align 8 
.str_349:
 	 .string "----------------------\n" 
	 .align 8 
.str_348:
 	 .string "tab_1[36]  th=%d, value=%d\n" 
	 .align 8 
.str_347:
 	 .string "tab_1[36]  %s\n" 
	 .align 8 
.str_346:
 	 .string "pass" 
	 .align 8 
.str_345:
 	 .string "failed" 
	 .align 8 
.str_344:
 	 .string "----------------------\n" 
	 .align 8 
.str_343:
 	 .string "tab_1[35]  th=%d, value=%d\n" 
	 .align 8 
.str_342:
 	 .string "tab_1[35]  %s\n" 
	 .align 8 
.str_341:
 	 .string "pass" 
	 .align 8 
.str_340:
 	 .string "failed" 
	 .align 8 
.str_339:
 	 .string "----------------------\n" 
	 .align 8 
.str_338:
 	 .string "tab_1[34]  th=%d, value=%d\n" 
	 .align 8 
.str_337:
 	 .string "tab_1[34]  %s\n" 
	 .align 8 
.str_336:
 	 .string "pass" 
	 .align 8 
.str_335:
 	 .string "failed" 
	 .align 8 
.str_334:
 	 .string "----------------------\n" 
	 .align 8 
.str_333:
 	 .string "tab_1[33]  th=%d, value=%d\n" 
	 .align 8 
.str_332:
 	 .string "tab_1[33]  %s\n" 
	 .align 8 
.str_331:
 	 .string "pass" 
	 .align 8 
.str_330:
 	 .string "failed" 
	 .align 8 
.str_329:
 	 .string "----------------------\n" 
	 .align 8 
.str_328:
 	 .string "tab_1[32]  th=%d, value=%d\n" 
	 .align 8 
.str_327:
 	 .string "tab_1[32]  %s\n" 
	 .align 8 
.str_326:
 	 .string "pass" 
	 .align 8 
.str_325:
 	 .string "failed" 
	 .align 8 
.str_324:
 	 .string "----------------------\n" 
	 .align 8 
.str_323:
 	 .string "tab_1[31]  th=%d, value=%d\n" 
	 .align 8 
.str_322:
 	 .string "tab_1[31]  %s\n" 
	 .align 8 
.str_321:
 	 .string "pass" 
	 .align 8 
.str_320:
 	 .string "failed" 
	 .align 8 
.str_319:
 	 .string "----------------------\n" 
	 .align 8 
.str_318:
 	 .string "tab_1[30]  th=%d, value=%d\n" 
	 .align 8 
.str_317:
 	 .string "tab_1[30]  %s\n" 
	 .align 8 
.str_316:
 	 .string "pass" 
	 .align 8 
.str_315:
 	 .string "failed" 
	 .align 8 
.str_314:
 	 .string "----------------------\n" 
	 .align 8 
.str_313:
 	 .string "tab_1[29]  th=%d, value=%d\n" 
	 .align 8 
.str_312:
 	 .string "tab_1[29]  %s\n" 
	 .align 8 
.str_311:
 	 .string "pass" 
	 .align 8 
.str_310:
 	 .string "failed" 
	 .align 8 
.str_309:
 	 .string "----------------------\n" 
	 .align 8 
.str_308:
 	 .string "tab_1[28]  th=%d, value=%d\n" 
	 .align 8 
.str_307:
 	 .string "tab_1[28]  %s\n" 
	 .align 8 
.str_306:
 	 .string "pass" 
	 .align 8 
.str_305:
 	 .string "failed" 
	 .align 8 
.str_304:
 	 .string "----------------------\n" 
	 .align 8 
.str_303:
 	 .string "tab_1[27]  th=%d, value=%d\n" 
	 .align 8 
.str_302:
 	 .string "tab_1[27]  %s\n" 
	 .align 8 
.str_301:
 	 .string "pass" 
	 .align 8 
.str_300:
 	 .string "failed" 
	 .align 8 
.str_299:
 	 .string "----------------------\n" 
	 .align 8 
.str_298:
 	 .string "tab_1[26]  th=%d, value=%d\n" 
	 .align 8 
.str_297:
 	 .string "tab_1[26]  %s\n" 
	 .align 8 
.str_296:
 	 .string "pass" 
	 .align 8 
.str_295:
 	 .string "failed" 
	 .align 8 
.str_294:
 	 .string "----------------------\n" 
	 .align 8 
.str_293:
 	 .string "tab_1[25]  th=%d, value=%d\n" 
	 .align 8 
.str_292:
 	 .string "tab_1[25]  %s\n" 
	 .align 8 
.str_291:
 	 .string "pass" 
	 .align 8 
.str_290:
 	 .string "failed" 
	 .align 8 
.str_289:
 	 .string "----------------------\n" 
	 .align 8 
.str_288:
 	 .string "tab_1[24]  th=%d, value=%d\n" 
	 .align 8 
.str_287:
 	 .string "tab_1[24]  %s\n" 
	 .align 8 
.str_286:
 	 .string "pass" 
	 .align 8 
.str_285:
 	 .string "failed" 
	 .align 8 
.str_284:
 	 .string "----------------------\n" 
	 .align 8 
.str_283:
 	 .string "tab_1[23]  th=%d, value=%d\n" 
	 .align 8 
.str_282:
 	 .string "tab_1[23]  %s\n" 
	 .align 8 
.str_281:
 	 .string "pass" 
	 .align 8 
.str_280:
 	 .string "failed" 
	 .align 8 
.str_279:
 	 .string "----------------------\n" 
	 .align 8 
.str_278:
 	 .string "tab_1[22]  th=%d, value=%d\n" 
	 .align 8 
.str_277:
 	 .string "tab_1[22]  %s\n" 
	 .align 8 
.str_276:
 	 .string "pass" 
	 .align 8 
.str_275:
 	 .string "failed" 
	 .align 8 
.str_274:
 	 .string "----------------------\n" 
	 .align 8 
.str_273:
 	 .string "tab_1[21]  th=%d, value=%d\n" 
	 .align 8 
.str_272:
 	 .string "tab_1[21]  %s\n" 
	 .align 8 
.str_271:
 	 .string "pass" 
	 .align 8 
.str_270:
 	 .string "failed" 
	 .align 8 
.str_269:
 	 .string "----------------------\n" 
	 .align 8 
.str_268:
 	 .string "tab_1[20]  th=%d, value=%d\n" 
	 .align 8 
.str_267:
 	 .string "tab_1[20]  %s\n" 
	 .align 8 
.str_266:
 	 .string "pass" 
	 .align 8 
.str_265:
 	 .string "failed" 
	 .align 8 
.str_264:
 	 .string "----------------------\n" 
	 .align 8 
.str_263:
 	 .string "tab_1[19]  th=%d, value=%d\n" 
	 .align 8 
.str_262:
 	 .string "tab_1[19]  %s\n" 
	 .align 8 
.str_261:
 	 .string "pass" 
	 .align 8 
.str_260:
 	 .string "failed" 
	 .align 8 
.str_259:
 	 .string "----------------------\n" 
	 .align 8 
.str_258:
 	 .string "tab_1[18]  th=%d, value=%d\n" 
	 .align 8 
.str_257:
 	 .string "tab_1[18]  %s\n" 
	 .align 8 
.str_256:
 	 .string "pass" 
	 .align 8 
.str_255:
 	 .string "failed" 
	 .align 8 
.str_254:
 	 .string "----------------------\n" 
	 .align 8 
.str_253:
 	 .string "tab_1[17]  th=%d, value=%d\n" 
	 .align 8 
.str_252:
 	 .string "tab_1[17]  %s\n" 
	 .align 8 
.str_251:
 	 .string "pass" 
	 .align 8 
.str_250:
 	 .string "failed" 
	 .align 8 
.str_249:
 	 .string "----------------------\n" 
	 .align 8 
.str_248:
 	 .string "tab_1[16]  th=%d, value=%d\n" 
	 .align 8 
.str_247:
 	 .string "tab_1[16]  %s\n" 
	 .align 8 
.str_246:
 	 .string "pass" 
	 .align 8 
.str_245:
 	 .string "failed" 
	 .align 8 
.str_244:
 	 .string "----------------------\n" 
	 .align 8 
.str_243:
 	 .string "tab_1[15]  th=%d, value=%d\n" 
	 .align 8 
.str_242:
 	 .string "tab_1[15]  %s\n" 
	 .align 8 
.str_241:
 	 .string "pass" 
	 .align 8 
.str_240:
 	 .string "failed" 
	 .align 8 
.str_239:
 	 .string "----------------------\n" 
	 .align 8 
.str_238:
 	 .string "tab_1[14]  th=%d, value=%d\n" 
	 .align 8 
.str_237:
 	 .string "tab_1[14]  %s\n" 
	 .align 8 
.str_236:
 	 .string "pass" 
	 .align 8 
.str_235:
 	 .string "failed" 
	 .align 8 
.str_234:
 	 .string "----------------------\n" 
	 .align 8 
.str_233:
 	 .string "tab_1[13]  th=%d, value=%d\n" 
	 .align 8 
.str_232:
 	 .string "tab_1[13]  %s\n" 
	 .align 8 
.str_231:
 	 .string "pass" 
	 .align 8 
.str_230:
 	 .string "failed" 
	 .align 8 
.str_229:
 	 .string "----------------------\n" 
	 .align 8 
.str_228:
 	 .string "tab_1[12]  th=%d, value=%d\n" 
	 .align 8 
.str_227:
 	 .string "tab_1[12]  %s\n" 
	 .align 8 
.str_226:
 	 .string "pass" 
	 .align 8 
.str_225:
 	 .string "failed" 
	 .align 8 
.str_224:
 	 .string "----------------------\n" 
	 .align 8 
.str_223:
 	 .string "tab_1[11]  th=%d, value=%d\n" 
	 .align 8 
.str_222:
 	 .string "tab_1[11]  %s\n" 
	 .align 8 
.str_221:
 	 .string "pass" 
	 .align 8 
.str_220:
 	 .string "failed" 
	 .align 8 
.str_219:
 	 .string "----------------------\n" 
	 .align 8 
.str_218:
 	 .string "tab_1[10]  th=%d, value=%d\n" 
	 .align 8 
.str_217:
 	 .string "tab_1[10]  %s\n" 
	 .align 8 
.str_216:
 	 .string "pass" 
	 .align 8 
.str_215:
 	 .string "failed" 
	 .align 8 
.str_214:
 	 .string "----------------------\n" 
	 .align 8 
.str_213:
 	 .string "tab_1[9]  th=%d, value=%d\n" 
	 .align 8 
.str_212:
 	 .string "tab_1[9]  %s\n" 
	 .align 8 
.str_211:
 	 .string "pass" 
	 .align 8 
.str_210:
 	 .string "failed" 
	 .align 8 
.str_209:
 	 .string "----------------------\n" 
	 .align 8 
.str_208:
 	 .string "tab_1[8]  th=%d, value=%d\n" 
	 .align 8 
.str_207:
 	 .string "tab_1[8]  %s\n" 
	 .align 8 
.str_206:
 	 .string "pass" 
	 .align 8 
.str_205:
 	 .string "failed" 
	 .align 8 
.str_204:
 	 .string "----------------------\n" 
	 .align 8 
.str_203:
 	 .string "tab_1[7]  th=%d, value=%d\n" 
	 .align 8 
.str_202:
 	 .string "tab_1[7]  %s\n" 
	 .align 8 
.str_201:
 	 .string "pass" 
	 .align 8 
.str_200:
 	 .string "failed" 
	 .align 8 
.str_199:
 	 .string "----------------------\n" 
	 .align 8 
.str_198:
 	 .string "tab_1[6]  th=%d, value=%d\n" 
	 .align 8 
.str_197:
 	 .string "tab_1[6]  %s\n" 
	 .align 8 
.str_196:
 	 .string "pass" 
	 .align 8 
.str_195:
 	 .string "failed" 
	 .align 8 
.str_194:
 	 .string "----------------------\n" 
	 .align 8 
.str_193:
 	 .string "tab_1[5]  th=%d, value=%d\n" 
	 .align 8 
.str_192:
 	 .string "tab_1[5]  %s\n" 
	 .align 8 
.str_191:
 	 .string "pass" 
	 .align 8 
.str_190:
 	 .string "failed" 
	 .align 8 
.str_189:
 	 .string "----------------------\n" 
	 .align 8 
.str_188:
 	 .string "tab_1[4]  th=%d, value=%d\n" 
	 .align 8 
.str_187:
 	 .string "tab_1[4]  %s\n" 
	 .align 8 
.str_186:
 	 .string "pass" 
	 .align 8 
.str_185:
 	 .string "failed" 
	 .align 8 
.str_184:
 	 .string "----------------------\n" 
	 .align 8 
.str_183:
 	 .string "tab_1[3]  th=%d, value=%d\n" 
	 .align 8 
.str_182:
 	 .string "tab_1[3]  %s\n" 
	 .align 8 
.str_181:
 	 .string "pass" 
	 .align 8 
.str_180:
 	 .string "failed" 
	 .align 8 
.str_179:
 	 .string "----------------------\n" 
	 .align 8 
.str_178:
 	 .string "tab_1[2]  th=%d, value=%d\n" 
	 .align 8 
.str_177:
 	 .string "tab_1[2]  %s\n" 
	 .align 8 
.str_176:
 	 .string "pass" 
	 .align 8 
.str_175:
 	 .string "failed" 
	 .align 8 
.str_174:
 	 .string "----------------------\n" 
	 .align 8 
.str_173:
 	 .string "tab_1[1]  th=%d, value=%d\n" 
	 .align 8 
.str_172:
 	 .string "tab_1[1]  %s\n" 
	 .align 8 
.str_171:
 	 .string "pass" 
	 .align 8 
.str_170:
 	 .string "failed" 
	 .align 8 
.str_169:
 	 .string "----------------------\n" 
	 .align 8 
.str_168:
 	 .string "tab_1[0]  th=%d, value=%d\n" 
	 .align 8 
.str_167:
 	 .string "tab_1[0]  %s\n" 
	 .align 8 
.str_166:
 	 .string "pass" 
	 .align 8 
.str_165:
 	 .string "failed" 
	 .align 8 
.str_164:
 	 .string "----------------------\n" 
	 .align 8 
.str_163:
 	 .string "args_j  th=%d, value=%d\n" 
	 .align 8 
.str_162:
 	 .string "args_j  %s\n" 
	 .align 8 
.str_161:
 	 .string "pass" 
	 .align 8 
.str_160:
 	 .string "failed" 
	 .align 8 
.str_159:
 	 .string "----------------------\n" 
	 .align 8 
.str_158:
 	 .string "args_i  th=%d, value=%d\n" 
	 .align 8 
.str_157:
 	 .string "args_i  %s\n" 
	 .align 8 
.str_156:
 	 .string "pass" 
	 .align 8 
.str_155:
 	 .string "failed" 
	 .align 8 
.str_154:
 	 .string "----------------------\n" 
	 .align 8 
.str_153:
 	 .string "args_h  th=%d, value=%d\n" 
	 .align 8 
.str_152:
 	 .string "args_h  %s\n" 
	 .align 8 
.str_151:
 	 .string "pass" 
	 .align 8 
.str_150:
 	 .string "failed" 
	 .align 8 
.str_149:
 	 .string "----------------------\n" 
	 .align 8 
.str_148:
 	 .string "args_g  th=%d, value=%d\n" 
	 .align 8 
.str_147:
 	 .string "args_g  %s\n" 
	 .align 8 
.str_146:
 	 .string "pass" 
	 .align 8 
.str_145:
 	 .string "failed" 
	 .align 8 
.str_144:
 	 .string "----------------------\n" 
	 .align 8 
.str_143:
 	 .string "args_f  th=%d, value=%d\n" 
	 .align 8 
.str_142:
 	 .string "args_f  %s\n" 
	 .align 8 
.str_141:
 	 .string "pass" 
	 .align 8 
.str_140:
 	 .string "failed" 
	 .align 8 
.str_139:
 	 .string "----------------------\n" 
	 .align 8 
.str_138:
 	 .string "args_e  th=%d, value=%d\n" 
	 .align 8 
.str_137:
 	 .string "args_e  %s\n" 
	 .align 8 
.str_136:
 	 .string "pass" 
	 .align 8 
.str_135:
 	 .string "failed" 
	 .align 8 
.str_134:
 	 .string "----------------------\n" 
	 .align 8 
.str_133:
 	 .string "args_d  th=%d, value=%d\n" 
	 .align 8 
.str_132:
 	 .string "args_d  %s\n" 
	 .align 8 
.str_131:
 	 .string "pass" 
	 .align 8 
.str_130:
 	 .string "failed" 
	 .align 8 
.str_129:
 	 .string "----------------------\n" 
	 .align 8 
.str_128:
 	 .string "args_c  th=%d, value=%d\n" 
	 .align 8 
.str_127:
 	 .string "args_c  %s\n" 
	 .align 8 
.str_126:
 	 .string "pass" 
	 .align 8 
.str_125:
 	 .string "failed" 
	 .align 8 
.str_124:
 	 .string "----------------------\n" 
	 .align 8 
.str_123:
 	 .string "args_b  th=%d, value=%d\n" 
	 .align 8 
.str_122:
 	 .string "args_b  %s\n" 
	 .align 8 
.str_121:
 	 .string "pass" 
	 .align 8 
.str_120:
 	 .string "failed" 
	 .align 8 
.str_119:
 	 .string "----------------------\n" 
	 .align 8 
.str_118:
 	 .string "args_a  th=%d, value=%d\n" 
	 .align 8 
.str_117:
 	 .string "args_a  %s\n" 
	 .align 8 
.str_116:
 	 .string "pass" 
	 .align 8 
.str_115:
 	 .string "failed" 
	 .align 8 
.str_114:
 	 .string "----------------------\n" 
	 .align 8 
.str_113:
 	 .string "d  th=%d, value=%d\n" 
	 .align 8 
.str_112:
 	 .string "d  %s\n" 
	 .align 8 
.str_111:
 	 .string "pass" 
	 .align 8 
.str_110:
 	 .string "failed" 
	 .align 8 
.str_109:
 	 .string "----------------------\n" 
	 .align 8 
.str_108:
 	 .string "c  th=%d, value=%d\n" 
	 .align 8 
.str_107:
 	 .string "c  %s\n" 
	 .align 8 
.str_106:
 	 .string "pass" 
	 .align 8 
.str_105:
 	 .string "failed" 
	 .align 8 
.str_104:
 	 .string "----------------------\n" 
	 .align 8 
.str_103:
 	 .string "b  th=%d, value=%d\n" 
	 .align 8 
.str_102:
 	 .string "b  %s\n" 
	 .align 8 
.str_101:
 	 .string "pass" 
	 .align 8 
.str_100:
 	 .string "failed" 
	 .align 8 
.str_99:
 	 .string "----------------------\n" 
	 .align 8 
.str_98:
 	 .string "a  th=%d, value=%d\n" 
	 .align 8 
.str_97:
 	 .string "a  %s\n" 
	 .align 8 
.str_96:
 	 .string "pass" 
	 .align 8 
.str_95:
 	 .string "failed" 
	 .align 8 
.str_94:
 	 .string "----------------------\n" 
	 .align 8 
.str_93:
 	 .string "k  th=%d,  value=%d\n" 
	 .align 8 
.str_92:
 	 .string "k  %s\n" 
	 .align 8 
.str_91:
 	 .string "pass" 
	 .align 8 
.str_90:
 	 .string "failed" 
	 .align 8 
.str_89:
 	 .string "----------------------\n" 
	 .align 8 
.str_88:
 	 .string "j  th=%d,  value=%d\n" 
	 .align 8 
.str_87:
 	 .string "j  %s\n" 
	 .align 8 
.str_86:
 	 .string "pass" 
	 .align 8 
.str_85:
 	 .string "failed" 
	 .align 8 
.str_84:
 	 .string "----------------------\n" 
	 .align 8 
.str_83:
 	 .string "l2  th=%d,  value=%d\n" 
	 .align 8 
.str_82:
 	 .string "l2  %s\n" 
	 .align 8 
.str_81:
 	 .string "pass" 
	 .align 8 
.str_80:
 	 .string "failed" 
	 .align 8 
.str_79:
 	 .string "----------------------\n" 
	 .align 8 
.str_78:
 	 .string "l1  th=%d,  value=%d\n" 
	 .align 8 
.str_77:
 	 .string "l1  %s\n" 
	 .align 8 
.str_76:
 	 .string "pass" 
	 .align 8 
.str_75:
 	 .string "failed" 
	 .align 8 
.str_74:
 	 .string "----------------------\n" 
	 .align 8 
.str_73:
 	 .string "tab[5]  th=%d,  value=%d\n" 
	 .align 8 
.str_72:
 	 .string "tab[5]  %s\n" 
	 .align 8 
.str_71:
 	 .string "pass" 
	 .align 8 
.str_70:
 	 .string "failed" 
	 .align 8 
.str_69:
 	 .string "----------------------\n" 
	 .align 8 
.str_68:
 	 .string "tab[4]  th=%d,  value=%d\n" 
	 .align 8 
.str_67:
 	 .string "tab[4]  %s\n" 
	 .align 8 
.str_66:
 	 .string "pass" 
	 .align 8 
.str_65:
 	 .string "failed" 
	 .align 8 
.str_64:
 	 .string "----------------------\n" 
	 .align 8 
.str_63:
 	 .string "tab[3]  th=%d,  value=%d\n" 
	 .align 8 
.str_62:
 	 .string "tab[3]  %s\n" 
	 .align 8 
.str_61:
 	 .string "pass" 
	 .align 8 
.str_60:
 	 .string "failed" 
	 .align 8 
.str_59:
 	 .string "----------------------\n" 
	 .align 8 
.str_58:
 	 .string "tab[2]  th=%d,  value=%d\n" 
	 .align 8 
.str_57:
 	 .string "tab[2]  %s\n" 
	 .align 8 
.str_56:
 	 .string "pass" 
	 .align 8 
.str_55:
 	 .string "failed" 
	 .align 8 
.str_54:
 	 .string "----------------------\n" 
	 .align 8 
.str_53:
 	 .string "tab[1]  th=%d,  value=%d\n" 
	 .align 8 
.str_52:
 	 .string "tab[1]  %s\n" 
	 .align 8 
.str_51:
 	 .string "pass" 
	 .align 8 
.str_50:
 	 .string "failed" 
	 .align 8 
.str_49:
 	 .string "----------------------\n" 
	 .align 8 
.str_48:
 	 .string "tab[0]  th=%d,  value=%d\n" 
	 .align 8 
.str_47:
 	 .string "tab[0]  %s\n" 
	 .align 8 
.str_46:
 	 .string "pass" 
	 .align 8 
.str_45:
 	 .string "failed" 
	 .align 8 
.str_44:
 	 .string "----------------------\n" 
	 .align 8 
.str_43:
 	 .string "e9  th=%d,  value=%d\n" 
	 .align 8 
.str_42:
 	 .string "e9  %s\n" 
	 .align 8 
.str_41:
 	 .string "pass" 
	 .align 8 
.str_40:
 	 .string "failed" 
	 .align 8 
.str_39:
 	 .string "----------------------\n" 
	 .align 8 
.str_38:
 	 .string "e8  th=%d,  value=%d\n" 
	 .align 8 
.str_37:
 	 .string "e8  %s\n" 
	 .align 8 
.str_36:
 	 .string "pass" 
	 .align 8 
.str_35:
 	 .string "failed" 
	 .align 8 
.str_34:
 	 .string "----------------------\n" 
	 .align 8 
.str_33:
 	 .string "e7  th=%d,  value=%d\n" 
	 .align 8 
.str_32:
 	 .string "e7  %s\n" 
	 .align 8 
.str_31:
 	 .string "pass" 
	 .align 8 
.str_30:
 	 .string "failed" 
	 .align 8 
.str_29:
 	 .string "----------------------\n" 
	 .align 8 
.str_28:
 	 .string "e6  th=%d,  value=%d\n" 
	 .align 8 
.str_27:
 	 .string "e6  %s\n" 
	 .align 8 
.str_26:
 	 .string "pass" 
	 .align 8 
.str_25:
 	 .string "failed" 
	 .align 8 
.str_24:
 	 .string "----------------------\n" 
	 .align 8 
.str_23:
 	 .string "e5  th=%d,  value=%d\n" 
	 .align 8 
.str_22:
 	 .string "e5  %s\n" 
	 .align 8 
.str_21:
 	 .string "pass" 
	 .align 8 
.str_20:
 	 .string "failed" 
	 .align 8 
.str_19:
 	 .string "----------------------\n" 
	 .align 8 
.str_18:
 	 .string "e4  th=%d,  value=%d\n" 
	 .align 8 
.str_17:
 	 .string "e4  %s\n" 
	 .align 8 
.str_16:
 	 .string "pass" 
	 .align 8 
.str_15:
 	 .string "failed" 
	 .align 8 
.str_14:
 	 .string "----------------------\n" 
	 .align 8 
.str_13:
 	 .string "e3  th=%d,  value=%d\n" 
	 .align 8 
.str_12:
 	 .string "e3  %s\n" 
	 .align 8 
.str_11:
 	 .string "pass" 
	 .align 8 
.str_10:
 	 .string "failed" 
	 .align 8 
.str_9:
 	 .string "----------------------\n" 
	 .align 8 
.str_8:
 	 .string "e2  th=%d,  value=%d\n" 
	 .align 8 
.str_7:
 	 .string "e2  %s\n" 
	 .align 8 
.str_6:
 	 .string "pass" 
	 .align 8 
.str_5:
 	 .string "failed" 
	 .align 8 
.str_4:
 	 .string "----------------------\n" 
	 .align 8 
.str_3:
 	 .string "e1  th=%d,  value=%d\n" 
	 .align 8 
.str_2:
 	 .string "e1  %s\n" 
	 .align 8 
.str_1:
 	 .string "pass" 
	 .align 8 
.str_0:
 	 .string "failed" 
