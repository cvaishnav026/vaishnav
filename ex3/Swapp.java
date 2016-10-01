import java.util.*;

public class Swapp
{
	public static void main(String[] ar)
	{
		Add ob = new Add();
		int a = ob.numInput();
		int b = ob.numInput();
		System.out.println("The numbers you entered are: "+a+" "+b);
		// logic for swap without using 3rd variable
		a=a+b;
		b=a-b;
		a=a-b;
		System.out.println("The numbers after swap: "+a+" "+b);
	}
}