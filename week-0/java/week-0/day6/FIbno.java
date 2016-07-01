import java.io.*;
import java.util.*;

class Fibno
{
	public static void main(String[] ar)
	{
		int f1=1,f0=0,fn=0,n;
		Scanner sc=new Scanner(System.in);
		System.out.println("Upto wat no ");
		n=sc.nextInt();
		System.out.println(f0);
			System.out.println(f1);
		for(int i=1;i<=n;i++)
		{	
			fn=f1+f0;
			if(fn<n)
			System.out.println(fn);
			f0=f1;
			f1=fn;
			
		}
	}
}