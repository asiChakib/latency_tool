	.file	"empty_loop_benchmark.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0:
.LFB4113:
	.cfi_startproc
	leaq	-1(%rdx), %r10
	movq	%rsi, %r8
	movapd	%xmm0, %xmm2
	movq	%rdx, %r11
	shrq	$63, %r10
	leaq	-1(%r10,%rdx), %r10
	sarq	%r10
	cmpq	%r10, %rsi
	jge	.L2
	movq	%rsi, %rdx
	jmp	.L5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rcx, %rdx
.L5:
	leaq	1(%rdx), %rax
	leaq	(%rax,%rax), %rcx
	salq	$4, %rax
	leaq	-1(%rcx), %rsi
	addq	%rdi, %rax
	leaq	(%rdi,%rsi,8), %r9
	movsd	(%rax), %xmm0
	movsd	(%r9), %xmm1
	comisd	%xmm0, %xmm1
	maxsd	%xmm0, %xmm1
	cmova	%rsi, %rcx
	cmova	%r9, %rax
	movsd	%xmm1, (%rdi,%rdx,8)
	cmpq	%rcx, %r10
	jg	.L11
	testb	$1, %r11b
	je	.L18
.L6:
	leaq	-1(%rcx), %rdx
	shrq	$63, %rdx
	leaq	-1(%rdx,%rcx), %rdx
	sarq	%rdx
	cmpq	%r8, %rcx
	jg	.L9
	jmp	.L7
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L20:
	movsd	%xmm0, (%rax)
	leaq	-1(%rdx), %rax
	movq	%rdx, %rcx
	shrq	$63, %rax
	leaq	-1(%rax,%rdx), %rax
	cmpq	%rdx, %r8
	jge	.L19
	sarq	%rax
	movq	%rax, %rdx
.L9:
	leaq	(%rdi,%rdx,8), %rsi
	leaq	(%rdi,%rcx,8), %rax
	movsd	(%rsi), %xmm0
	comisd	%xmm0, %xmm2
	ja	.L20
.L7:
	movsd	%xmm2, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	subq	$2, %r11
	sarq	%r11
	cmpq	%rcx, %r11
	jne	.L6
.L10:
	leaq	1(%rcx,%rcx), %rcx
	leaq	(%rdi,%rcx,8), %rdx
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movq	%rdx, %rax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L19:
	movq	%rsi, %rax
	movsd	%xmm2, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	(%rdi,%rsi,8), %rax
	testb	$1, %dl
	jne	.L7
	subq	$2, %r11
	sarq	%r11
	cmpq	%r11, %rsi
	jne	.L7
	movq	%r8, %rcx
	jmp	.L10
	.cfi_endproc
.LFE4113:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	.p2align 4
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0:
.LFB4115:
	.cfi_startproc
	cmpq	%rsi, %rdi
	je	.L41
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	8(%rdi), %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	cmpq	%rbx, %rsi
	jne	.L31
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L44:
	movq	%rbx, %rdx
	subq	%rbp, %rdx
	movq	%rdx, %rax
	salq	$61, %rax
	subq	%rdx, %rax
	leaq	8(%rbx,%rax), %rdi
	cmpq	$8, %rdx
	jle	.L25
	movq	%rbp, %rsi
	movsd	%xmm1, 8(%rsp)
	call	memmove@PLT
	movsd	8(%rsp), %xmm1
.L26:
	addq	$8, %rbx
	movsd	%xmm1, 0(%rbp)
	cmpq	%rbx, %r12
	je	.L21
