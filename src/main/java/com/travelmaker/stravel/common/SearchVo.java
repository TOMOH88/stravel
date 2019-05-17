package com.travelmaker.stravel.common;

import java.io.Serializable;

public class SearchVo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5762945098620387981L;
	private String SearchCategory;
	private String items;
	public SearchVo() {
		super();
	}
	public SearchVo(String searchCategory, String items) {
		super();
		SearchCategory = searchCategory;
		this.items = items;
	}
	public String getSearchCategory() {
		return SearchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		SearchCategory = searchCategory;
	}
	public String getItems() {
		return items;
	}
	public void setItems(String items) {
		this.items = items;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "SearchVo [SearchCategory=" + SearchCategory + ", items=" + items + "]";
	}
	
	
}
