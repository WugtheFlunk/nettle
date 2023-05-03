

















































	.file "cbc-aes192-encrypt.asm"

	
	
	

	.text
	.align 16

.globl _nettle_cbc_aes192_encrypt_aesni
.type _nettle_cbc_aes192_encrypt_aesni,%function
_nettle_cbc_aes192_encrypt_aesni: endbr64
	
  

	shr	$4, %rdx
	test	%rdx, %rdx
	jz	.Lend

	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	32(%rdi), %xmm2
	movups	48(%rdi), %xmm3
	movups	64(%rdi), %xmm4
	movups	80(%rdi), %xmm5
	movups	96(%rdi), %xmm6
	movups	112(%rdi), %xmm7
	movups	128(%rdi), %xmm8
	movups	144(%rdi), %xmm9
	movups	160(%rdi), %xmm10
	movups	176(%rdi), %xmm11
	movups	192(%rdi), %xmm12
	movups	(%rsi), %xmm13

.Lblock_loop:
	movups	(%r8), %xmm14	
	pxor	%xmm0, %xmm13
	pxor	%xmm14, %xmm13
	aesenc	%xmm1, %xmm13
	aesenc	%xmm2, %xmm13
	aesenc	%xmm3, %xmm13
	aesenc	%xmm4, %xmm13
	aesenc	%xmm5, %xmm13
	aesenc	%xmm6, %xmm13
	aesenc	%xmm7, %xmm13
	aesenc	%xmm8, %xmm13
	aesenc	%xmm9, %xmm13
	aesenc	%xmm10, %xmm13
	aesenc	%xmm11, %xmm13
	aesenclast %xmm12, %xmm13

	movups	%xmm13, (%rcx)
	add	$16, %r8
	add	$16, %rcx

	dec	%rdx
	jnz	.Lblock_loop

	movups	%xmm13, (%rsi)

.Lend:
	
  

	ret
.size _nettle_cbc_aes192_encrypt_aesni, . - _nettle_cbc_aes192_encrypt_aesni



	.pushsection ".note.gnu.property", "a"
	.p2align 3
	.long 1f - 0f
	.long 4f - 1f
	.long 5
0:
	.asciz "GNU"
1:
	.p2align 3
	.long 0xc0000002
	.long 3f - 2f
2:
	.long 3
3:
	.p2align 3
4:
	.popsection
.section .note.GNU-stack,"",%progbits
