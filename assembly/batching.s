	.file	"batching.cpp"
	.intel_syntax noprefix
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
.LFB2378:
	.cfi_startproc
	endbr64
	mov	eax, esi
	ret
	.cfi_endproc
.LFE2378:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0:
.LFB4118:
	.cfi_startproc
	lea	r10, -1[rdx]
	mov	r8, rsi
	movapd	xmm2, xmm0
	mov	r11, rdx
	shr	r10, 63
	lea	r10, -1[r10+rdx]
	sar	r10
	cmp	rsi, r10
	jge	.L4
	mov	rdx, rsi
	jmp	.L7
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L13:
	mov	rdx, rcx
.L7:
	lea	rax, 1[rdx]
	lea	rcx, [rax+rax]
	sal	rax, 4
	lea	rsi, -1[rcx]
	add	rax, rdi
	lea	r9, [rdi+rsi*8]
	movsd	xmm0, QWORD PTR [rax]
	movsd	xmm1, QWORD PTR [r9]
	comisd	xmm1, xmm0
	maxsd	xmm1, xmm0
	cmova	rcx, rsi
	cmova	rax, r9
	movsd	QWORD PTR [rdi+rdx*8], xmm1
	cmp	r10, rcx
	jg	.L13
	test	r11b, 1
	je	.L19
.L8:
	lea	rdx, -1[rcx]
	shr	rdx, 63
	lea	rdx, -1[rdx+rcx]
	sar	rdx
	cmp	rcx, r8
	jg	.L11
	jmp	.L9
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L21:
	movsd	QWORD PTR [rax], xmm0
	lea	rax, -1[rdx]
	mov	rcx, rdx
	shr	rax, 63
	lea	rax, -1[rax+rdx]
	cmp	r8, rdx
	jge	.L20
	sar	rax
	mov	rdx, rax
.L11:
	lea	rsi, [rdi+rdx*8]
	lea	rax, [rdi+rcx*8]
	movsd	xmm0, QWORD PTR [rsi]
	comisd	xmm2, xmm0
	ja	.L21
.L9:
	movsd	QWORD PTR [rax], xmm2
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	sub	r11, 2
	sar	r11
	cmp	r11, rcx
	jne	.L8
.L12:
	lea	rcx, 1[rcx+rcx]
	lea	rdx, [rdi+rcx*8]
	movsd	xmm0, QWORD PTR [rdx]
	movsd	QWORD PTR [rax], xmm0
	mov	rax, rdx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L20:
	mov	rax, rsi
	movsd	QWORD PTR [rax], xmm2
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	lea	rax, [rdi+rsi*8]
	test	dl, 1
	jne	.L9
	sub	r11, 2
	sar	r11
	cmp	rsi, r11
	jne	.L9
	mov	rcx, r8
	jmp	.L12
	.cfi_endproc
.LFE4118:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	.p2align 4
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0:
.LFB4120:
	.cfi_startproc
	cmp	rdi, rsi
	je	.L42
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	r12, rsi
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	rbp, rdi
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	lea	rbx, 8[rdi]
	sub	rsp, 16
	.cfi_def_cfa_offset 48
	cmp	rsi, rbx
	jne	.L32
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L45:
	mov	rdx, rbx
	sub	rdx, rbp
	mov	rax, rdx
	sal	rax, 61
	sub	rax, rdx
	lea	rdi, 8[rbx+rax]
	cmp	rdx, 8
	jle	.L26
	mov	rsi, rbp
	movsd	QWORD PTR 8[rsp], xmm1
	call	memmove@PLT
	movsd	xmm1, QWORD PTR 8[rsp]
.L27:
	add	rbx, 8
	movsd	QWORD PTR 0[rbp], xmm1
	cmp	r12, rbx
	je	.L22
.L32:
	movsd	xmm1, QWORD PTR [rbx]
	movsd	xmm0, QWORD PTR 0[rbp]
	comisd	xmm0, xmm1
	ja	.L45
	movsd	xmm0, QWORD PTR -8[rbx]
	lea	rax, -8[rbx]
	comisd	xmm0, xmm1
	jbe	.L40
	.p2align 5
	.p2align 4
	.p2align 3
.L31:
	movsd	QWORD PTR 8[rax], xmm0
	mov	rdx, rax
	movsd	xmm0, QWORD PTR -8[rax]
	sub	rax, 8
	comisd	xmm0, xmm1
	ja	.L31
	movsd	QWORD PTR [rdx], xmm1
.L46:
	add	rbx, 8
	cmp	r12, rbx
	jne	.L32
.L22:
	add	rsp, 16
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L26:
	.cfi_restore_state
	jne	.L27
	movsd	QWORD PTR [rdi], xmm0
	jmp	.L27
	.p2align 4,,10
	.p2align 3
.L40:
	mov	rdx, rbx
	movsd	QWORD PTR [rdx], xmm1
	jmp	.L46
.L42:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	ret
	.cfi_endproc
.LFE4120:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
	.p2align 4
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0:
.LFB4123:
	.cfi_startproc
	mov	rax, rsi
	sub	rax, rdi
	cmp	rax, 128
	jle	.L99
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	mov	r13, rax
	sar	rax, 4
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	mov	r12, rdx
	sar	r13, 3
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	mov	rbp, rsi
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	rbx, rdi
	sub	rsp, 24
	.cfi_def_cfa_offset 64
	test	r12, r12
	je	.L100
