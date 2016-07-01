import java.lang.*;

class Prime
{
	public static void main(String ar[])
	{
		int n=13,i,p=1;
	
	for(i=2;i<n;i++)
	{
		p=n%i;
		if(p==0)
		{
			System.out.println("the given no is not prime");
			break;
		}
	}
		if(p!=0)
		{
			System.out.println("the given no is prime");
		}
	}
}