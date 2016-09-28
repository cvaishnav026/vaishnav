import java.util.*;
import java.io.*;

public class Fibnocci extends PallinNo
{
	public static void main(String[]  ar)
	{
		PallinNo obj = new PallinNo();
		int n=obj.input();
		int f0=0,f1=1,fn=0;
		System.out.println(f0);
		System.out.println(f1);
		try{
			
		
		while(fn<=n)
		{
			fn=f1+f0;
			if(fn<n)
			System.out.println(fn);
			f0=f1;
			f1=fn;
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}