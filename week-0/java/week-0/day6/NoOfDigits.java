import java.io.*;
import java.util.*;
class NoOfDigits
{
	public static void main(String[] ar)
	{
		int n,c=0;
		Scanner sc=new Scanner(System.in);
		System.out.print("enter a no ");
		n=sc.nextInt();
		for(int i=1;n!=0;i++)
		{
			n=n/10;
			c++;
		}
		System.out.println("No of the digits is : "+c);
	}
}