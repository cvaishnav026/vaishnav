import java.util.*;

public class OddorEven
{
	public static void main(String[] ar)
	{
		//The below Class contains input method
		Add ob = new Add();
		int n = ob.numInput();
		if(n%2==0)
		{
			System.out.println("the no "+n+" is Even");
		}
		System.out.println("the no "+n+" is Odd");
	}
}