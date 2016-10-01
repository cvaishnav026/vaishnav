import java.util.*;

public class MulTable
{
	public static void main(String[] ar)
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("enter any no");
		int n = sc.nextInt(),t=0;
		for(int i=1;i<=10;i++)
		{
			t=n*i;
			
			System.out.println(n+"x"+i+"="+t);
		}
		
	}
}