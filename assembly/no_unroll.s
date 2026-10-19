	.file	"volatile_test.cpp"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	movl	$200, %eax
	.p2align 4
	.p2align 4
	.p2align 3
.L2:
	movl	%eax, -4(%rsp)
	addl	$20, %eax
	cmpl	$20200, %eax
	jne	.L2
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
