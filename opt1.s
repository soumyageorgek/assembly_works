	.file	"opt1.c"
	.text
.globl sqr
	.type	sqr, @function
sqr:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	imull	8(%ebp), %eax
	popl	%ebp
	ret
	.size	sqr, .-sqr
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
	movl	$10, (%esp)
	call	sqr
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
