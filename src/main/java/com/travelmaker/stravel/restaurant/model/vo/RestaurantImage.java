package com.travelmaker.stravel.restaurant.model.vo;

import org.springframework.stereotype.Component;

@Component
public class RestaurantImage implements java.io.Serializable{

	private static final long serialVersionUID = 84838L;
	private int restaurant_no;
	private String restaurant_imagename;
	private String restaurant_imagepath;
	
	public RestaurantImage() {}

	public RestaurantImage(int restaurant_no, String restaurant_imagename, String restaurant_imagepath) {
		super();
		this.restaurant_no = restaurant_no;
		this.restaurant_imagename = restaurant_imagename;
		this.restaurant_imagepath = restaurant_imagepath;
	}

	public int getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(int restaurant_no) {
		this.restaurant_no = restaurant_no;
	}

	public String getRestaurant_imagename() {
		return restaurant_imagename;
	}

	public void setRestaurant_imagename(String restaurant_imagename) {
		this.restaurant_imagename = restaurant_imagename;
	}

	public String getRestaurant_imagepath() {
		return restaurant_imagepath;
	}

	public void setRestaurant_imagepath(String restaurant_imagepath) {
		this.restaurant_imagepath = restaurant_imagepath;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "RestaurantImage [restaurant_no=" + restaurant_no + ", restaurant_imagename=" + restaurant_imagename
				+ ", restaurant_imagepath=" + restaurant_imagepath + "]";
	}
	
	
	
}
