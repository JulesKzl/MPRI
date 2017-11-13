
.section .text
	.globl	main
	.type	main, @function
  main:
	pushq	%rsi
	pushq	%rdi
	subq	$16, %rsp
	pushq	%rbx
	movq	$4, %rax
	movq	%rax, 16(%rsp)
	movq	%rax, %rbx
	movq	$3, %rax
	movq	%rax, 16(%rsp)
	addq	%rbx, %rax
	popq	%rbx
	movq	%rax, 0(%rsp)
	movq	8(%rsp), %rax
	pushq	%rax
	movq	8(%rsp), %rax
	pushq	%rax
	movq	$.string_litteral_1, %rax
	pushq	%rax
	popq	%rdi
	popq	%rsi
	popq	%rdx
	movq	$0, %rax
	callq	printf
	# hack for stdlib functions with a 32-bit behaviour:
	movslq	%eax, %rax
	movq	stdout, %rax
	pushq	%rax
	popq	%rdi
	movq	$0, %rax
	callq	fflush
	# hack for stdlib functions with a 32-bit behaviour:
	movslq	%eax, %rax
	movq	$0, %rax
	addq	$32, %rsp
	retq
	addq	$16, %rsp
	addq	$16, %rsp
	retq

.section .data
	.local	.string_litteral_1
	.type	.string_litteral_1, @object
	.align	4
	.size	.string_litteral_1, 49
  .string_litteral_1:
	.string "Valeur de j=%d (normalement 7), valeur de i=%d.\n"
