.text 
.globl main 
fact: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 subq $8, %rsp 
	 movq $1, %rax 
	 movq %rax ,-16(%rbp) 
.while_0: 
	 movq $0, %rax 
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
	 je .eif_0 
	 movq $1, %rax 
	 jmp .eif_1 
.eif_0: 
	 movq $0, %rax 
.eif_1: 
	 cmpq $0, %rax 
	 je .while_1 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 imulq %r10, %rax 
	 movq %rax ,-16(%rbp) 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax ,-8(%rbp) 
	 popq %rax 
	 jmp .while_0 
.while_1: 
	 movq -16(%rbp), %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 movq $2, %rax 
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
	 je .eif_2 
	 movq $1, %rax 
	 jmp .eif_3 
.eif_2: 
	 movq $0, %rax 
.eif_3: 
	 cmpq $1, %rax 
	 je .cif_0 
	 jmp .cif_1 
.cif_0: 
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
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movq $10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
.cif_1: 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq $1, %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq atoi 
	 movq %rax ,-24(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_4 
	 movq $0, %rax 
	 jmp .cmp_5 
.cmp_4: 
	 movq $1, %rax 
.cmp_5: 
	 cmpq $1, %rax 
	 je .cif_2 
	 jmp .cif_3 
.cif_2: 
	 movq $.str_1, %rax 
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
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movq $10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
.cif_3: 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fact 
	 movq %rax ,-32(%rbp) 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_2, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.section .rodata 
 	 .align 8 
.str_2:
 	 .string "La factorielle de %d vaut %d (en tout cas, modulo 2^32...).\n" 
	 .align 8 
.str_1:
 	 .string "Ah non, quand meme, un nombre positif ou nul, s'il-vous-plait...\n" 
	 .align 8 
.str_0:
 	 .string "Usage: ./fact <n>\ncalcule et affiche la factorielle de <n>.\n" 
