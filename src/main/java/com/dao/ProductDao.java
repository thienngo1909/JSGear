package com.dao;

import java.util.List;

import com.entity.Category;
import com.entity.Producer;
import com.entity.Product;
import com.model.PaginationResult;
import com.model.ProductInfo;

public interface ProductDao {

	public Product getProductByCode(String code);
	
	public PaginationResult<ProductInfo> getAllProductInfos(int page, int maxResult);
	
	public PaginationResult<ProductInfo> getProductByName(int page, int maxResult, String name);
	
	public PaginationResult<ProductInfo> getProductInfosByCategory(int page, int maxResult,String nameCategory, String nameProducer);
	
	public PaginationResult<ProductInfo> getProductInfosByProducer(int page, int maxResult,int idProducer);
	
	public ProductInfo getProductInfoByCode(String code);
	
	public void saveProductInfo(ProductInfo productInfo);
	
	public boolean deleteProduct(String code);
	
	public List<Category> getAllCategory();
	
	public List<Producer> getAllProducer();
	
}
