package com.travelmaker.stravel.restaurant.model.vo;

import org.springframework.stereotype.Component;

@Component
public class RestaurantCategory implements java.io.Serializable{

	
	private static final long serialVersionUID = 94725L;
	private String restaurant_category_code;
	private String restaurant_category_name;
	
	public RestaurantCategory() {}

	public RestaurantCategory(String restaurant_category_code, String restaurant_category_name) {
		super();
		this.restaurant_category_code = restaurant_category_code;
		this.restaurant_category_name = restaurant_category_name;
	}

	public String getRestaurant_category_code() {
		return restaurant_category_code;
	}

	public void setRestaurant_category_code(String restaurant_category_code) {
		this.restaurant_category_code = restaurant_category_code;
	}

	public String getRestaurant_category_name() {
		return restaurant_category_name;
	}

	public void setRestaurant_category_name(String restaurant_category_name) {
		this.restaurant_category_name = restaurant_category_name;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "RestaurantCategory [restaurant_category_code=" + restaurant_category_code
				+ ", restaurant_category_name=" + restaurant_category_name + "]";
	}
	
}