.L31:
	movsd	(%rbx), %xmm1
	movsd	0(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L44
	movsd	-8(%rbx), %xmm0
	leaq	-8(%rbx), %rax
	comisd	%xmm1, %xmm0
	jbe	.L39
	.p2align 5
	.p2align 4
	.p2align 3
.L30:
	movsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	movsd	-8(%rax), %xmm0
	subq	$8, %rax
	comisd	%xmm1, %xmm0
	ja	.L30
	movsd	%xmm1, (%rdx)
.L45:
	addq	$8, %rbx
	cmpq	%rbx, %r12
	jne	.L31
.L21:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	jne	.L26
	movsd	%xmm0, (%rdi)
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L39:
	movq	%rbx, %rdx
	movsd	%xmm1, (%rdx)
	jmp	.L45
.L41:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE4115:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
	.p2align 4
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0:
.LFB4118:
	.cfi_startproc
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$128, %rax
	jle	.L98
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rax, %r13
	sarq	$4, %rax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12
	sarq	$3, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	testq	%r12, %r12
	je	.L99
.L48:
	movupd	(%rbx), %xmm2
	leaq	(%rbx,%rax,8), %rax
	subq	$1, %r12
	leaq	8(%rbx), %rsi
	movsd	(%rax), %xmm3
	movsd	-8(%rbp), %xmm4
	movapd	%xmm2, %xmm5
	movapd	%xmm2, %xmm1
	unpckhpd	%xmm5, %xmm5
	comisd	%xmm5, %xmm3
	movapd	%xmm5, %xmm0
	jbe	.L88
	comisd	%xmm3, %xmm4
	ja	.L90
	comisd	%xmm5, %xmm4
	ja	.L97
.L60:
	shufpd	$1, %xmm2, %xmm2
	movups	%xmm2, (%rbx)
.L59:
	comisd	%xmm1, %xmm0
	movq	%rbp, %rdx
	leaq	8(%rsi), %rax
	jbe	.L91
	.p2align 5
	.p2align 4
	.p2align 3
.L67:
	movq	%rax, %rcx
	movsd	(%rax), %xmm1
	addq	$8, %rax
	comisd	%xmm1, %xmm0
	ja	.L67
	movsd	-8(%rdx), %xmm2
	leaq	-16(%rdx), %rax
	comisd	%xmm0, %xmm2
	jbe	.L92
	.p2align 5
	.p2align 4
	.p2align 3
.L70:
	movq	%rax, %rdx
	movsd	(%rax), %xmm2
	subq	$8, %rax
	comisd	%xmm0, %xmm2
	ja	.L70
	cmpq	%rdx, %rcx
	jnb	.L100
.L72:
	movsd	%xmm2, (%rcx)
	leaq	8(%rcx), %rsi
	movsd	%xmm1, (%rdx)
	movsd	(%rbx), %xmm0
	movsd	8(%rcx), %xmm1
	leaq	8(%rsi), %rax
	comisd	%xmm1, %xmm0
	ja	.L67
.L91:
	movsd	-8(%rdx), %xmm2
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rax
	comisd	%xmm0, %xmm2
	ja	.L70
	.p2align 4
	.p2align 3
.L92:
	subq	$8, %rdx
	cmpq	%rdx, %rcx
	jb	.L72
	.p2align 4
	.p2align 3
.L100:
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	cmpq	$128, %rax
	jle	.L46
	movq	%rax, %r13
	movq	8(%rsp), %rbp
	sarq	$4, %rax
	sarq	$3, %r13
	testq	%r12, %r12
	jne	.L48
.L99:
	leaq	-1(%rax), %r12
	jmp	.L50
.L101:
	subq	$1, %r12
.L50:
	movsd	(%rbx,%r12,8), %xmm0
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	testq	%r12, %r12
	jne	.L101
	movq	%rbp, %rax
	subq	$8, %rbp
	subq	%rbx, %rax
	cmpq	$8, %rax
	jle	.L46
	.p2align 4
	.p2align 3
.L53:
	movq	%rbp, %r12
	movsd	(%rbx), %xmm1
	movsd	0(%rbp), %xmm0
	xorl	%esi, %esi
	subq	%rbx, %r12
	movq	%rbx, %rdi
	subq	$8, %rbp
	movq	%r12, %rdx
	movsd	%xmm1, 8(%rbp)
	sarq	$3, %rdx
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	cmpq	$8, %r12
	jg	.L53
.L46:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L88:
	.cfi_restore_state
	comisd	%xmm5, %xmm4
	ja	.L60
	comisd	%xmm3, %xmm4
	jbe	.L90
.L97:
	movsd	%xmm4, (%rbx)
	movsd	%xmm1, -8(%rbp)
	movsd	8(%rbx), %xmm1
	movsd	(%rbx), %xmm0
	jmp	.L59
.L90:
	movsd	%xmm3, (%rbx)
	movsd	%xmm1, (%rax)
	movsd	8(%rbx), %xmm1
	movsd	(%rbx), %xmm0
	jmp	.L59
.L98:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret
	.cfi_endproc
.LFE4118:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	.p2align 4
	.globl	_Z20calculate_statisticsSt6vectorIdSaIdEE
	.type	_Z20calculate_statisticsSt6vectorIdSaIdEE, @function
_Z20calculate_statisticsSt6vectorIdSaIdEE:
.LFB3282:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rsi), %rbx
	movq	(%rsi), %rdi
	cmpq	%rbx, %rdi
	je	.L120
	movq	%rbx, %r13
	movq	%rsi, %r12
	movq	$-2, %rdx
	subq	%rdi, %r13
	movq	%r13, %rax
	sarq	$3, %rax
	je	.L104
	bsrq	%rax, %rax
	cltq
	leaq	(%rax,%rax), %rdx
