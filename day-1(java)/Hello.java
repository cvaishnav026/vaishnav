import java.io.*;

public class Hello
{
public void display()
{
	// displaying on console
System.out.println("hello world");
}
public static void main(String[] args)
{
	//printing to check where the program starts from
System.out.println("from main");
// creating an object ob
Hello ob=new Hello();
// calling the method display 
ob.display();
}
}