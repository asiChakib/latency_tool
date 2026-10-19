	.file	"latency_benchmarking_tool.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB5007:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE5007:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0:
.LFB11822:
	.cfi_startproc
	leaq	-1(%rdx), %r10
	movq	%rsi, %r8
	movapd	%xmm0, %xmm2
	movq	%rdx, %r11
	shrq	$63, %r10
	leaq	-1(%r10,%rdx), %r10
	sarq	%r10
	cmpq	%r10, %rsi
	jge	.L4
	movq	%rsi, %rdx
	jmp	.L7
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L13:
	movq	%rcx, %rdx
.L7:
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
	jg	.L13
	testb	$1, %r11b
	je	.L19
.L8:
	leaq	-1(%rcx), %rdx
	shrq	$63, %rdx
	leaq	-1(%rdx,%rcx), %rdx
	sarq	%rdx
	cmpq	%r8, %rcx
	jg	.L11
	jmp	.L9
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L21:
	movsd	%xmm0, (%rax)
	leaq	-1(%rdx), %rax
	movq	%rdx, %rcx
	shrq	$63, %rax
	leaq	-1(%rax,%rdx), %rax
	cmpq	%rdx, %r8
	jge	.L20
	sarq	%rax
	movq	%rax, %rdx
.L11:
	leaq	(%rdi,%rdx,8), %rsi
	leaq	(%rdi,%rcx,8), %rax
	movsd	(%rsi), %xmm0
	comisd	%xmm0, %xmm2
	ja	.L21
.L9:
	movsd	%xmm2, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	subq	$2, %r11
	sarq	%r11
	cmpq	%rcx, %r11
	jne	.L8