.L49:
	movupd	xmm2, XMMWORD PTR [rbx]
	lea	rax, [rbx+rax*8]
	sub	r12, 1
	lea	rsi, 8[rbx]
	movsd	xmm3, QWORD PTR [rax]
	movsd	xmm4, QWORD PTR -8[rbp]
	movapd	xmm5, xmm2
	movapd	xmm1, xmm2
	unpckhpd	xmm5, xmm5
	comisd	xmm3, xmm5
	movapd	xmm0, xmm5
	jbe	.L89
	comisd	xmm4, xmm3
	ja	.L91
	comisd	xmm4, xmm5
	ja	.L98
.L61:
	shufpd	xmm2, xmm2, 1
	movups	XMMWORD PTR [rbx], xmm2
.L60:
	comisd	xmm0, xmm1
	mov	rdx, rbp
	lea	rax, 8[rsi]
	jbe	.L92
	.p2align 5
	.p2align 4
	.p2align 3
.L68:
	mov	rcx, rax
	movsd	xmm1, QWORD PTR [rax]
	add	rax, 8
	comisd	xmm0, xmm1
	ja	.L68
	movsd	xmm2, QWORD PTR -8[rdx]
	lea	rax, -16[rdx]
	comisd	xmm2, xmm0
	jbe	.L93
	.p2align 5
	.p2align 4
	.p2align 3
.L71:
	mov	rdx, rax
	movsd	xmm2, QWORD PTR [rax]
	sub	rax, 8
	comisd	xmm2, xmm0
	ja	.L71
	cmp	rcx, rdx
	jnb	.L101
.L73:
	movsd	QWORD PTR [rcx], xmm2
	lea	rsi, 8[rcx]
	movsd	QWORD PTR [rdx], xmm1
	movsd	xmm0, QWORD PTR [rbx]
	movsd	xmm1, QWORD PTR 8[rcx]
	lea	rax, 8[rsi]
	comisd	xmm0, xmm1
	ja	.L68
.L92:
	movsd	xmm2, QWORD PTR -8[rdx]
	mov	rcx, rsi
	lea	rax, -16[rdx]
	comisd	xmm2, xmm0
	ja	.L71
	.p2align 4
	.p2align 3
.L93:
	sub	rdx, 8
	cmp	rcx, rdx
	jb	.L73
	.p2align 4
	.p2align 3
.L101:
	mov	rdx, r12
	mov	rsi, rbp
	mov	rdi, rcx
	mov	QWORD PTR 8[rsp], rcx
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	mov	rax, QWORD PTR 8[rsp]
	sub	rax, rbx
	cmp	rax, 128
	jle	.L47
	mov	r13, rax
	mov	rbp, QWORD PTR 8[rsp]
	sar	rax, 4
	sar	r13, 3
	test	r12, r12
	jne	.L49
.L100:
	lea	r12, -1[rax]
	jmp	.L51
.L102:
	sub	r12, 1
.L51:
	movsd	xmm0, QWORD PTR [rbx+r12*8]
	mov	rdx, r13
	mov	rsi, r12
	mov	rdi, rbx
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	test	r12, r12
	jne	.L102
	mov	rax, rbp
	sub	rbp, 8
	sub	rax, rbx
	cmp	rax, 8
	jle	.L47
	.p2align 4
	.p2align 3
.L54:
	mov	r12, rbp
	movsd	xmm1, QWORD PTR [rbx]
	movsd	xmm0, QWORD PTR 0[rbp]
	xor	esi, esi
	sub	r12, rbx
	mov	rdi, rbx
	sub	rbp, 8
	mov	rdx, r12
	movsd	QWORD PTR 8[rbp], xmm1
	sar	rdx, 3
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.isra.0
	cmp	r12, 8
	jg	.L54
.L47:
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
.L89:
	.cfi_restore_state
	comisd	xmm4, xmm5
	ja	.L61
	comisd	xmm4, xmm3
	jbe	.L91
.L98:
	movsd	QWORD PTR [rbx], xmm4
	movsd	QWORD PTR -8[rbp], xmm1
	movsd	xmm1, QWORD PTR 8[rbx]
	movsd	xmm0, QWORD PTR [rbx]
	jmp	.L60
.L91:
	movsd	QWORD PTR [rbx], xmm3
	movsd	QWORD PTR [rax], xmm1
	movsd	xmm1, QWORD PTR 8[rbx]
	movsd	xmm0, QWORD PTR [rbx]
	jmp	.L60
.L99:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret
	.cfi_endproc
.LFE4123:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	.p2align 4
	.globl	_Z15calculate_statsSt6vectorIdSaIdEE
	.type	_Z15calculate_statsSt6vectorIdSaIdEE, @function
_Z15calculate_statsSt6vectorIdSaIdEE:
.LFB3282:
	.cfi_startproc
	endbr64
	push	r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	push	rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	mov	rbp, rdi
	push	rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	sub	rsp, 24
	.cfi_def_cfa_offset 64
	mov	rbx, QWORD PTR 8[rsi]
	mov	rdi, QWORD PTR [rsi]
	cmp	rdi, rbx
	je	.L121
	mov	r13, rbx
	mov	r12, rsi
	mov	rdx, -2
	sub	r13, rdi
	mov	rax, r13
	sar	rax, 3
	je	.L105
	bsr	rax, rax
	cdqe
	lea	rdx, [rax+rax]
