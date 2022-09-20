package com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.CartInfo;
import com.model.PaginationResult;
import com.model.ProductInfo;
import com.service.ProductService;
import com.entity.Product;
import com.util.Utils;
import com.validator.ProductInfoValidator;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;

	@Autowired
	private ProductInfoValidator productInfoValidator;
	
	// Hien thi tat ca san pham
	@GetMapping(value = "/productList")
	private String getAllProductInfo(Model model, @RequestParam(value = "name", defaultValue = "") String likeName,

			@RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 5;
		PaginationResult<ProductInfo> productInfos = productService.getAllProductInfos(page, maxResult, likeName);
		model.addAttribute("paginationProductInfos", productInfos);
		return "productList";
	}

	// Hien thi san pham theo loai
	@GetMapping(value = "/productListByCategory")
	private String getProductInfoByCategory(Model model, @RequestParam(value = "id") int id,
			@RequestParam(value = "name", defaultValue = "") String likeName,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 5;
		PaginationResult<ProductInfo> productInfos = productService.getProductInfosByCategory(page, maxResult, likeName,
				id);
		model.addAttribute("paginationProductInfos", productInfos);
		model.addAttribute("id", id);
		return "productList";
	}

	// hien thi san pham theo hang san xuat
	@GetMapping(value = "/productListByProducer")
	private String getProductInforsByProducer(Model model, @RequestParam(value = "id") int id,
			@RequestParam(value = "name", defaultValue = "") String likeName,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 5;
		PaginationResult<ProductInfo> productInfos = productService.getProductInfosByCategory(page, maxResult, likeName,
				id);
		model.addAttribute("paginationProductInfos", productInfos);
		model.addAttribute("id", id);
		return "productList";
	}

	// Hien thi Cart
	@RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.GET)
	public String shoppingCartHandler(HttpServletRequest request, Model model) {
		CartInfo cartInfo = Utils.getCartInfoInSession(request);

		model.addAttribute("cartForm", cartInfo);

		return "shoppingCart";
	}

	// POST: Cap nhat so luong san pham da mua
	@PostMapping(value = { "/shoppingCart" })
	public String shoppingCartUpdate(HttpServletRequest request, Model model,
			@ModelAttribute("cartForm") CartInfo cartForm) {
		CartInfo cartInfo = Utils.getCartInfoInSession(request);
		cartInfo.updateQuantity(cartForm);

		return "redirect:/shoppingCart";
	}

	// tim san pham
	@RequestMapping("/searchingProduct")
	public String searchingForProduct(Model model, @RequestParam(value = "search") String search,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 5;
		PaginationResult<ProductInfo> productInfos = productService.getProductByName(page, maxResult, search);
		model.addAttribute("paginationProductInfos", productInfos);
		model.addAttribute("searchName", search);
		return "searchingProduct";
	}

	//xuat thong tin tung san pham
	@GetMapping("/productInfo")
	public String getProductInfo(Model model, @RequestParam(value = "code") String code) {
		ProductInfo productInfo = productService.getProductInfoByCode(code);
		if (productInfo == null)
			return "productList";
		else {
			model.addAttribute("productInfos", productInfo);
			return "productInfo";
		}
	}
	
	//edit product
	@GetMapping("/product")
	public String editProduct(Model model, @RequestParam(value="code", defaultValue = "")String code) {
		ProductInfo productInfo = null;
		if(code!=null && code.length()>0) {
			productInfo = productService.getProductInfoByCode(code);
		}
		if(productInfo==null) {
			productInfo = new ProductInfo();
			productInfo.setNewProduct(true);
		}
		
		model.addAttribute("productForm", productInfo);
		return "productForm";
	}
	
	//Save product xuong db
	@PostMapping
	public String saveProduct(Model model, @ModelAttribute("productForm1") ProductInfo productInfo) {
		try {
			productService.saveProductInfo(productInfo);
		}
		catch (Exception e) {
			model.addAttribute(e.getMessage());
			return "product";
		}
		return "redirect:/productList";
	}
	
	//
	@GetMapping(value = {"/productImage"})
	public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam("code") String code) throws IOException {
		Product product = null;
		if (code != null) {
			product = productService.getProductByCode(code);
		}

		if (product != null && product.getImage() != null) {
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			response.getOutputStream().write(product.getImage());
		}
		response.getOutputStream().close();
	}

}