.L12:
	leaq	1(%rcx,%rcx), %rcx
	leaq	(%rdi,%rcx,8), %rdx
	movsd	(%rdx), %xmm0
	movsd	%xmm0, (%rax)
	movq	%rdx, %rax
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L20:
	movq	%rsi, %rax
	movsd	%xmm2, (%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	leaq	(%rdi,%rsi,8), %rax
	testb	$1, %dl
	jne	.L9
	subq	$2, %r11
	sarq	%r11
	cmpq	%r11, %rsi
	jne	.L9
	movq	%r8, %rcx
	jmp	.L12
	.cfi_endproc
.LFE11822:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	.p2align 4
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0:
.LFB11824:
	.cfi_startproc
	cmpq	%rsi, %rdi
	je	.L42
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
	jne	.L32
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L45:
	movq	%rbx, %rdx
	subq	%rbp, %rdx
	movq	%rdx, %rax
	salq	$61, %rax
	subq	%rdx, %rax
	leaq	8(%rbx,%rax), %rdi
	cmpq	$8, %rdx
	jle	.L26
	movq	%rbp, %rsi
	movsd	%xmm1, 8(%rsp)
	call	memmove@PLT
	movsd	8(%rsp), %xmm1
.L27:
	addq	$8, %rbx
	movsd	%xmm1, 0(%rbp)
	cmpq	%rbx, %r12
	je	.L22
.L32:
	movsd	(%rbx), %xmm1
	movsd	0(%rbp), %xmm0
	comisd	%xmm1, %xmm0
	ja	.L45
	movsd	-8(%rbx), %xmm0
	leaq	-8(%rbx), %rax
	comisd	%xmm1, %xmm0
	jbe	.L40
	.p2align 5
	.p2align 4
	.p2align 3
.L31:
	movsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	movsd	-8(%rax), %xmm0
	subq	$8, %rax
	comisd	%xmm1, %xmm0
	ja	.L31
.L29:
	addq	$8, %rbx
	movsd	%xmm1, (%rdx)
	cmpq	%rbx, %r12
	jne	.L32
.L22:
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
.L26:
	.cfi_restore_state
	jne	.L27
	movsd	%xmm0, (%rdi)
	jmp	.L27
.L40:
	movq	%rbx, %rdx
	jmp	.L29
.L42:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE11824:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB11827:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rdi
	testq	%rdi, %rdi
	je	.L51
	cmpb	$0, 56(%rdi)
	je	.L48
	movsbl	67(%rdi), %esi
.L49:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
.L48:
	.cfi_restore_state
	movq	%rdi, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	8(%rsp), %rdi
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	(%rdi), %rax
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L49
	movl	$10, %esi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L49
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold:
.LFSB11827:
.L51:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE11827:
	.text
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text.unlikely
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold
.LCOLDE0:
	.text
.LHOTE0:
	.p2align 4
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0:
.LFB11829:
	.cfi_startproc
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$128, %rax
	jle	.L105
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
	je	.L106
.L55:
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
	jbe	.L95
	comisd	%xmm3, %xmm4
	ja	.L97
	comisd	%xmm5, %xmm4
	ja	.L104
.L67:
	shufpd	$1, %xmm2, %xmm2
	movups	%xmm2, (%rbx)
.L66:
	comisd	%xmm1, %xmm0
	movq	%rbp, %rdx
	leaq	8(%rsi), %rax
	jbe	.L98
	.p2align 5
	.p2align 4
	.p2align 3
.L74:
	movq	%rax, %rcx
	movsd	(%rax), %xmm1
	addq	$8, %rax
	comisd	%xmm1, %xmm0
	ja	.L74
	movsd	-8(%rdx), %xmm2
	leaq	-16(%rdx), %rax
	comisd	%xmm0, %xmm2
	jbe	.L99
	.p2align 5
	.p2align 4
	.p2align 3
.L77:
	movq	%rax, %rdx
	movsd	(%rax), %xmm2
	subq	$8, %rax
	comisd	%xmm0, %xmm2
	ja	.L77
	cmpq	%rdx, %rcx
	jnb	.L107
.L79:
	movsd	%xmm2, (%rcx)
	leaq	8(%rcx), %rsi
	movsd	%xmm1, (%rdx)
	movsd	(%rbx), %xmm0
	movsd	8(%rcx), %xmm1
	leaq	8(%rsi), %rax
	comisd	%xmm1, %xmm0
	ja	.L74
.L98:
	movsd	-8(%rdx), %xmm2
	movq	%rsi, %rcx
	leaq	-16(%rdx), %rax
	comisd	%xmm0, %xmm2
	ja	.L77
	.p2align 4
	.p2align 3
.L99:
	subq	$8, %rdx
	cmpq	%rdx, %rcx
	jb	.L79
	.p2align 4
	.p2align 3
.L107:
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	movq	8(%rsp), %rax
	subq	%rbx, %rax
	cmpq	$128, %rax
	jle	.L53
	movq	%rax, %r13
	movq	8(%rsp), %rbp
	sarq	$4, %rax
	sarq	$3, %r13
	testq	%r12, %r12
	jne	.L55
.L106:
	leaq	-1(%rax), %r12
	jmp	.L57
.L108:
	subq	$1, %r12
.L57:
	movsd	(%rbx,%r12,8), %xmm0
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	testq	%r12, %r12
	jne	.L108
	movq	%rbp, %rax
	subq	$8, %rbp
	subq	%rbx, %rax
	cmpq	$8, %rax
	jle	.L53
	.p2align 4
	.p2align 3
.L60:
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
	jg	.L60
.L53:
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
.L95:
	.cfi_restore_state
	comisd	%xmm5, %xmm4
	ja	.L67
	comisd	%xmm3, %xmm4
	jbe	.L97
.L104:
	movsd	%xmm4, (%rbx)
	movsd	%xmm1, -8(%rbp)
	movsd	8(%rbx), %xmm1
	movsd	(%rbx), %xmm0
	jmp	.L66
.L97:
	movsd	%xmm3, (%rbx)
	movsd	%xmm1, (%rax)
	movsd	8(%rbx), %xmm1
	movsd	(%rbx), %xmm0
	jmp	.L66
.L105:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret
	.cfi_endproc
.LFE11829:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB11106:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L109
	movq	16(%rax), %rsi
	subq	%rdi, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L109:
	ret
	.cfi_endproc
.LFE11106:
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"-"
.LC3:
	.string	"minimum: "
.LC4:
	.string	" ns\n"
.LC5:
	.string	"p50    : "
.LC6:
	.string	"maximum: "
	.section	.text.unlikely
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB9994:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9994
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movl	$20180, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rdi
	movq	%rdi, 24(%rsp)
	movl	$80008, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$80008, %edx
	xorl	%esi, %esi
	leaq	80008(%rax), %r12
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%r12, 16(%rsp)
	movq	%rbp, %r13
	call	memset@PLT
	movq	%r12, 8(%rsp)
	.p2align 4
	.p2align 3
.L112:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, %r15
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movl	%ebx, %esi
	leaq	_ZSt4cout(%rip), %rdi
	subq	%r15, %rax
	movq	%rax, %r14
.LEHB1:
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm0, %xmm0
	addl	$20000, %ebx
	addq	$8, %r13
	cvtsi2sdq	%r14, %xmm0
	divsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -8(%r13)
	cmpl	$200040180, %ebx
	jne	.L112
	movl	$26, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	leaq	128(%rbp), %rsi
	movq	%rbp, %rdi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
	leaq	128(%rbp), %rcx
.L116:
	movsd	(%rcx), %xmm1
	movsd	-8(%rcx), %xmm0
	movq	%rcx, %rdx
	leaq	-8(%rcx), %rax
	comisd	%xmm1, %xmm0
	jbe	.L113
	.p2align 5
	.p2align 4
	.p2align 3
.L115:
	movsd	%xmm0, 8(%rax)
	movq	%rax, %rdx
	movsd	-8(%rax), %xmm0
	subq	$8, %rax
	comisd	%xmm1, %xmm0
	ja	.L115
.L113:
	addq	$8, %rcx
	movsd	%xmm1, (%rdx)
	cmpq	%rcx, %r12
	jne	.L116
	leaq	_ZSt4cout(%rip), %rdi
	movq	0(%rbp), %r12
	movq	80000(%rbp), %rbx
	movq	40000(%rbp), %rbp
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%r12, %xmm0
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rbp, %xmm0
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rbx, %xmm0
	movq	%rax, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE1:
	movq	%rsp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L128
	addq	$40, %rsp
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
.L128:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L120:
	endbr64
	movq	%rax, %rbx
	jmp	.L117
	.section	.gcc_except_table,"a",@progbits
.LLSDA9994:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9994-.LLSDACSB9994
.LLSDACSB9994:
	.uleb128 .LEHB0-.LFB9994
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9994
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L120-.LFB9994
	.uleb128 0
.LLSDACSE9994:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC9994
	.type	main.cold, @function
main.cold:
.LFSB9994:
.L117:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%rsp, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L129
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L129:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE9994:
	.section	.gcc_except_table
.LLSDAC9994:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC9994-.LLSDACSBC9994
.LLSDACSBC9994:
	.uleb128 .LEHB2-.LCOLDB7
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC9994:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1083129856
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
