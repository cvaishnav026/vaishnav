import java.lang.*;

class Fix
{
	public static void main(String ar[])
	{
		int c=5,f=5,g=5,h=5,a,b,e,d;
		a=c++;
		b=f--;
		e=++g;
		d=--h;
		System.out.println("the postfix addtion value is:"+a);
		System.out.println("the postfix subtraction value is:"+b);
		System.out.println("the prefix addtion value is:"+e);
		System.out.println("the prefix sub value is:"+d);
		
	}
}