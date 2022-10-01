package com.service;

import java.util.List;

import com.entity.Category;
import com.entity.Producer;
import com.entity.Product;
import com.model.PaginationResult;
import com.model.ProductInfo;

public interface ProductService {

	public PaginationResult<ProductInfo> getAllProductInfos(int page, int maxResult, String likeName);

	public PaginationResult<ProductInfo> getProductInfosByCategory(int page, int maxResult, String likeName,String nameCategory, String nameProducer);

	public PaginationResult<ProductInfo> getProductByName(int page, int maxResult, String name);

	public ProductInfo getProductInfoByCode(String code);

	public Product getProductByCode(String code);

	public void saveProductInfo(ProductInfo productInfo);

	public boolean deleteProduct(String code);

	public List<Category> getAllCategory();

	public List<Producer> getAllProducer();
}
