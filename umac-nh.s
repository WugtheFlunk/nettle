



































	.file "umac-nh.asm"
	
	
	.text
	.align 16

.globl _nettle_umac_nh
.type _nettle_umac_nh,%function
_nettle_umac_nh: endbr64
	
  

	pxor	%xmm4, %xmm4
.Loop:
	movups	(%rdi), %xmm2
	movups	16(%rdi), %xmm3
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	pshufd	$0x31, %xmm0, %xmm5
	pshufd	$0x31, %xmm1, %xmm6
	pmuludq	%xmm5, %xmm6
	paddq	%xmm6, %xmm4	
	pmuludq	%xmm0, %xmm1
	paddq	%xmm1, %xmm4
	
	subl	$32, %esi
	lea	32(%rdi), %rdi
	lea	32(%rdx), %rdx
	ja	.Loop

	pshufd	$0xe, %xmm4, %xmm5
	paddq	%xmm5, %xmm4
	
	movd	%xmm4, %rax
	
  

	ret
.size _nettle_umac_nh, . - _nettle_umac_nh


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
