package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.AccountInfo;
import com.model.CustomerInfo;
import com.service.AccountService;
import com.service.ProductService;
import com.validator.ProductInfoValidator;

@Controller
public class AdminControlller {
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private ProductService productService;;
	
	@Autowired
	private ProductInfoValidator productInfoValidator;
	
	@GetMapping(value="/login")
	public String login(Model model) {
		return "login";
	}
	
	@GetMapping(value = "/register")
	public String registerAccount(Model model, @RequestParam(value = "id", defaultValue = "") String id) {
		AccountInfo accountInfo = new AccountInfo();
		model.addAttribute("registerForm", accountInfo);
		return "register";
	}
	
	@PostMapping(value = "/register")
	public String saveNewAccount(Model model, @ModelAttribute("registerForm") AccountInfo AccountInfo, BindingResult result) {
		try {
			accountService.registerNewAccount(AccountInfo);
		} catch (Exception e) {
			model.addAttribute("errorMessage", e.getMessage());
			return "register";
		}
		return "redirect:/register";
	}
}
