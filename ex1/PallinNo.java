import java.io.*;
import java.util.*;

public class PallinNo
{
	public int input()
	{
		int n=0;
		try
		{
		System.out.println("enter any no");
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		System.out.println("your entered no is : "+n);
		
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return n;
	}	
	public int rev(int no)
	{
		int rev=0,sum=0;
		
		while(no!=0)
		{
			rev = no%10;
			sum=(sum*10)+rev;
			no = no/10;			
		}
		System.out.println(sum);
		return sum;
	}
	public static void main(String[] ar)
	{
		System.out.println("=====Program to check wheter the given no is pallindrome or not=====");
		PallinNo obj = new PallinNo();
		
		System.out.println("Thx for providing the input correctly");
		int no=obj.input(),or,rev;
		or=no;
		rev=obj.rev(no);
		if(no==rev)
		{
			System.out.println("the given no "+or+" is a pallindrome");
		}
		else
			System.out.println("The no is not a pallindrome");
	}
}