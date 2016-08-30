package com.niit.shopingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.ProductDAO;
import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;
import com.niit.shopingcart.util.Util;


@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private SupplierDAO supplierDAO;



	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		return "product";
	}

	/*@RequestMapping(value = "/product1", method = RequestMethod.GET)
	public String Products(Model model){
		model.addAttribute("product", new Product());
		return "4";
	}*/

	// For add and update product both
	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {

		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category);  // why to save??

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier); // Why to save??
		
		
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		Util u = new Util();
		String newId = u.replace(product.getId(), ",", "");
		product.setId(newId);
		productDAO.saveOrUpdate(product);

		return "redirect:/product";
		//return "redirect:/uploadFile";

	}

	@RequestMapping("product/remove/{id}")
	public String removeProduct(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/products";
	}

	@RequestMapping("product/edit/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		System.out.println("editProduct");
		model.addAttribute("product", this.productDAO.get(id));
		model.addAttribute("listProducts", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
	
		return "product";
	}
	

	@RequestMapping(value="product/get/{id}")
	public String getSelectedProduct(@PathVariable("id")String id,Model model, RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("selectedProduct",productDAO.get(id));
		return "redirect:/backToHome";
		
	}
	@RequestMapping(value="/backToHome",method=RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") 
	
	final Object selectedProduct,  Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "/afterlogin";
		
	
	}
	
	@RequestMapping(value="product1/get/{id}")
	public String getSelectProduct(@PathVariable("id")String id,Model model, RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("selectedProduct",productDAO.get(id));
		return "redirect:/backtoHome";
		
	}
	@RequestMapping(value="/backtoHome",method=RequestMethod.GET)
	public String backtoHome(@ModelAttribute("selectedProduct") 
	
	final Object selectedProduct,  Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		/*model.addAttribute("categoryList", this.categoryDAO.list());*/
		return "/4";
		
	
	}
	
	@RequestMapping(value="product2/get/{id}")
	public String getSelect1Product(@PathVariable("id")String id,Model model, RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("selectedProduct",productDAO.get(id));
		return "redirect:/backtohome";
		
	}
	@RequestMapping(value="/backtohome",method=RequestMethod.GET)
	public String backtohome(@ModelAttribute("selectedProduct") 
	
	final Object selectedProduct,  Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		/*model.addAttribute("categoryList", this.categoryDAO.list());*/
		return "/5";
		
	
	}
	
	@RequestMapping(value="product3/get/{id}")
	public String getSelect2Product(@PathVariable("id")String id,Model model, RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("selectedProduct",productDAO.get(id));
		return "redirect:/Backtohome";
		
	}
	@RequestMapping(value="/Backtohome",method=RequestMethod.GET)
	public String Backtohome(@ModelAttribute("selectedProduct") 
	
	final Object selectedProduct,  Model model)
	{
		model.addAttribute("selectedProduct",selectedProduct);
		/*model.addAttribute("categoryList", this.categoryDAO.list());*/
		return "/6";
		
	
	}
	
}

