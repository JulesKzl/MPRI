.data 
	 .NULL: .space 8 
.text 
.globl main 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $.str_0, %rax 
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
end_bloc_1: 
	 cmpq $0, %r12 
	 je continue_bloc_1 
continue_bloc_1:  
.section .rodata 
 	 .align 8 
.str_0:
 	 .string "Uncaught expression" 
	 .align 8 
.uncaught:
 	 .string "Uncaught exception"  
