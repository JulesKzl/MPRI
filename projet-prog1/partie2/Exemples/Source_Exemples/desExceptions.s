.data 
	 .NULL: .space 8 
.text 
.globl main 
serie: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 subq $8, %rsp 
	 subq $8, %rsp 
	 movq %rdi,-8(%rbp) 
	 movq %rsi,-16(%rbp) 
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
	 je .cif_0 
	 movq -8(%rbp), %rax 
	 pushq %rax 
	 movq -16(%rbp), %rax 
	 popq %r10 
	 addq %r10, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $1, %rax 
	 pushq %rax 
	 movq -8(%rbp), %rax 
	 popq %r10 
	 subq %r10, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq serie 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 jmp .end_corps_try_1 
.call_pere_0: 
	 jmp .debut_finally_try_1 
.end_corps_try_1: 
.debut_finally_try_1: 
	 movq $.str_0, %rax 
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
	 cmpq $0, %r12 
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 jmp .cif_1 
.cif_0: 
	 movq -16(%rbp), %rax 
	 movq %rax, %r15
	 movq $.str_1, %r12 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.cif_1: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 movq $1, %rax 
	 movq %rax, %rsi 
	 pushq %rsi 
	 movq $100, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 popq %rsi 
	 movq $0, %rax 
	 .align 16 
	 callq serie 
	 cmpq $0, %r12 
	 je .call_pere_2 
	 jmp .end_corps_try_2 
.call_pere_2: 
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
	 movq %r15 ,-8(%rbp) 
	 movq $0, %r12 
	 movq -8(%rbp), %rax 
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
	 cmpq $0, %r12 
	 je .call_pere_3 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_3: 
	 jmp .debut_finally_try_2 
.cmp_str2_2_0: 
.debut_finally_try_2: 
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
.str_3:
 	 .string "res: %d" 
	 .align 8 
.str_2:
 	 .string "Zero" 
	 .align 8 
.str_1:
 	 .string "Zero" 
	 .align 8 
.str_0:
 	 .string "." 
 	 .align 8 
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
