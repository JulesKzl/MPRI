.data 
	 .i: .space 8 
	 .NULL: .space 8 
.text 
.globl main 
rule_33: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $1, %rax 
	 jmp .end_corps_try_1 
.end_corps_try_1: 
	 pushq %rax 
	 cmpq $0, %r12 
	 je .debut_finally_try_1 
.debut_finally_try_1: 
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
	 je .try_pere_1 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.try_pere_1: 
	 movq $0, %rax 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
main: 
	 pushq %rbp 
	 movq %rsp, %rbp 
	 movq $0, %r12 
	 movq $0, %rax 
	 .align 16 
	 callq rule_33 
	 cmpq $0, %r12 
	 je .call_pere_0 
	 movq %rbp, %rsp 
	 popq %rbp 
	 ret 
.call_pere_0: 
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
