import java.lang.*;

class Table1
{
	public static void main(String ar[])
	{
		int i,j,t;
		j=Integer.parseInt(ar[0]);
		
		for(i=1;i<=10;i++)
		{
			t=j*i;
			System.out.println(j+" X "+i+" = "+t);
		}
	}
}