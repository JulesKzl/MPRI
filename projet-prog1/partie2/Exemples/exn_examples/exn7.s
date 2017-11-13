.data 
	 .NULL: .space 8 
.text 
.globl main 
f: 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
movq $0, %r12 
	 subq $8, %rsp 
	 movq $8, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq malloc 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_0: 
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
	 callq f 
	 cmpq $0, %r12 
	 je .call_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_1: 
	 popq %r10 
	 movq %rax, %r11 
	 movq (%r11, %r10, 8), %rax 
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
.pg:
 	 .string "(" 
	 .align 8 
.pd:
 	 .string ")\n" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception "  
