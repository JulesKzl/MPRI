	.file	"test.c"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"X est OK "
.LC1:
	.string	"Exception INT "
.LC2:
	.string	"Exception indefinie. "
	.text
	.globl	main
	.type	main, @function
main:
.LFB971:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA971
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$6, -24(%rbp)
	cmpl	$7, -24(%rbp)
	je	.L2
	movl	$4, %edi
	call	__cxa_allocate_exception
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, %edx
	movl	$_ZTIi, %esi
	movq	%rax, %rdi
.LEHB0:
	call	__cxa_throw
.L2:
	movl	$.LC0, %edi
	call	puts
.LEHE0:
.L9:
	movl	$0, %eax
	jmp	.L13
.L11:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L12:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L10:
	cmpq	$1, %rdx
	jne	.L14
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	$.LC1, %edi
.LEHB3:
	call	puts
.LEHE3:
	call	__cxa_end_catch
	jmp	.L9
.L14:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movl	$.LC2, %edi
.LEHB4:
	call	puts
.LEHE4:
.LEHB5:
	call	__cxa_end_catch
.LEHE5:
	jmp	.L9
.L13:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE971:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA971:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT971-.LLSDATTD971
.LLSDATTD971:
	.byte	0x1
	.uleb128 .LLSDACSE971-.LLSDACSB971
.LLSDACSB971:
	.uleb128 .LEHB0-.LFB971
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L10-.LFB971
	.uleb128 0x3
	.uleb128 .LEHB1-.LFB971
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB971
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB971
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L11-.LFB971
	.uleb128 0
	.uleb128 .LEHB4-.LFB971
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L12-.LFB971
	.uleb128 0
	.uleb128 .LEHB5-.LFB971
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE971:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	0

	.long	_ZTIi
.LLSDATT971:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB972:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L15
	cmpl	$65535, -8(%rbp)
	jne	.L15
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE972:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB973:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE973:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
