# include <stdio.h>
int fun(int x)
{
	return x*x;
}
main()
{
	int sqr;

	sqr = fun(3);
	printf("%d", sqr);

}
