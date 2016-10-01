import java.util.*;

public class Largest
{
	public static void main(String[] ar)
	{
		Add ob = new Add();
		//System.out.println("Please enter ")
		int a=ob.numInput();
		int b=ob.numInput();
		int c=ob.numInput();
		if(a>b)
		{
			if(a>c)
				System.out.println(a+" is the largest no");
			else
				System.out.println(c+" is the largest no");
		}
		else if(b>c)
		System.out.println(b+" is the largest no");
	    else
			System.out.println(c+" is the largest no");
	}
}