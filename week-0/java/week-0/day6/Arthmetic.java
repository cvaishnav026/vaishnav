import java.util.*;
import java.io.*;

class Arthmetic
{
	public static void main(String[] ar)
	{
		char c;
		float a,b,d;
		System.out.println("Lets do Arthematic operations \n");
		Scanner sc1 = new Scanner(System.in);
		Scanner sc2 = new Scanner(System.in);
		Scanner sc3 = new Scanner(System.in);
		System.out.println("enter value of 1st no and press enter");
		a=sc1.nextFloat();
		System.out.println("enter value of 2nd no and press enter");
		b=sc2.nextFloat();
		System.out.println("enter ur choice of arthematic \nFor example +");
		c=sc3.next().charAt(0);
		
		switch(c)
		{
			case '+' :
			d=a+b;
			System.out.println("Addition of numbers "+a+" and "+b+" is : "+d);
			break;
			case '-' :
			d=a-b;
			System.out.println("Subtraction of numbers"+a+"and"+b+"is : "+d);
			break;
			case 'x' :
			d=a*b;
			System.out.println("Product of numbers "+a+" and "+b+" is : "+d);
			break; 
			case '*' :
			d=a*b;
			System.out.println("Product of numbers "+a+" and "+b+" is : "+d);
			break;
			case '/' :
			d=a/b;
			System.out.println("Quiotent of numbers "+a+" and "+b+" is : "+d);
			break;
			case '%' :
			d=a%b;
			System.out.println("Remainder of numbers "+a+" and "+b+" is : "+d);
			break;
			default :
			System.out.println("Srry for now we only support +,-,x(or)*,/,%");
			
		}
	}
}