import java.lang.*;
import java.io.*;
import java.util.*;

class Charno
{
	public static void main(String[] ar)
	{
		String or;
		int c;
		System.out.println("enter ur name");
		Scanner sc = new Scanner(System.in);
		or=sc.next();
		c=or.length();
		System.out.println("The no of charec in ur name is : "+c);
	}
}