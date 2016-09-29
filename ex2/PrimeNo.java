import java.util.*;

public class PrimeNo
{
	public static void main(String[] ar)
	{
		PallinNo ob = new PallinNo();
		int n = ob.input(),p=0;
		if(n>2)
		{
		for(int i=2;i!=n;i++)
		{
			p=n%i;
			if(p==0)
			{
				System.out.println("the given no "+n+" is not prime");
				System.out.println("the given no "+n+" is divisible by "+i+" which is other than 1 and itself");
				System.exit(0);
			}
		}
		System.out.println("the given no "+n+" is prime");
		}
		else 
			System.out.println("the no is either less than 2 or 2 while if your no is 2 then it is prime else please enter a number greater than 2");
	}
	
}