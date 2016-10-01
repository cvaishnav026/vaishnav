import java.util.*;

public class PrimeNos
{
	public static void main(String[] ar)
	{
		Add ob = new Add();
		int n=ob.numInput();
		if(n>=2)
		{
			System.out.println(2);
			if(n>3)
			{
				//the below 1st loop for numbers increment
		for(int i=3;i<=n;i++)
		{
			//The below loop checks wheter the number is prime or not
			for(int j=2;j<i;j++)
			{
				int p = i%j;
				if(p!=0)
				{
					System.out.println(p);
				}
			}
		}
			}
		}
		else
			System.out.println("entered number is not valid to give the prime no");
	}
}