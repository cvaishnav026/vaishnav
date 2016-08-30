package com.niit.shopingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class FileHandler {


@RequestMapping("/")
public ModelAndView homePage()
{
	System.out.println("I am in homepage  controller");
	return new ModelAndView("home");
}

@RequestMapping("/registerpage")
public ModelAndView registerPage()
{
	System.out.println("I am in register  controller");
	return new ModelAndView("register");
}

@RequestMapping("/loginpage")
public ModelAndView loginPage()
{
	System.out.println("I am in login  controller");
	return new ModelAndView("login");
}

@RequestMapping("/cartpage")
public ModelAndView cartPage()
{
	System.out.println("I am in cart  controller");
	return new ModelAndView("urcart");
}



@RequestMapping("/aboutus")
public ModelAndView aboutPage()
{
	System.out.println("I am in AboutUS  controller");
	return new ModelAndView("aboutus");
}

@RequestMapping("/Products")
public ModelAndView productsPage()
{
	System.out.println("I am in user products  controller");
	return new ModelAndView("products");
}

@RequestMapping("/contactus")
public ModelAndView contactusPage()
{
	System.out.println("I am in contact  controller");
	return new ModelAndView("contactus");
}

@RequestMapping("/1")
public ModelAndView prod1Page()
{
	System.out.println("I am in product1  controller");
	return new ModelAndView("1");
}

@RequestMapping("/2")
public ModelAndView prod2Page()
{
	System.out.println("I am in product2  controller");
	return new ModelAndView("2");
}

@RequestMapping("/3")
public ModelAndView prod3Page()
{
	System.out.println("I am in product3  controller");
	return new ModelAndView("3");
}

@RequestMapping("/not_avail")
public ModelAndView notAvailPage()
{
	System.out.println("I am in not avail  controller");
	return new ModelAndView("not_avail");
}

@RequestMapping("/sorry")
public ModelAndView sorryPage()
{
	System.out.println("I am in sorry  controller");
	return new ModelAndView("sorry");
}

@RequestMapping("/payment")
public ModelAndView paymentPage()
{
	System.out.println("I am in before payment   controller");
	return new ModelAndView("payment");
}

@RequestMapping("/afterlogout")
public ModelAndView logoutPage()
{
	System.out.println("I am in logout  controller");
	return new ModelAndView("afterlogout");
}

@RequestMapping("/afterlogin")
public ModelAndView afterloginPage()
{
	System.out.println("I am in home  controller");
	return new ModelAndView("afterlogin");
}

@RequestMapping("/thanks")
public ModelAndView thanksPage()
{
	System.out.println("I am in thanks  controller");
	return new ModelAndView("thanks");
}

@RequestMapping("/index1")
public ModelAndView indexPage()
{
	System.out.println("I am in afterlogin  controller");
	return new ModelAndView("index1");
}

@RequestMapping("/cart")
public ModelAndView cart1Page()
{
	System.out.println("I am in cart  ");
	return new ModelAndView("myCart");
}

@RequestMapping("/adminlogout")
public ModelAndView adminlogoutPage()
{
	System.out.println("I am in admin logout  ");
	return new ModelAndView("adminlogout");
}

@RequestMapping("/index")
public ModelAndView prodinfoPage()
{
	System.out.println("I am in test  ");
	return new ModelAndView("index");
}
}