.L104:
	movq	%rbx, %rsi
	movq	%rdi, 8(%rsp)
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	cmpq	$128, %r13
	movq	8(%rsp), %rdi
	jg	.L131
	movq	%rbx, %rsi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
.L107:
	movq	8(%r12), %rbx
	movq	(%r12), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
.L103:
	subq	$1, %rax
	js	.L112
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L113:
	movsd	.LC0(%rip), %xmm2
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm0, %xmm2
	comisd	%xmm1, %xmm2
	jnb	.L114
	cvttsd2siq	%xmm2, %rcx
.L115:
	movsd	.LC2(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	comisd	%xmm1, %xmm2
	jnb	.L116
	cvttsd2siq	%xmm2, %rax
.L117:
	mulsd	.LC3(%rip), %xmm0
	movsd	(%rdx,%rcx,8), %xmm2
	movhpd	(%rdx,%rax,8), %xmm2
	comisd	%xmm1, %xmm0
	jnb	.L118
	cvttsd2siq	%xmm0, %rax
.L119:
	movsd	(%rdx), %xmm0
	movhpd	(%rdx,%rax,8), %xmm0
	movups	%xmm0, 0(%rbp)
	movq	%rbp, %rax
	movsd	-8(%rbx), %xmm0
	movups	%xmm2, 16(%rbp)
	movsd	%xmm0, 32(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	.cfi_restore_state
	leaq	128(%rdi), %r13
	movq	%r13, %rsi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
	cmpq	%r13, %rbx
	je	.L107
	.p2align 4
	.p2align 3
.L106:
	movsd	0(%r13), %xmm1
	movsd	-8(%r13), %xmm0
	leaq	-8(%r13), %rax
	comisd	%xmm1, %xmm0
	jbe	.L129
	.p2align 5
	.p2align 4
	.p2align 3
.L110:
	movsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	movsd	-8(%rax), %xmm0
	subq	$8, %rax
	comisd	%xmm1, %xmm0
	ja	.L110
	addq	$8, %r13
	movsd	%xmm1, (%rdx)
	cmpq	%r13, %rbx
	jne	.L106
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L118:
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L116:
	subsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %rax
	btcq	$63, %rax
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L114:
	subsd	%xmm1, %xmm2
	cvttsd2siq	%xmm2, %rcx
	btcq	$63, %rcx
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L112:
	movq	%rax, %rcx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rax, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L129:
	movq	%r13, %rdx
	addq	$8, %r13
	movsd	%xmm1, (%rdx)
	cmpq	%r13, %rbx
	jne	.L106
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L120:
	movq	%rbx, %rdx
	xorl	%eax, %eax
	jmp	.L103
	.cfi_endproc
.LFE3282:
	.size	_Z20calculate_statisticsSt6vectorIdSaIdEE, .-_Z20calculate_statisticsSt6vectorIdSaIdEE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Minimum: "
.LC5:
	.string	" ns/iteration\n"
.LC6:
	.string	"p50    : "
.LC7:
	.string	"p90    : "
.LC8:
	.string	"p99    : "
.LC9:
	.string	"Maximum: "
	.text
	.p2align 4
	.globl	_Z16print_statisticsRK10Statistics
	.type	_Z16print_statisticsRK10Statistics, @function
_Z16print_statisticsRK10Statistics:
.LFB3283:
	.cfi_startproc
	endbr64
	movq	_ZSt4cout(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	_ZSt4cout(%rip), %rdx
	movq	%rdi, %rbx
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	addq	-24(%rax), %rdx
	movl	24(%rdx), %eax
	movq	$2, 8(%rdx)
	andl	$-261, %eax
	orl	$4, %eax
	movl	%eax, 24(%rdx)
	movl	$9, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	(%rbx), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	leaq	.LC6(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	8(%rbx), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	16(%rbx), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	leaq	.LC8(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	24(%rbx), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$9, %edx
	leaq	.LC9(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	32(%rbx), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$14, %edx
	leaq	.LC5(%rip), %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	.cfi_endproc
.LFE3283:
	.size	_Z16print_statisticsRK10Statistics, .-_Z16print_statisticsRK10Statistics
	.section	.text._ZNSt12_Vector_baseImSaImEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseImSaImEED2Ev
	.type	_ZNSt12_Vector_baseImSaImEED2Ev, @function
_ZNSt12_Vector_baseImSaImEED2Ev:
.LFB3788:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L134
	movq	16(%rax), %rsi
	subq	%rdi, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L134:
	ret
	.cfi_endproc
.LFE3788:
	.size	_ZNSt12_Vector_baseImSaImEED2Ev, .-_ZNSt12_Vector_baseImSaImEED2Ev
	.weak	_ZNSt12_Vector_baseImSaImEED1Ev
	.set	_ZNSt12_Vector_baseImSaImEED1Ev,_ZNSt12_Vector_baseImSaImEED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB3810:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L136
	movq	16(%rax), %rsi
	subq	%rdi, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L136:
	ret
	.cfi_endproc
.LFE3810:
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.rodata.str1.1
.LC11:
	.string	"\nBatch size: "
.LC12:
	.string	" (average ns per iteration)\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB15:
	.section	.text.startup,"ax",@progbits
.LHOTB15:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3284:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3284
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pxor	%xmm0, %xmm0
	movl	$24, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movdqa	.LC14(%rip), %xmm0
	leaq	24(%rax), %rcx
	movq	%rax, 32(%rsp)
	movq	$10000, 16(%rax)
	movq	%rax, 8(%rsp)
	movups	%xmm0, (%rax)
	leaq	128(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rax, 24(%rsp)
	.p2align 4
	.p2align 3
.L139:
	movq	8(%rsp), %rax
	movl	$80008, %edi
	movq	(%rax), %r15
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	$0x000000000, (%rax)
	movq	%rax, %r13
	leaq	8(%rax), %rdi
	xorl	%esi, %esi
	movl	$80000, %edx
	movq	%r15, %r12
	movq	%rax, 64(%rsp)
	movq	%r13, %r14
	leaq	80008(%rax), %rbp
	andl	$1, %r12d
	movq	%rbp, 80(%rsp)
	call	memset@PLT
	movq	%rbp, 72(%rsp)
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L159:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%r15, %xmm1
.L143:
	divsd	%xmm1, %xmm0
	addq	$8, %r14
	movsd	%xmm0, -8(%r14)
	cmpq	%rbp, %r14
	je	.L158
.L144:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	testq	%r15, %r15
	jns	.L159
	movq	%r15, %rax
	pxor	%xmm1, %xmm1
	shrq	%rax
	orq	%r12, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L143
.L158:
	movl	$13, %edx
	leaq	.LC11(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r15, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$28, %edx
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$80008, %edi
	call	_Znwm@PLT
.LEHE2:
	leaq	80008(%rax), %rbp
	movq	%r13, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
	movl	$80008, %edx
	movq	%rbp, 112(%rsp)
	movq	%rax, 96(%rsp)
	call	memcpy@PLT
	movq	24(%rsp), %r15
	movq	%rbp, 104(%rsp)
	leaq	96(%rsp), %rbp
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	_Z20calculate_statisticsSt6vectorIdSaIdEE
	movq	%r15, %rdi
.LEHB3:
	call	_Z16print_statisticsRK10Statistics
.LEHE3:
	movl	$80008, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
	movl	$80008, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	addq	$8, 8(%rsp)
	movq	16(%rsp), %rcx
	cmpq	%rcx, 8(%rsp)
	jne	.L139
	leaq	32(%rsp), %rdi
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L160
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L160:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L151:
	endbr64
	movq	%rax, %rbx
	jmp	.L145
.L150:
	endbr64
	movq	%rax, %rbx
	jmp	.L146
.L152:
	endbr64
	movq	%rax, %rbx
	jmp	.L147
.L153:
	endbr64
	movq	%rax, %rbx
	jmp	.L140
	.section	.gcc_except_table,"a",@progbits
.LLSDA3284:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3284-.LLSDACSB3284
.LLSDACSB3284:
	.uleb128 .LEHB0-.LFB3284
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L153-.LFB3284
	.uleb128 0
	.uleb128 .LEHB1-.LFB3284
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L152-.LFB3284
	.uleb128 0
	.uleb128 .LEHB2-.LFB3284
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L150-.LFB3284
	.uleb128 0
	.uleb128 .LEHB3-.LFB3284
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L151-.LFB3284
	.uleb128 0
.LLSDACSE3284:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3284
	.type	main.cold, @function
main.cold:
.LFSB3284:
.L145:
	.cfi_def_cfa_offset 240
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rbp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
.L146:
	leaq	64(%rsp), %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
.L147:
	leaq	32(%rsp), %rdi
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L161
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.L161:
	call	__stack_chk_fail@PLT
.L140:
	leaq	32(%rsp), %rdi
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L162
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L162:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3284:
	.section	.gcc_except_table
.LLSDAC3284:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3284-.LLSDACSBC3284
.LLSDACSBC3284:
	.uleb128 .LEHB4-.LCOLDB15
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC3284:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE15:
	.section	.text.startup
.LHOTE15:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	-858993459
	.long	1072483532
	.align 8
.LC1:
	.long	0
	.long	1138753536
	.align 8
.LC2:
	.long	2061584302
	.long	1072672276
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC14:
	.quad	100
	.quad	1000
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
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