.L105:
	mov	rsi, rbx
	mov	QWORD PTR 8[rsp], rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_.isra.0
	cmp	r13, 128
	mov	rdi, QWORD PTR 8[rsp]
	jg	.L132
	mov	rsi, rbx
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
.L108:
	mov	rbx, QWORD PTR 8[r12]
	mov	rdx, QWORD PTR [r12]
	mov	rax, rbx
	sub	rax, rdx
	sar	rax, 3
.L104:
	sub	rax, 1
	js	.L113
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
.L114:
	movsd	xmm2, QWORD PTR .LC0[rip]
	movsd	xmm1, QWORD PTR .LC1[rip]
	mulsd	xmm2, xmm0
	comisd	xmm2, xmm1
	jnb	.L115
	cvttsd2si	rcx, xmm2
.L116:
	movsd	xmm2, QWORD PTR .LC2[rip]
	mulsd	xmm2, xmm0
	comisd	xmm2, xmm1
	jnb	.L117
	cvttsd2si	rax, xmm2
.L118:
	mulsd	xmm0, QWORD PTR .LC3[rip]
	movsd	xmm2, QWORD PTR [rdx+rcx*8]
	movhpd	xmm2, QWORD PTR [rdx+rax*8]
	comisd	xmm0, xmm1
	jnb	.L119
	cvttsd2si	rax, xmm0
.L120:
	movsd	xmm0, QWORD PTR [rdx]
	movhpd	xmm0, QWORD PTR [rdx+rax*8]
	movups	XMMWORD PTR 0[rbp], xmm0
	mov	rax, rbp
	movsd	xmm0, QWORD PTR -8[rbx]
	movups	XMMWORD PTR 16[rbp], xmm2
	movsd	QWORD PTR 32[rbp], xmm0
	add	rsp, 24
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	rbp
	.cfi_def_cfa_offset 24
	pop	r12
	.cfi_def_cfa_offset 16
	pop	r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L132:
	.cfi_restore_state
	lea	r13, 128[rdi]
	mov	rsi, r13
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.isra.0
	cmp	rbx, r13
	je	.L108
	.p2align 4
	.p2align 3
.L107:
	movsd	xmm1, QWORD PTR 0[r13]
	movsd	xmm0, QWORD PTR -8[r13]
	lea	rax, -8[r13]
	comisd	xmm0, xmm1
	jbe	.L130
	.p2align 5
	.p2align 4
	.p2align 3
.L111:
	movsd	QWORD PTR 8[rax], xmm0
	mov	rdx, rax
	movsd	xmm0, QWORD PTR -8[rax]
	sub	rax, 8
	comisd	xmm0, xmm1
	ja	.L111
	add	r13, 8
	movsd	QWORD PTR [rdx], xmm1
	cmp	rbx, r13
	jne	.L107
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L119:
	subsd	xmm0, xmm1
	cvttsd2si	rax, xmm0
	btc	rax, 63
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L117:
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	btc	rax, 63
	jmp	.L118
	.p2align 4,,10
	.p2align 3
.L115:
	subsd	xmm2, xmm1
	cvttsd2si	rcx, xmm2
	btc	rcx, 63
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L113:
	mov	rcx, rax
	and	eax, 1
	pxor	xmm0, xmm0
	shr	rcx
	or	rcx, rax
	cvtsi2sd	xmm0, rcx
	addsd	xmm0, xmm0
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L130:
	mov	rdx, r13
	add	r13, 8
	movsd	QWORD PTR [rdx], xmm1
	cmp	rbx, r13
	jne	.L107
	jmp	.L108
	.p2align 4,,10
	.p2align 3
.L121:
	mov	rdx, rbx
	xor	eax, eax
	jmp	.L104
	.cfi_endproc
.LFE3282:
	.size	_Z15calculate_statsSt6vectorIdSaIdEE, .-_Z15calculate_statsSt6vectorIdSaIdEE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"\n"
.LC5:
	.string	"minimum: "
.LC6:
	.string	" ns\n"
.LC7:
	.string	"p50    : "
.LC8:
	.string	"p90    : "
.LC9:
	.string	"p99    : "
.LC10:
	.string	"maximum: "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4
	.globl	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics
	.type	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics, @function
