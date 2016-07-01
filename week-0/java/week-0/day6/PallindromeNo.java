import java.io.*;
import java.util.*;
class PallindromeNo
{
	public static void main(String[] ar)
	{
		int n,s=0,d,r;
		Scanner sc=new Scanner(System.in);
		System.out.print("enter a no ");
		n=sc.nextInt();
		r=n;
		for(int i=1;r!=0;i++)
		{
			d=r%10;
			s=s*10+d;
			r=r/10;
		}
		System.out.println("the rev of the no is : "+s);
		if(s==n)
		{
			System.out.println("The no "+n+" is a palindrome");
		}
		else
			System.out.println("The no "+n+" is not a palindrome");
	}
}