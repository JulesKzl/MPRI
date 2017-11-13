.data 
	 .NULL: .space 8 
.text 
.globl main 
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
	 movslq %eax, %rax 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
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
	 movslq %eax, %rax 
	 movq %rax ,-24(%rbp) 
	 movq $2, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_2 
	 movq $0, %rax 
	 jmp .cmp_3 
.cmp_2: 
	 movq $1, %rax 
.cmp_3: 
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
	 movslq %eax, %rax 
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
.cif_3: 
	 movq -24(%rbp), %rax 
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
	 movq %rax ,-32(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
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
	 jmp .cif_5 
.cif_4: 
	 movq $.str_2, %rax 
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
	 movq stderr, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movslq %eax, %rax 
	 movq $10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq exit 
	 movslq %eax, %rax 
.cif_5: 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq zero_sieve 
	 movq $1, %rax 
	 pushq %rax 
	 movq $1, %rax 
	 popq %r10 
	 movq -32(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 movq -32(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq fill_sieve 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq print_sieve 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq free 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
zero_sieve: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 subq $8, %rsp 
	 movq $0, %rax 
	 movq %rax ,-24(%rbp) 
.while_0: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_6 
	 movq $0, %rax 
	 jmp .cmp_7 
.cmp_6: 
	 movq $1, %rax 
.cmp_7: 
	 cmpq $0, %rax 
	 je .while_1 
	 movq $0, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %rax 
	 jmp .while_0 
.while_1: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
fill_sieve: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 subq $8, %rsp 
	 movq $2, %rax 
	 movq %rax ,-24(%rbp) 
.while_2: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_8 
	 movq $0, %rax 
	 jmp .cmp_9 
.cmp_8: 
	 movq $1, %rax 
.cmp_9: 
	 cmpq $0, %rax 
	 je .while_3 
	 movq -24(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -16(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq -8(%rbp), %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq cross_out_prime 
.while_4: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_10 
	 movq $0, %rax 
	 jmp .cmp_11 
.cmp_10: 
	 movq $1, %rax 
.cmp_11: 
	 cmpq $1, %rax 
	 je .eif_2 
	 movq $0, %rax 
	 jmp .eif_3 
.eif_2: 
	 movq -24(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
.eif_3: 
	 cmpq $0, %rax 
	 je .while_5 
	 jmp .while_4 
.while_5: 
	 jmp .while_2 
.while_3: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
cross_out_prime: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 movq %rdx,-24(%rbp) 
	 subq $8, %rsp 
	 movq -24(%rbp), %rax 
	 movq %rax ,-32(%rbp) 
.while_6: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-24(%rbp) 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_12 
	 movq $0, %rax 
	 jmp .cmp_13 
.cmp_12: 
	 movq $1, %rax 
.cmp_13: 
	 cmpq $0, %rax 
	 je .while_7 
	 movq $1, %rax 
	 pushq %rax 
	 movq -24(%rbp), %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 jmp .while_6 
.while_7: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
print_sieve: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq -16(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_3, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $.str_4, %rax 
	 movq %rax ,-24(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-40(%rbp) 
	 movq $0, %rax 
	 movq %rax ,-32(%rbp) 
.while_8: 
	 movq -16(%rbp), %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jl .cmp_14 
	 movq $0, %rax 
	 jmp .cmp_15 
.cmp_14: 
	 movq $1, %rax 
.cmp_15: 
	 cmpq $0, %rax 
	 je .while_9 
	 movq $0, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 je .cmp_16 
	 movq $0, %rax 
	 jmp .cmp_17 
.cmp_16: 
	 movq $1, %rax 
.cmp_17: 
	 cmpq $1, %rax 
	 je .cif_6 
	 jmp .cif_7 
.cif_6: 
	 movq -32(%rbp), %rax 
	 movq %rax, %rdx 
	 pushq %rdx 
	 movq -24(%rbp), %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $.str_5, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 popq %rdx 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq -40(%rbp), %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -40(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-40(%rbp) 
	 pushq %rax 
	 movq $4, %rax 
	 popq %r10 
	 cmpq %r10, %rax 
	 jle .cmp_18 
	 movq $0, %rax 
	 jmp .cmp_19 
.cmp_18: 
	 movq $1, %rax 
.cmp_19: 
	 cmpq $1, %rax 
	 je .cif_8 
	 movq $.str_6, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 jmp .cif_9 
.cif_8: 
	 movq $.str_7, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rax ,-40(%rbp) 
	 movq $.str_8, %rax 
	 movq %rax ,-24(%rbp) 
.cif_9: 
.cif_7: 
	 movq -32(%rbp), %rax 
	 pushq %rax 
	 movq $1, %rax 
	 pushq %rax 
	 movq -32(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax ,-32(%rbp) 
	 popq %rax 
	 jmp .while_8 
.while_9: 
	 movq stdout, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq fflush 
	 movslq %eax, %rax 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.section .rodata 
 	 .align 8 
.str_8:
 	 .string "  " 
	 .align 8 
.str_7:
 	 .string "\n" 
	 .align 8 
.str_6:
 	 .string " " 
	 .align 8 
.str_5:
 	 .string "%s%8d" 
	 .align 8 
.str_4:
 	 .string "  " 
	 .align 8 
.str_3:
 	 .string "Les nombres premiers inferieurs a %d sont:\n" 
	 .align 8 
.str_2:
 	 .string "%d est trop gros, je n'ai pas assez de place memoire...\n" 
	 .align 8 
.str_1:
 	 .string "Ah non, quand meme, un nombre >=2, s'il-vous-plait...\n" 
	 .align 8 
.str_0:
 	 .string "Usage: ./sieve <n>\ncalcule et affiche les nombres premiers inferieurs a <n>.\n" 
