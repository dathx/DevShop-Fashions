package com.dat.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dat.entity.*;
import com.dat.entity.Product;
import com.dat.entity.Report;

public interface ProductDAO extends JpaRepository<Product, Integer>{

//	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
//	List<Product> findByPrice(double minPrice, double maxPrice);
	List<Product> findByPriceBetween(double minPrice, double maxPrice);

//@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
//Page<Product> findByKeywords(String keywords, Pageable pageable);

//Page<Product> findAllByNameLike(String keywords, Pageable pageable);
//
//	@Query("SELECT new Report(o.category, sum(o.price), count(o)) "
//			+ " FROM Product o "
//			+ " GROUP BY o.category"
//			+ " ORDER BY sum(o.price) DESC")
//	List<Report> getInventoryByCategory();
//	
//	public  Product findProductByID(int id) {
//		for(Product product:) {
//			if(product.getId()==id) {
//				return product;
//			}
//		}
//	return null;
//}
	//select by category
	@Query("SELECT o FROM Product o WHERE o.category like ?1")
	List<Product> findByCategory(Category category, Pageable pageable);
	
	//lab6.1
	@Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
	List<Product> findByPrice(double minPrice, double maxPrice);
	
	//lab6.2
	@Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
	Page<Product> findByKeywords(String keywords, Pageable pageable);

	//lab6.3
	@Query("SELECT new Report(o.category, sum(o.price), count(o)) "
			+ " FROM Product o "
			+ " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();

	
}
