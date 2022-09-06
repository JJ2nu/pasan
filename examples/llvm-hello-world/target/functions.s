	.text
	.file	"functions.cpp"
	.globl	_Z3addii                        # -- Begin function _Z3addii
	.p2align	4, 0x90
	.type	_Z3addii,@function
_Z3addii:                               # @_Z3addii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z3addii, .Lfunc_end0-_Z3addii
	.cfi_endproc
                                        # -- End function
	.globl	_Z3incRi                        # -- Begin function _Z3incRi
	.p2align	4, 0x90
	.type	_Z3incRi,@function
_Z3incRi:                               # @_Z3incRi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z3incRi, .Lfunc_end1-_Z3incRi
	.cfi_endproc
                                        # -- End function
	.globl	_Z6sourcei                      # -- Begin function _Z6sourcei
	.p2align	4, 0x90
	.type	_Z6sourcei,@function
_Z6sourcei:                             # @_Z6sourcei
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z6sourcei, .Lfunc_end2-_Z6sourcei
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$10, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	_Z6sourcei
	movl	-20(%rbp), %edi
	movl	$42, %esi
	callq	_Z3addii
	movl	%eax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	_Z3incRi
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3addii
	.addrsig_sym _Z3incRi
	.addrsig_sym _Z6sourcei