_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics:
.LFB3283:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rsi
	sub	rsp, 8
	.cfi_def_cfa_offset 32
	mov	rdx, QWORD PTR 8[rdi]
	mov	rsi, QWORD PTR [rdi]
	lea	rdi, _ZSt4cout[rip]
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 1
	lea	rsi, .LC4[rip]
	mov	rbp, rax
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 9
	lea	rsi, .LC5[rip]
	mov	rdi, rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	xmm0, QWORD PTR [rbx]
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 4
	lea	rsi, .LC6[rip]
	mov	rbp, rax
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 9
	lea	rsi, .LC7[rip]
	mov	rdi, rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	xmm0, QWORD PTR 8[rbx]
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 4
	lea	rsi, .LC6[rip]
	mov	rbp, rax
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 9
	lea	rsi, .LC8[rip]
	mov	rdi, rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	xmm0, QWORD PTR 16[rbx]
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 4
	lea	rsi, .LC6[rip]
	mov	rbp, rax
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 9
	lea	rsi, .LC9[rip]
	mov	rdi, rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	xmm0, QWORD PTR 24[rbx]
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 4
	lea	rsi, .LC6[rip]
	mov	rbp, rax
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	edx, 9
	lea	rsi, .LC10[rip]
	mov	rdi, rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movsd	xmm0, QWORD PTR 32[rbx]
	mov	rdi, rbp
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 4
	lea	rsi, .LC6[rip]
	mov	rbx, rax
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rax, QWORD PTR [rbx]
	mov	rax, QWORD PTR -24[rax]
	mov	rbp, QWORD PTR 240[rbx+rax]
	test	rbp, rbp
	je	.L138
	cmp	BYTE PTR 56[rbp], 0
	je	.L135
	movsx	esi, BYTE PTR 67[rbp]
.L136:
	mov	rdi, rbx
	call	_ZNSo3putEc@PLT
	add	rsp, 8
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	mov	rdi, rax
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	mov	rdi, rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rax, QWORD PTR 0[rbp]
	mov	esi, 10
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, rdx
	je	.L136
	mov	rdi, rbp
	call	rax
	movsx	esi, al
	jmp	.L136
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics.cold, @function
_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics.cold:
.LFSB3283:
.L138:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3283:
	.text
	.size	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics, .-_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics
	.section	.text.unlikely
	.size	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics.cold, .-_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics.cold
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB3793:
	.cfi_startproc
	endbr64
	mov	rax, rdi
	mov	rdi, QWORD PTR [rdi]
	test	rdi, rdi
	je	.L140
	mov	rsi, QWORD PTR 16[rax]
	sub	rsi, rdi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L140:
	ret
	.cfi_endproc
.LFE3793:
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt12_Vector_baseImSaImEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseImSaImEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12_Vector_baseImSaImEED2Ev
	.type	_ZNSt12_Vector_baseImSaImEED2Ev, @function
_ZNSt12_Vector_baseImSaImEED2Ev:
.LFB3816:
	.cfi_startproc
	endbr64
	mov	rax, rdi
	mov	rdi, QWORD PTR [rdi]
	test	rdi, rdi
	je	.L142
	mov	rsi, QWORD PTR 16[rax]
	sub	rsi, rdi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L142:
	ret
	.cfi_endproc
.LFE3816:
	.size	_ZNSt12_Vector_baseImSaImEED2Ev, .-_ZNSt12_Vector_baseImSaImEED2Ev
	.weak	_ZNSt12_Vector_baseImSaImEED1Ev
	.set	_ZNSt12_Vector_baseImSaImEED1Ev,_ZNSt12_Vector_baseImSaImEED2Ev
	.section	.rodata.str1.1
.LC13:
	.string	"final sink value: "
.LC14:
	.string	"Batch size: "
.LC15:
	.string	"basic_string::append"
.LC16:
	.string	" (average ns per iteration)"
	.section	.text.unlikely
.LCOLDB34:
	.section	.text.startup,"ax",@progbits
.LHOTB34:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3284:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3284
	endbr64
	push	r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	lea	rdx, _ZSt4cout[rip]
	mov	edi, 80008
	push	r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 568
	.cfi_def_cfa_offset 624
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR 552[rsp], rax
	mov	rax, QWORD PTR _ZSt4cout[rip]
	add	rdx, QWORD PTR -24[rax]
	mov	eax, DWORD PTR 24[rdx]
	mov	QWORD PTR 8[rdx], 2
	and	eax, -261
	or	eax, 4
	mov	DWORD PTR 24[rdx], eax
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	mov	edx, 80000
	xor	esi, esi
	lea	rbx, 80008[rax]
	mov	QWORD PTR 64[rsp], rax
	lea	rdi, 8[rax]
	mov	QWORD PTR 80[rsp], rbx
	mov	QWORD PTR [rax], 0x000000000
	call	memset@PLT
	mov	QWORD PTR 72[rsp], rbx
	xor	ebx, ebx
	.p2align 4
	.p2align 3
.L145:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	mov	r12, rax
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	mov	rbp, QWORD PTR 64[rsp]
	pxor	xmm0, xmm0
	sub	rax, r12
	cvtsi2sd	xmm0, rax
	movsd	QWORD PTR 0[rbp+rbx], xmm0
	add	rbx, 8
	cmp	rbx, 80008
	jne	.L145
	mov	rbx, QWORD PTR 72[rsp]
	sub	rbx, rbp
	je	.L267
	mov	rdi, rbx
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	xmm0, rax
	lea	r12, [rax+rbx]
	mov	rdx, rbx
	mov	rsi, rbp
	punpcklqdq	xmm0, xmm0
	mov	rdi, rax
	mov	QWORD PTR 176[rsp], r12
	movaps	XMMWORD PTR 160[rsp], xmm0
	call	memcpy@PLT
