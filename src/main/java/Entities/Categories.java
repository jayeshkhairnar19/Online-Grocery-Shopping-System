package Entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
import javax.persistence.Entity;

import java.util.ArrayList;
import java.util.List;


import org.hibernate.annotations.*;

@Entity
public class Categories {
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryTitle() {
		return categoryTitle;
	}
	public void setCategoryTitle(String categoryTitle) {
		this.categoryTitle = categoryTitle;
	}
	public String getCatergoryDescription() {
		return catergoryDescription;
	}
	public void setCatergoryDescription(String catergoryDescription) {
		this.catergoryDescription = catergoryDescription;
	}
	@Override
	public String toString() {
		return "Categories [categoryId=" + categoryId + ", categoryTitle=" + categoryTitle + ", catergoryDescription="
				+ catergoryDescription + "]";
	}
	public Categories(int categoryId, String categoryTitle, String catergoryDescription) {
		super();
		this.categoryId = categoryId;
		this.categoryTitle = categoryTitle;
		this.catergoryDescription = catergoryDescription;
	}
	public Categories() {
		super();
		// TODO Auto-generated constructor stub
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int categoryId;
	public Categories(String categoryTitle, String catergoryDescription,List<Product> products) {
		super();
		this.categoryTitle = categoryTitle;
		this.catergoryDescription = catergoryDescription;
		this.products = products;
	}
	private String categoryTitle;
	private String catergoryDescription;
	@OneToMany(mappedBy = "category")
	private List<Product> products = new ArrayList<>();
	
	

}
