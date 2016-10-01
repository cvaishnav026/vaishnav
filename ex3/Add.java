import java.util.*;

public  class Add{
	//Method to accept input from Standard Keyboard
	public static int numInput()
	{
		int n=0;
		//if any possible wrong inputs the below try will get it
		try{
		System.out.println("please enter any no");
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		//return n;
		}
		catch(Exception e)
		{
			//System.out.println(e);
			e.printStackTrace();
		}
		return n;
	}
	// The below method was written not for this class but for other classes 
	public static String charInput()
	{
		//System.out.println("please  ");
		Scanner sc = new Scanner(System.in);
		String s = sc.next();
		return s;
	}
	public static void main(String[] ar)
	{
		Add ob = new Add();
		int n1 = ob.numInput();
		int n2 = ob.numInput();
		int n3 = n1+n2;
		System.out.println("the sum of numbers "+n1+" and "+n2+" is "+n3);
	}
}