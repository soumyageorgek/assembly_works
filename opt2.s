	.file	"opt2.c"
	.section	.rodata
.LC0:
	.string	"%d%d"
.LC1:
	.string	"%d %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	leal	24(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	scanf
	movl	28(%esp), %edx
	movl	24(%esp), %eax
	leal	(%edx,%eax), %eax
	addl	$10, %eax
	movl	%eax, 20(%esp)
	movl	28(%esp), %edx
	movl	24(%esp), %eax
	leal	(%edx,%eax), %eax
	addl	$30, %eax
	movl	%eax, 16(%esp)
	movl	16(%esp), %eax
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	printf
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
