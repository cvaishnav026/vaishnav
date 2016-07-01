import java.lang.*;

class Odd
{
	public static void main(String ar[])
	{
		int i;
		i=Integer.parseInt(ar[0]);
		
		if(i%2==0)
		{
			System.out.println(i+" is an even no");
		}
		else
		{
			System.out.println(i+" is an odd no");
		}
	}
}