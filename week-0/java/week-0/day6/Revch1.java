import java.lang.*;
import java.io.*;
import java.util.*;

class Revch1
{
	public static void main(String[] ar)
	{
		String or;
		int c;
		System.out.println("enter ur name");
		Scanner sc = new Scanner(System.in);
		or=sc.next();
		c=or.length();
		for(int i=c-1;i>=0;i--)
		{
			System.out.print(or.charAt(i));
		}
	}
}