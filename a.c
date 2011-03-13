# include <stdio.h>
void fun(int x)
{
	int a[4];

	printf("%x,%x,%x",a[0],a[1],a[2]);
	a[4]+=0x10;
	a[5]+=0x10;
}
main()
{
	int sqr=90;

	fun(3);
	sqr=80;
	printf("\n%d\n",sqr);
	printf("%d\n",sqr);

}
