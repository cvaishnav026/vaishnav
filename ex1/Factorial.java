import java.util.*;

public class Factorial extends PallinNo
{
	public static void main(String[] ar)
	{
		PallinNo ob = new PallinNo();
		int n = ob.input(),f=n;
		
	for(int i=1;i!=n;i++)
	{
		if(f<0||n<0)
		{
			System.out.println("Sorry the entered number cannot be operated");
		System.exit(0);
		}
		f=f*i;
		// the below line is to check each iteration
	    System.out.println("check"+i+":"+f);
		
	}
	System.out.println("factorial of the given no "+n+" is :"+f);
	}
}