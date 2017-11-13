.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
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
	 movq %rax ,-8(%rbp) 
	 movq $0, %rax 
	 pushq %rax 
	 movq $0, %rax 
	 popq %r10 
	 movq -8(%rbp), %r11 
	 movq %r10, (%r11,%rax,8) 
	 movq %r10, %rax 
	 movq $.str_0, %rax 
	 movq %rax, %rdi 
	 pushq %rdi 
	 popq %rdi 
	 movq $0, %rax 
	 .align 16 
	 callq printf 
	 movslq %eax, %rax 
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
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
end_bloc_1: 
	 cmpq $0, %r12 
	 je continue_bloc_1 
	 .continue_bloc_1:  
.section .rodata 
 	 .align 8 
.str_0:
 	 .string "1" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception"  
