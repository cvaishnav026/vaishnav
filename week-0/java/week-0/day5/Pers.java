import java.lang.*;

class Pers
{
	public static void main(String ar[])
	{
		int m=80000;
		float r1,r2,n1=52f,n2=35f,d=100f;
		r1=m*(n1/d);
		r2=r1*(n2/d);
		System.out.println("The percentage of men:"+r1);
		System.out.println("Percentage of literate men is: "+r2);		
	}
}