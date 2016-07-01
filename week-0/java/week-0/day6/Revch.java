import java.util.*;
import java.io.*;
import java.lang.*;

class Revch
{
	public static void main(String[] ar)
	{
		String or;
		char[] rev;
		int c;
		Scanner sc = new Scanner(System.in);
		System.out.println("enter ur name : ");
		or=sc.next();
		c=or.length();
		rev=or.toCharArray();
		
		
		for(int i=c-1;i>=0;i--)
		{
			System.out.print(rev[i]);
		}
		
	}
}