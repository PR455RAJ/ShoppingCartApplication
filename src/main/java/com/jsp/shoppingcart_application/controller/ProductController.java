package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.MarchentDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;


@Controller
public class ProductController {
	@Autowired
	ProductDao dao;

	@Autowired
	MarchentDao mdao;

	@RequestMapping("/viewallproducts")
	public ModelAndView viewAllProducts(HttpSession session) {
		Merchant m = (Merchant) session.getAttribute("merchantinfo");
		Merchant merchant = mdao.findMerchantById(m.getId());
		List<Product> products = dao.fetchAllProducts(m.getId());
		ModelAndView mav = new ModelAndView();
		mav.addObject("productlist", products);
		mav.setViewName("displayallproduct");
		return mav;
	}

	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		Product p = new Product();
		ModelAndView mav = new ModelAndView();
		mav.addObject("productobj", p);
		mav.setViewName("productform");
		return mav;
	}

	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("productobj") Product p, HttpSession session) {
		Merchant merchant = (Merchant) session.getAttribute("merchantinfo");
		List<Product> products = merchant.getProducts();
		if (products.size() > 0) {
			products.add(p);
			merchant.setProducts(products);
		} else {
			List<Product> productslist = new ArrayList<Product>();
			productslist.add(p);

			merchant.setProducts(productslist);
		}

		dao.saveProduct(p);
		mdao.updateMerchant(merchant);

		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "data saved successfully");
		mav.setViewName("merchantoptions");
		return mav;
	}

	@RequestMapping("/updateproduct")
	public ModelAndView updateProduct(@RequestParam("id") int id) {
		Product p = dao.updateProductById(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("productobj", p);
		mav.setViewName("productupdate");
		return mav;
	}

	@RequestMapping("/updateproduct1")
	public ModelAndView updateProduct1(@ModelAttribute("productobj") Product product) {
		System.out.println(product.getId());
		dao.updateProduct(product);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect://viewallproducts");
		return mav;
	}

	@RequestMapping("/fetchallproducts")
	public ModelAndView fetchAlldetails() {
	   ModelAndView mav = new ModelAndView();
	   List<Product> products = dao.fetchAllproducts();
	   mav.addObject("products",products);
	   mav.setViewName("viewalldetais");
	   return mav;
	}
	@RequestMapping("/deleteproduct")
	public ModelAndView deleteProduct(@RequestParam("id") int pid, HttpSession session) {
		Merchant  m = (Merchant) session.getAttribute("merchantinfo");
		
		Merchant merchant = dao.removeProductFormMerchant(m.getId(), pid);
		
		mdao.updateMerchant(merchant);
		
		dao.deleteProductById(pid);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect://viewallproducts");
		return mav;
	}
	
}