.L147:
	lea	rbx, 192[rsp]
	lea	r14, 160[rsp]
	mov	QWORD PTR 168[rsp], r12
	mov	rsi, r14
	mov	rdi, rbx
	mov	QWORD PTR 32[rsp], rbx
	lea	rbp, 304[rsp]
	mov	QWORD PTR 24[rsp], r14
	call	_Z15calculate_statsSt6vectorIdSaIdEE
	lea	rax, 320[rsp]
	xor	edx, edx
	mov	rdi, rbp
	mov	QWORD PTR 8[rsp], rax
	mov	QWORD PTR 304[rsp], rax
	lea	rax, 128[rsp]
	mov	rsi, rax
	mov	QWORD PTR 48[rsp], rax
	mov	QWORD PTR 128[rsp], 36
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE2:
	mov	rdx, QWORD PTR 128[rsp]
	movdqa	xmm0, XMMWORD PTR .LC18[rip]
	mov	rsi, rbx
	mov	rdi, rbp
	mov	QWORD PTR 304[rsp], rax
	mov	QWORD PTR 320[rsp], rdx
	movups	XMMWORD PTR [rax], xmm0
	movdqa	xmm0, XMMWORD PTR .LC19[rip]
	mov	DWORD PTR 32[rax], 1935958373
	movups	XMMWORD PTR 16[rax], xmm0
	mov	rax, QWORD PTR 128[rsp]
	mov	rdx, QWORD PTR 304[rsp]
	mov	QWORD PTR 312[rsp], rax
	mov	BYTE PTR [rdx+rax], 0
.LEHB3:
	call	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics
.LEHE3:
	mov	rdi, rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, r14
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	pxor	xmm0, xmm0
	mov	edi, 24
	mov	QWORD PTR 112[rsp], 0
	movaps	XMMWORD PTR 96[rsp], xmm0
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movdqa	xmm0, XMMWORD PTR .LC20[rip]
	lea	rcx, 24[rax]
	mov	QWORD PTR 96[rsp], rax
	mov	QWORD PTR 112[rsp], rcx
	mov	QWORD PTR 40[rsp], rcx
	movups	XMMWORD PTR [rax], xmm0
	mov	QWORD PTR 16[rax], 10000
	mov	QWORD PTR 104[rsp], rcx
	mov	QWORD PTR 16[rsp], rax
	cmp	rax, rcx
	je	.L194
	movabs	r13, 3777893186295716171
	movabs	r14, 2951479051793528259
.L193:
	mov	rax, QWORD PTR 16[rsp]
	mov	edi, 80008
	mov	r12, QWORD PTR [rax]
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	lea	rbx, 80008[rax]
	lea	rdi, 8[rax]
	mov	edx, 80000
	xor	esi, esi
	mov	QWORD PTR 144[rsp], rbx
	mov	QWORD PTR 128[rsp], rax
	mov	QWORD PTR [rax], 0x000000000
	call	memset@PLT
	mov	QWORD PTR 56[rsp], rbp
	lea	eax, [r12+r12*4]
	pxor	xmm2, xmm2
	mov	QWORD PTR 136[rsp], rbx
	cvtsi2sd	xmm2, r12
	xor	ebx, ebx
	lea	r15d, 200[0+rax*4]
	movsd	QWORD PTR [rsp], xmm2
	.p2align 4
	.p2align 3
.L153:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	mov	rbp, rax
	mov	eax, 200
	test	r12, r12
	je	.L155
	test	r15b, 4
	je	.L152
	mov	DWORD PTR sink[rip], 200
	mov	eax, 220
	cmp	eax, r15d
	je	.L155
	.p2align 5
	.p2align 4
	.p2align 3
.L152:
	mov	DWORD PTR sink[rip], eax
	lea	edx, 20[rax]
	add	eax, 40
	mov	DWORD PTR sink[rip], edx
	cmp	eax, r15d
	jne	.L152
.L155:
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	mov	rsi, QWORD PTR 128[rsp]
	pxor	xmm0, xmm0
	sub	rax, rbp
	cvtsi2sd	xmm0, rax
	divsd	xmm0, QWORD PTR [rsp]
	movsd	QWORD PTR [rsi+rbx], xmm0
	add	rbx, 8
	cmp	rbx, 80008
	jne	.L153
	mov	rbx, QWORD PTR 136[rsp]
	mov	rbp, QWORD PTR 56[rsp]
	sub	rbx, rsi
	je	.L268
	mov	rdi, rbx
	mov	QWORD PTR 56[rsp], rsi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	xmm0, rax
	mov	rsi, QWORD PTR 56[rsp]
	mov	rdx, rbx
	mov	rdi, rax
	lea	rcx, [rax+rbx]
	punpcklqdq	xmm0, xmm0
	mov	QWORD PTR 176[rsp], rcx
	mov	QWORD PTR [rsp], rcx
	movaps	XMMWORD PTR 160[rsp], xmm0
	call	memcpy@PLT
	mov	rcx, QWORD PTR [rsp]
.L157:
	mov	rsi, QWORD PTR 24[rsp]
	mov	rdi, QWORD PTR 32[rsp]
	mov	QWORD PTR 168[rsp], rcx
	call	_Z15calculate_statsSt6vectorIdSaIdEE
	cmp	r12, 9
	jbe	.L205
	mov	rsi, r12
	mov	ecx, 1
	jmp	.L162
