package com.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.AccountDetailInfo;
import com.model.AccountInfo;
import com.model.CartInfo;
import com.model.CustomerInfo;
import com.model.OrderDetailInfo;
import com.model.OrderInfo;
import com.model.PaginationResult;
import com.model.ProductInfo;
import com.service.AccountService;
import com.service.CustomerService;
import com.service.OrderService;
import com.service.ProductService;
import com.dao.OrderDao;
import com.entity.Account;
import com.entity.Category;


import com.entity.Order;
import com.entity.OrderDetail;

import com.entity.Customer;
import com.entity.Order;


import com.entity.Customer;
import com.entity.Order;

import com.entity.Producer;
import com.entity.Product;
import com.entity.Role;
import com.util.Utils;
import com.validator.CartInfoValidator;
import com.validator.CustomerInfoValidator;
import com.validator.ProductInfoValidator;

@Controller
public class MainController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private ProductService productService;

	@Autowired
	private ProductInfoValidator productInfoValidator;
	
	@Autowired
	private CustomerInfoValidator customerInfoValidator;
	
	@Autowired
	private CartInfoValidator cartInfoValidator;
	
	@Autowired
	private OrderDao orderDao;
	
	@GetMapping(value = "/menu")
	private String getAllProductInfo1() {
		return "_menu";
	}
	// Hien thi tat ca san pham
	@GetMapping(value = "/productList")
	private String getAllProductInfo(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 10;
		PaginationResult<ProductInfo> productInfos = productService.getAllProductInfos(page, maxResult);
		int productQuantity = productInfos.getTotalRecords();
		model.addAttribute("productQuantity", productQuantity);
		model.addAttribute("paginationProductInfos", productInfos);
		return "productList";
	}

	// Hien thi san pham
	@GetMapping(value = "/productListByCategory")
	private String getProductInfoByCategory(Model model, @RequestParam(value = "category", defaultValue = "")String category,
			@RequestParam(value="producer",defaultValue = "")String producer,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 10;
		PaginationResult<ProductInfo> productInfos = productService.getProductInfosByCategory(page, maxResult, 
				category, producer);
		int productQuantity = productInfos.getTotalRecords();
		model.addAttribute("productQuantity", productQuantity);
		model.addAttribute("paginationProductInfos", productInfos);
		model.addAttribute("category", category);
		model.addAttribute("producer", producer);
		return "productListByCategory";
	}

	// hien thi san pham theo hang san xuat
	/*
	 * @GetMapping(value = "/productListByProducer") private String
	 * getProductInforsByProducer(Model model, @RequestParam(value = "id") int id,
	 * 
	 * @RequestParam(value = "name", defaultValue = "") String likeName,
	 * 
	 * @RequestParam(value = "page", defaultValue = "1") int page) { final int
	 * maxResult = 5; PaginationResult<ProductInfo> productInfos =
	 * productService.getProductInfosByCategory(page, maxResult, likeName, id);
	 * model.addAttribute("paginationProductInfos", productInfos);
	 * model.addAttribute("id", id); return "productList"; }
	 */

	// Them san pham vao cart
	@GetMapping(value = {"/buyProduct"})
	public String buyProductHandler(HttpServletRequest request, Model model,
			@RequestParam(value = "code", defaultValue = "") String code) {
		Product product = null;

		if (code != null && code.length() > 0) {
			product = productService.getProductByCode(code);
		}
		if (product != null) {
			CartInfo cartInfo = Utils.getCartInfoInSession(request);
			ProductInfo productInfo = new ProductInfo(product);
			cartInfo.addProduct(productInfo, 1);
			model.addAttribute(code, productInfo);
		}
		return "redirect:/shoppingCart";
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
			@ModelAttribute("cartForm") @Valid CartInfo cartForm, BindingResult result) {
		cartInfoValidator.validate(cartForm, result);
		if(result.hasErrors()) {
			CartInfo cartInfo = Utils.getCartInfoInSession(request);
			model.addAttribute("cartForm", cartInfo);
			return "shoppingCart";
		}
		CartInfo cartInfo = Utils.getCartInfoInSession(request);
		cartInfo.updateQuantity(cartForm);
		return "redirect:/shoppingCart";
	}

	// tim san pham
	@RequestMapping("/searchingProduct")
	public String searchingForProduct(Model model, @RequestParam(value = "search") String search,
			@RequestParam(value = "page", defaultValue = "1") int page) {
		final int maxResult = 10;
		PaginationResult<ProductInfo> productInfos = productService.getProductByName(page, maxResult, search);
		model.addAttribute("paginationProductInfos", productInfos);
		model.addAttribute("searchName", search);
		return "searchingProduct";
	}

	@RequestMapping(value = {"/shoppingCartRemoveProduct"})
	public String removeProduct(HttpServletRequest request, Model model,
			@RequestParam("code") String code) {
		Product product = null;
		if(code != null) {
			product = productService.getProductByCode(code);
		}
		
		if(product != null) {
			CartInfo cartInfo = Utils.getCartInfoInSession(request);
			ProductInfo productInfo = new ProductInfo(product);
			cartInfo.removeProduct(productInfo);
		}
		return "redirect:/shoppingCart";
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
	public String product(Model model, @RequestParam(value="code", defaultValue = "")String code) {
		ProductInfo productInfo = null;
		if(code!=null && code.length()>0) {
			productInfo = productService.getProductInfoByCode(code);
			productInfo.setOldCode(code);
		}
		if(productInfo==null) {
			productInfo = new ProductInfo();
			productInfo.setNewProduct(true);
		}
		List<Category> categories = productService.getAllCategory();
		List<Producer> producers = productService.getAllProducer();
		model.addAttribute("productForm", productInfo);
		model.addAttribute("categories", categories);
		model.addAttribute("producers", producers);
		return "productForm";
	}
	
	//Save product xuong db
	@PostMapping("/product")
	public String saveProduct(Model model, @ModelAttribute("productForm") @Valid ProductInfo productInfo, BindingResult result ) {
		productInfoValidator.validate(productInfo, result);
		if(result.hasErrors()) {
			List<Category> categories = productService.getAllCategory();
			List<Producer> producers = productService.getAllProducer();
			model.addAttribute("categories", categories);
			model.addAttribute("producers", producers);
			return "productForm";
		}
		try {
			productService.saveProductInfo(productInfo);
			if(productInfo.getOldCode()!=null && !productInfo.getOldCode().equals(productInfo.getCode())) {
				boolean isDelete = productService.deleteProduct(productInfo.getOldCode());
			}
				 
		}
		catch (Exception e) {
			model.addAttribute(e.getMessage());
			List<Category> categories = productService.getAllCategory();
			List<Producer> producers = productService.getAllProducer();
			model.addAttribute("categories", categories);
			model.addAttribute("producers", producers);
			return "productForm";
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
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");//thay ????????????i ????????????nh d??????ng s?????? tr?????? v???????
			response.getOutputStream().write(product.getImage());//n???????i dung s?????? tr?????? v???????
		}
		response.getOutputStream().close();
	}

	//delete product
	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam(value="code")String code) {
		boolean isDelete = productService.deleteProduct(code);
		if(isDelete)
			return "redirect:/productList";
		else
			System.out.println("fail");
		return "redirect:/productList";
		
	}
	
	//Nguyen
	
	@GetMapping(value = {"/customerInfo"})
	public String customerInfoForm(HttpServletRequest request, Model model, Principal principal  ) {
		CartInfo cartInfo = Utils.getCartInfoInSession(request);
		//Chua mua hang
		if(cartInfo.isEmpty()) {
			return "redirect:/productList";
		}
		CustomerInfo customerInfo = cartInfo.getCustomerInfo();
		//kiem tra user da dang nhap chua
		if(principal == null) {
			return "redirect:/login";
		}	
//		if(customerInfo == null) {
//			customerInfo = new CustomerInfo();
//		}
//		String user = request.getUserPrincipal().getName();
		String user = principal.getName();
		Account account = accountService.getAccountByUserName(user);
		customerInfo = customerService.getCustomerInfoById(account.getCustomer().getId());	
		
		model.addAttribute("customerForm", customerInfo);
		return "productCustomerInforForm";
	}
	
	//Save customer's Information
	@PostMapping(value = {"/customerInfo"})
	public String customerInfoSave(HttpServletRequest request, Model model,
			@ModelAttribute("customerForm") @Valid CustomerInfo customerForm, BindingResult result) {
	customerInfoValidator.validate(customerForm, result);
	if(result.hasErrors()) {
		customerForm.setValid(false);
		return "productCustomerInforForm";
		}
	customerForm.setValid(true);
	CartInfo cartInfo = Utils.getCartInfoInSession(request);
	cartInfo.setCustomerInfo(customerForm);
	
	try {
		customerService.saveCustomerInfo(customerForm);
	} catch(Exception e) {
		return "/customerInfo";
	}
	return "redirect:/shoppingCartConfirmation";
	}
	
	//Check all Information
	@GetMapping(value = {"/shoppingCartConfirmation"})
	public String shoppingCartConfirmationReview(HttpServletRequest request, Model model) {
		CartInfo cartInfo = Utils.getCartInfoInSession(request);
		
		if(cartInfo.isEmpty()) {
			return "redirect:/productList";
		} else if(!cartInfo.isValidCustomer()){
			return "redirect:/customerForm";
		}
		return "shoppingCartConfirmation";
	}
	
	@PostMapping(value = {"/shoppingCartConfirmation"})
	public String shoppingCartConfirmationSave(HttpServletRequest request, Model model) {
		CartInfo cartInfo = Utils.getCartInfoInSession(request);
		//Set chua mua mat hang dan den productList
		if(cartInfo.isEmpty()) {
			return "redirect:/productList";
		} else if (!cartInfo.isValidCustomer()) {
			return "redirect:/shoppingCartCustomer";
		}
		//Set chua co thong tin khach hang dan den customerForm
		
		try {
			orderService.saveOrder(cartInfo);
		} catch (Exception e) {
			return "shoppingCartConfirmation";
		}
		
		//Xoa gio hang khoi session
		Utils.removeCartInfoInSession(request);
		
		//Luu thong tin don da da mua
		Utils.storeLastOrderedCartInfoSession(request, cartInfo);
		return "redirect:/shoppingCartFinalize";
	}
	


	@GetMapping(value = {"/shoppingCartFinalize"})
	public String shoppingCartFinalize(HttpServletRequest request, Model model) {		
		CartInfo lastOrderCart = Utils.getLastOrderedCartInfoSession(request);
		if(lastOrderCart == null) {
			return "redirect:/productList";
			
		}
		return "shoppingCartFinalize";
		
	}
	
	

	

	@GetMapping(value= {"/accountInfo"})
	public String customerAccountInfo(HttpServletRequest request, Model model, Principal principal) {
		if(principal == null) {
			return "redirect:/login";
		}
		String user = principal.getName();
		Account account = accountService.getAccountByUserName(user);
		CustomerInfo customerInfo = customerService.getCustomerInfoById(account.getCustomer().getId());	
		Customer customer = customerService.getCustomerById(account.getCustomer().getId());		
		List<OrderInfo> orderInfoList = orderService.getOrderByCustomer(customer.getId());
		model.addAttribute("accountOrderList", orderInfoList);
		model.addAttribute("accountInfo", customerInfo);
		return "accountInfo";
	}
	

	@GetMapping(value= {"/order"})
	public String orderView(Model model, @RequestParam("orderId") String orderId, Principal principal) {
		OrderInfo orderInfo = null;
		if(orderId != null) {
			orderInfo = orderService.getOrderInfoById(orderId);
		}
		if(orderId == null && principal == null) {
			return "redirect:/login";
		}
		String user = principal.getName();
		Account account = accountService.getAccountByUserName(user);
		CustomerInfo customerInfo = customerService.getCustomerInfoById(account.getCustomer().getId());	
		Customer customer = customerService.getCustomerById(account.getCustomer().getId());		
		List<OrderDetailInfo> orderDetailInfos = orderService.GetAllOrderDetail(orderId);
		orderInfo.setOrderDetailInfos(orderDetailInfos);
		model.addAttribute("accountInfo", customerInfo);
		model.addAttribute("orderList", orderDetailInfos);
		return "orderList";
	}
	
	@GetMapping(value= {"/manageCustomerOrder"})
	public String manageCustomerOrder(Model model, @RequestParam(value = "page", defaultValue = "1") int page, Principal principal) {
		if(principal == null) {
			return "redirect:/login";
		}
		final int MAX_RESULT = 20;
		PaginationResult<OrderInfo> paginationOrderInfos = orderService.getAllOrderInfo(page, MAX_RESULT);
		int orderQuantity = paginationOrderInfos.getTotalRecords();
		model.addAttribute("orderQuantity", orderQuantity);
		model.addAttribute("paginationOrderInfos", paginationOrderInfos);
		return "manageCustomerOrder";
	}
	
	@GetMapping(value = {"/manageCustomerOrderDetail"})
	public String manageCustomerOrderDetail(Model model, @RequestParam(value = "orderId") String orderId, Principal principal) {
		OrderInfo orderInfo = null;
		if(orderId == null && principal == null) {
			return "redirect:/login";
		}
		if(orderId != null) {
			orderInfo = orderService.getOrderInfoById(orderId);
		}
		List<OrderDetailInfo> orderDetailInfos = orderService.GetAllOrderDetail(orderId);
		orderInfo.setOrderDetailInfos(orderDetailInfos);
		model.addAttribute("orderDetailList", orderDetailInfos);
		return "manageCustomerOrderDetail";
	}
	
	@GetMapping(value= {"/editAccountInfo"})
	public String editAccountInfo(Model model, Principal principal) {
		if(principal == null) {
			return "redirect:/login";
		}
		String user = principal.getName();
		Account account = accountService.getAccountByUserName(user);
		CustomerInfo customerInfo = customerService.getCustomerInfoById(account.getCustomer().getId());	
		model.addAttribute("accountInfoForm", customerInfo);
		return "accountInfoForm";
	}
	
	@PostMapping(value = {"/editAccountInfo"})
	public String editAccountInfoSave(HttpServletRequest request, Model model,
			@ModelAttribute("accountInfoForm") @Valid CustomerInfo customerForm, BindingResult result) {
		customerInfoValidator.validate(customerForm, result);
		if(result.hasErrors()) {
			customerForm.setValid(false);
			return "accountInfoForm";
		}
		try {
			customerService.saveCustomerInfo(customerForm);
		} catch(Exception e) {
			return "/editAccountInfo";
		}
		return "redirect:/accountInfo";
	}
	
	@GetMapping(value= {"/manageAccount"})
	public String manageAccount(Model model, Principal principal) {
		if(principal == null) {
			return "redirect:/login";
		}

		//l???y ra danh s??ch username c?? ph??n quy???n
		List<AccountInfo> accountUserNameList = accountService.getAllAccount();
		int accountQuantity = accountUserNameList.size();
		Account account = null;
		Customer customer = null;
		AccountDetailInfo accountDetailInfo = new AccountDetailInfo();
		for(AccountInfo accountInfo : accountUserNameList) {
			account = accountService.getAccountByUserName(accountInfo.getUserName());
			customer = customerService.getCustomerById(account.getCustomer().getId());
			accountInfo.setId(account.getId());
			accountInfo.setName(customer.getFullName());
			accountInfo.setAddress(customer.getAddress());
			accountInfo.setEmail(customer.getEmail());
			accountInfo.setPhone(customer.getPhone());
			accountInfo.setRole(accountService.getAccountRole(account));
			accountDetailInfo.addAccountInfo(accountInfo);
		}
		
		List<Role> roleList = accountService.getAllRoleName();
		model.addAttribute("roleList", roleList);
		model.addAttribute("accountQuantity", accountQuantity);
		
//		Set<Map.Entry<String, Integer>> roles;
//		List<Role> roleList = accountService.getAllRoleName();
//		final Map<String, Integer> roleMap = new HashMap<String, Integer>();
//		for(Role role : roleList) {
//			if(role != null) {
//				roleMap.put(role.getRoleName(), role.getId());
//			}
//		}
//		roles = roleMap.entrySet();
//		model.addAttribute("roleList", roles);
		
		
		model.addAttribute("accountDetailInfo", accountDetailInfo);
		
		return "manageAccount";
	}
	
	@PostMapping(value= {"/manageAccount"})
	public String manageAccount(HttpServletRequest request, Model model, 
			@ModelAttribute("accountDetailInfo") AccountDetailInfo accountDetailInfo, BindingResult result) {
		try {
			List<AccountInfo> accountList = accountDetailInfo.getAccountInfo();
			
			for(AccountInfo newAccountInfo : accountList) {
				Role role = accountService.getRoleById(newAccountInfo.getRole().getId());
				Account account = accountService.getAccountByUserName(newAccountInfo.getUserName());
				if(account != null && account.getRole().getId() != role.getId()) {
					accountService.saveAccount(account, role);
				}
			}					
		} catch(Exception e) {
			return "/manageAccount";
		}
		return "redirect:/manageAccount";
	}
}
