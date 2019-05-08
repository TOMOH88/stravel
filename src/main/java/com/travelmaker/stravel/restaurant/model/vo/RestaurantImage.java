package com.travelmaker.stravel.restaurant.model.vo;

import org.springframework.stereotype.Component;

@Component
public class RestaurantImage implements java.io.Serializable{

	private static final long serialVersionUID = 84838L;
	private int restaurant_no;
	private int restaurant_sq;
	private String restaurant_imagename;
	
	public RestaurantImage() {}

	public RestaurantImage(int restaurant_no, int restaurant_sq, String restaurant_imagename) {
		super();
		this.restaurant_no = restaurant_no;
		this.restaurant_sq = restaurant_sq;
		this.restaurant_imagename = restaurant_imagename;
	}

	public int getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(int restaurant_no) {
		this.restaurant_no = restaurant_no;
	}

	public int getRestaurant_sq() {
		return restaurant_sq;
	}

	public void setRestaurant_sq(int restaurant_sq) {
		this.restaurant_sq = restaurant_sq;
	}

	public String getRestaurant_imagename() {
		return restaurant_imagename;
	}

	public void setRestaurant_imagename(String restaurant_imagename) {
		this.restaurant_imagename = restaurant_imagename;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "RestaurantImage [restaurant_no=" + restaurant_no + ", restaurant_sq=" + restaurant_sq
				+ ", restaurant_imagename=" + restaurant_imagename + "]";
	}
	
	}