.L159:
	cmp	rsi, 999
	jbe	.L269
	cmp	rsi, 9999
	jbe	.L270
	mov	rax, rsi
	add	ecx, 4
	mul	r13
	cmp	rsi, 99999
	jbe	.L158
	mov	rsi, rdx
	shr	rsi, 11
.L162:
	cmp	rsi, 99
	ja	.L159
	add	ecx, 1
.L158:
	mov	ebx, ecx
	mov	DWORD PTR 56[rsp], ecx
	lea	rax, 256[rsp]
	lea	rdi, 240[rsp]
	mov	rsi, rbx
	mov	QWORD PTR [rsp], rax
	mov	r15, rdi
	mov	QWORD PTR 240[rsp], rax
	mov	QWORD PTR 248[rsp], 0
	mov	BYTE PTR 256[rsp], 0
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
.LEHE7:
	movdqa	xmm0, XMMWORD PTR .LC21[rip]
	mov	rsi, QWORD PTR 240[rsp]
	movaps	XMMWORD PTR 336[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC22[rip]
	movaps	XMMWORD PTR 352[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC23[rip]
	movaps	XMMWORD PTR 368[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC24[rip]
	movaps	XMMWORD PTR 384[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC25[rip]
	movaps	XMMWORD PTR 400[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC26[rip]
	movaps	XMMWORD PTR 416[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC27[rip]
	movaps	XMMWORD PTR 432[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC28[rip]
	movaps	XMMWORD PTR 448[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC29[rip]
	movaps	XMMWORD PTR 464[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC30[rip]
	movaps	XMMWORD PTR 480[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC31[rip]
	movaps	XMMWORD PTR 496[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC32[rip]
	movaps	XMMWORD PTR 512[rsp], xmm0
	movdqa	xmm0, XMMWORD PTR .LC33[rip]
	movups	XMMWORD PTR 521[rsp], xmm0
	cmp	r12, 99
	jbe	.L163
	mov	ecx, DWORD PTR 56[rsp]
	sub	ecx, 1
.L164:
	mov	rdx, r12
	shr	rdx, 2
	mov	rax, rdx
	mul	r14
	mov	rax, r12
	shr	rdx, 2
	imul	rdi, rdx, 100
	sub	rax, rdi
	mov	rdi, r12
	mov	r12, rdx
	mov	edx, ecx
	movzx	r8d, BYTE PTR 337[rsp+rax*2]
	movzx	eax, BYTE PTR 336[rsp+rax*2]
	mov	BYTE PTR [rsi+rdx], r8b
	lea	edx, -1[rcx]
	sub	ecx, 2
	mov	BYTE PTR [rsi+rdx], al
	cmp	rdi, 9999
	ja	.L164
.L163:
	lea	eax, 48[r12]
	cmp	r12, 9
	jbe	.L166
	movzx	eax, BYTE PTR 337[rsp+r12*2]
	mov	BYTE PTR 1[rsi], al
	movzx	eax, BYTE PTR 336[rsp+r12*2]
.L166:
	mov	BYTE PTR [rsi], al
	mov	rax, QWORD PTR 240[rsp]
	xor	edx, edx
	xor	esi, esi
	mov	r8d, 12
	mov	QWORD PTR 248[rsp], rbx
	lea	rcx, .LC14[rip]
	mov	rdi, r15
	mov	BYTE PTR [rax+rbx], 0
.LEHB8:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
.LEHE8:
	lea	rbx, 288[rsp]
	mov	rdx, rax
	mov	QWORD PTR 272[rsp], rbx
	mov	rax, QWORD PTR [rax]
	lea	rdi, 16[rdx]
	cmp	rax, rdi
	je	.L271
	mov	QWORD PTR 272[rsp], rax
	mov	rax, QWORD PTR 16[rdx]
	mov	QWORD PTR 288[rsp], rax
.L177:
	mov	rax, QWORD PTR 8[rdx]
	mov	QWORD PTR [rdx], rdi
	movabs	rcx, -9223372036854775780
	mov	QWORD PTR 8[rdx], 0
	mov	QWORD PTR 280[rsp], rax
	add	rax, rcx
	mov	BYTE PTR 16[rdx], 0
	cmp	rax, 26
	jbe	.L257
	mov	edx, 27
	lea	rsi, .LC16[rip]
	lea	rdi, 272[rsp]
	lea	r12, 272[rsp]
.LEHB9:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE9:
	mov	rdx, rax
	mov	rax, QWORD PTR 8[rsp]
	lea	rdi, 16[rdx]
	mov	QWORD PTR 304[rsp], rax
	mov	rax, QWORD PTR [rdx]
	cmp	rax, rdi
	je	.L272
	mov	QWORD PTR 304[rsp], rax
	mov	rax, QWORD PTR 16[rdx]
	mov	QWORD PTR 320[rsp], rax
.L187:
	mov	rax, QWORD PTR 8[rdx]
	mov	rsi, QWORD PTR 32[rsp]
	mov	QWORD PTR [rdx], rdi
	mov	rdi, rbp
	mov	QWORD PTR 8[rdx], 0
	mov	QWORD PTR 312[rsp], rax
	mov	BYTE PTR 16[rdx], 0
.LEHB10:
	call	_Z11print_statsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10Statistics
.LEHE10:
	mov	rdi, QWORD PTR 304[rsp]
	cmp	rdi, QWORD PTR 8[rsp]
	je	.L188
	mov	rax, QWORD PTR 320[rsp]
	lea	rsi, 1[rax]
	call	_ZdlPvm@PLT
.L188:
	mov	rdi, QWORD PTR 272[rsp]
	cmp	rdi, rbx
	je	.L189
	mov	rax, QWORD PTR 288[rsp]
	lea	rsi, 1[rax]
	call	_ZdlPvm@PLT
.L189:
	mov	rdi, QWORD PTR 240[rsp]
	cmp	rdi, QWORD PTR [rsp]
	je	.L190
	mov	rax, QWORD PTR 256[rsp]
	lea	rsi, 1[rax]
	call	_ZdlPvm@PLT
.L190:
	mov	rdi, QWORD PTR 160[rsp]
	test	rdi, rdi
	je	.L191
	mov	rsi, QWORD PTR 176[rsp]
	sub	rsi, rdi
	call	_ZdlPvm@PLT
.L191:
	mov	rdi, QWORD PTR 128[rsp]
	test	rdi, rdi
	je	.L192
	mov	rsi, QWORD PTR 144[rsp]
	sub	rsi, rdi
	call	_ZdlPvm@PLT
.L192:
	add	QWORD PTR 16[rsp], 8
	mov	rax, QWORD PTR 16[rsp]
	cmp	QWORD PTR 40[rsp], rax
	jne	.L193
.L194:
	lea	rsi, .LC13[rip]
	lea	rdi, _ZSt4cout[rip]
.LEHB11:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	mov	esi, DWORD PTR sink[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	lea	rsi, .LC4[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE11:
	lea	rdi, 96[rsp]
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	lea	rdi, 64[rsp]
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	mov	rax, QWORD PTR 552[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L273
	add	rsp, 568
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	rbp
	.cfi_def_cfa_offset 40
	pop	r12
	.cfi_def_cfa_offset 32
	pop	r13
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.L268:
	.cfi_restore_state
	mov	QWORD PTR 160[rsp], 0
	xor	ecx, ecx
	mov	QWORD PTR 176[rsp], 0
	jmp	.L157
.L270:
	add	ecx, 3
	jmp	.L158
.L269:
	add	ecx, 2
	jmp	.L158
.L272:
	mov	rax, QWORD PTR 8[rdx]
	mov	r8, QWORD PTR 8[rsp]
	lea	rsi, 1[rax]
	mov	rax, rdi
	cmp	esi, 8
	jnb	.L274
.L181:
	xor	ecx, ecx
	test	sil, 4
	jne	.L275
.L184:
	test	sil, 2
	jne	.L276
.L185:
	and	esi, 1
	je	.L187
	movzx	eax, BYTE PTR [rax+rcx]
	mov	BYTE PTR [r8+rcx], al
	jmp	.L187
.L271:
	mov	rax, QWORD PTR 8[rdx]
	mov	r8, rbx
	lea	rsi, 1[rax]
	mov	rax, rdi
	cmp	esi, 8
	jnb	.L277
.L171:
	xor	ecx, ecx
	test	sil, 4
	jne	.L278
.L174:
	test	sil, 2
	jne	.L279
.L175:
	and	esi, 1
	je	.L177
	movzx	eax, BYTE PTR [rax+rcx]
	mov	BYTE PTR [r8+rcx], al
	jmp	.L177
.L277:
	mov	r8d, esi
	xor	eax, eax
	and	r8d, -8
.L172:
	mov	ecx, eax
	add	eax, 8
	mov	r9, QWORD PTR [rdi+rcx]
	mov	QWORD PTR [rbx+rcx], r9
	cmp	eax, r8d
	jb	.L172
	lea	r8, [rbx+rax]
	add	rax, rdi
	jmp	.L171
.L274:
	mov	r8d, esi
	xor	eax, eax
	and	r8d, -8
.L182:
	mov	ecx, eax
	mov	r10, QWORD PTR 8[rsp]
	add	eax, 8
	mov	r9, QWORD PTR [rdi+rcx]
	mov	QWORD PTR [r10+rcx], r9
	cmp	eax, r8d
	jb	.L182
	lea	r8, [r10+rax]
	add	rax, rdi
	jmp	.L181
.L279:
	movzx	r9d, WORD PTR [rax+rcx]
	mov	WORD PTR [r8+rcx], r9w
	add	rcx, 2
	jmp	.L175
.L278:
	mov	ecx, DWORD PTR [rax]
	mov	DWORD PTR [r8], ecx
	mov	ecx, 4
	jmp	.L174
.L276:
	movzx	r9d, WORD PTR [rax+rcx]
	mov	WORD PTR [r8+rcx], r9w
	add	rcx, 2
	jmp	.L185
.L275:
	mov	ecx, DWORD PTR [rax]
	mov	DWORD PTR [r8], ecx
	mov	ecx, 4
	jmp	.L184
.L267:
	xor	eax, eax
	xor	r12d, r12d
	mov	QWORD PTR 160[rsp], rax
	mov	QWORD PTR 176[rsp], rax
	jmp	.L147
.L205:
	mov	ecx, 1
	jmp	.L158
.L273:
	call	__stack_chk_fail@PLT
.L216:
	endbr64
	mov	rbx, rax
	jmp	.L199
.L214:
	endbr64
	mov	rbx, rax
	jmp	.L201
.L215:
	endbr64
	mov	rbx, rax
	jmp	.L150
.L209:
	endbr64
	mov	rbx, rax
	jmp	.L195
.L208:
	endbr64
	mov	rbx, rax
	jmp	.L196
.L207:
	endbr64
	mov	rbx, rax
	jmp	.L151
.L213:
	endbr64
	mov	rbx, rax
	jmp	.L197
.L255:
	endbr64
	jmp	.L256
.L211:
	endbr64
	mov	rbx, rax
	jmp	.L199
.L210:
	endbr64
	mov	rbx, rax
	jmp	.L200
	.section	.gcc_except_table,"a",@progbits
.LLSDA3284:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3284-.LLSDACSB3284
.LLSDACSB3284:
	.uleb128 .LEHB0-.LFB3284
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3284
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L207-.LFB3284
	.uleb128 0
	.uleb128 .LEHB2-.LFB3284
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L208-.LFB3284
	.uleb128 0
	.uleb128 .LEHB3-.LFB3284
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L209-.LFB3284
	.uleb128 0
	.uleb128 .LEHB4-.LFB3284
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L215-.LFB3284
	.uleb128 0
	.uleb128 .LEHB5-.LFB3284
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L214-.LFB3284
	.uleb128 0
	.uleb128 .LEHB6-.LFB3284
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L210-.LFB3284
	.uleb128 0
	.uleb128 .LEHB7-.LFB3284
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L216-.LFB3284
	.uleb128 0
	.uleb128 .LEHB8-.LFB3284
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L211-.LFB3284
	.uleb128 0
	.uleb128 .LEHB9-.LFB3284
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L255-.LFB3284
	.uleb128 0
	.uleb128 .LEHB10-.LFB3284
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L213-.LFB3284
	.uleb128 0
	.uleb128 .LEHB11-.LFB3284
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L214-.LFB3284
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
.L197:
	.cfi_def_cfa_offset 624
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	mov	rdi, rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L198:
	mov	rdi, r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L199:
	mov	rdi, r15
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rdi, QWORD PTR 24[rsp]
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
.L200:
	mov	rdi, QWORD PTR 48[rsp]
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
.L201:
	lea	rdi, 96[rsp]
	call	_ZNSt12_Vector_baseImSaImEED2Ev
.L151:
	lea	rdi, 64[rsp]
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	mov	rax, QWORD PTR 552[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L280
	mov	rdi, rbx
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L150:
	lea	rdi, 96[rsp]
	call	_ZNSt12_Vector_baseImSaImEED2Ev
	jmp	.L151
.L280:
	call	__stack_chk_fail@PLT
.L195:
	mov	rdi, rbp
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L196:
	mov	rdi, QWORD PTR 24[rsp]
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	jmp	.L151
.L257:
	mov	rax, QWORD PTR 552[rsp]
	sub	rax, QWORD PTR fs:40
	jne	.L281
	lea	rdi, .LC15[rip]
	lea	r12, 272[rsp]
.LEHB13:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE13:
.L212:
	endbr64
.L256:
	mov	rbx, rax
	jmp	.L198
.L281:
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
	.uleb128 .LEHB12-.LCOLDB34
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LCOLDB34
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L212-.LCOLDB34
	.uleb128 0
.LLSDACSEC3284:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE34:
	.section	.text.startup
.LHOTE34:
	.globl	sink
	.bss
	.align 4
	.type	sink, @object
	.size	sink, 4
sink:
	.zero	4
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
.LC18:
	.quad	7311153230013884756
	.quad	7070700224614066290
	.align 16
.LC19:
	.quad	3612008282924217445
	.quad	8223690994393834272
	.align 16
.LC20:
	.quad	100
	.quad	1000
	.align 16
.LC21:
	.quad	3688503277381496880
	.quad	3976738051646829616
	.align 16
.LC22:
	.quad	3544667369688283184
	.quad	3832902143785906737
	.align 16
.LC23:
	.quad	4121136918051239473
	.quad	3689066235924983858
	.align 16
.LC24:
	.quad	3977301010190316594
	.quad	3545230328231770162
	.align 16
.LC25:
	.quad	3833465102329393715
	.quad	4121699876594726451
	.align 16
.LC26:
	.quad	3689629194468470836
	.quad	3977863968733803572
	.align 16
.LC27:
	.quad	3545793286775257140
	.quad	3834028060872880693
	.align 16
.LC28:
	.quad	4122262835138213429
	.quad	3690192153011957814
	.align 16
.LC29:
	.quad	3978426927277290550
	.quad	3546356245318744118
	.align 16
.LC30:
	.quad	3834591019416367671
	.quad	4122825793681700407
	.align 16
.LC31:
	.quad	3690755111555444792
	.quad	3978989885820777528
	.align 16
.LC32:
	.quad	3546919203862231096
	.quad	3835153977959854649
	.align 16
.LC33:
	.quad	4122263930388298034
	.quad	16106987313379638
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
