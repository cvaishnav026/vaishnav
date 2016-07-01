import java.lang.*;

class Fib
{
	public static void main(String ar[])
	{
		int f0=0,f1=1,fn,n=10;
	System.out.println("The fibnocci sereis for 10 itterations is \n");
	System.out.println(f0);
	System.out.println(f1);
	for(int i=0;i<=n;i++)
	{
		fn=f0+f1;
		System.out.println(fn);
		f0=f1;
		f1=fn;
	}
	}
}