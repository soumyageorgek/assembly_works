	.file	"a.c"
	.section	.rodata
.LC0:
	.string	"%x,%x,%x"
	.text
.globl fun
	.type	fun, @function
fun:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$36, %esp
	movl	-16(%ebp), %ebx
	movl	-20(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	$.LC0, %eax
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	-8(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	addl	$16, %eax
	movl	%eax, -4(%ebp)
	addl	$36, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	fun, .-fun
	.section	.rodata
.LC1:
	.string	"\n%d\n"
.LC2:
	.string	"%d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$90, 28(%esp)
	movl	$3, (%esp)
	call	fun
	movl	$.LC1, %eax
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$.LC2, %eax
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
