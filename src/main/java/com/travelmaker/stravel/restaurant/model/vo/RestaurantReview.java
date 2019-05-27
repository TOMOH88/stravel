package com.travelmaker.stravel.restaurant.model.vo;

import java.sql.Date;

public class RestaurantReview implements java.io.Serializable{

	private static final long serialVersionUID = 93658L;
	private int restaurant_no;
	private int restaurant_review_no;
	private String restaurant_review_content;
	private String restaurant_review_writer;
	private Date restaurant_review_date;
	private int restaurant_review_point;
	private String restaurant_review_blind;
	private Date restaurant_review_lastmodified;
	private Date restaurant_review_tourdate;
	
	public RestaurantReview() {}

	public RestaurantReview(int restaurant_no, int restaurant_review_no, String restaurant_review_content,
			String restaurant_review_writer, Date restaurant_review_date, int restaurant_review_point,
			String restaurant_review_blind, Date restaurant_review_lastmodified, Date restaurant_review_tourdate) {
		super();
		this.restaurant_no = restaurant_no;
		this.restaurant_review_no = restaurant_review_no;
		this.restaurant_review_content = restaurant_review_content;
		this.restaurant_review_writer = restaurant_review_writer;
		this.restaurant_review_date = restaurant_review_date;
		this.restaurant_review_point = restaurant_review_point;
		this.restaurant_review_blind = restaurant_review_blind;
		this.restaurant_review_lastmodified = restaurant_review_lastmodified;
		this.restaurant_review_tourdate = restaurant_review_tourdate;
	}

	public int getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(int restaurant_no) {
		this.restaurant_no = restaurant_no;
	}

	public int getRestaurant_review_no() {
		return restaurant_review_no;
	}

	public void setRestaurant_review_no(int restaurant_review_no) {
		this.restaurant_review_no = restaurant_review_no;
	}

	public String getRestaurant_review_content() {
		return restaurant_review_content;
	}

	public void setRestaurant_review_content(String restaurant_review_content) {
		this.restaurant_review_content = restaurant_review_content;
	}

	public String getRestaurant_review_writer() {
		return restaurant_review_writer;
	}

	public void setRestaurant_review_writer(String restaurant_review_writer) {
		this.restaurant_review_writer = restaurant_review_writer;
	}

	public Date getRestaurant_review_date() {
		return restaurant_review_date;
	}

	public void setRestaurant_review_date(Date restaurant_review_date) {
		this.restaurant_review_date = restaurant_review_date;
	}

	public int getRestaurant_review_point() {
		return restaurant_review_point;
	}

	public void setRestaurant_review_point(int restaurant_review_point) {
		this.restaurant_review_point = restaurant_review_point;
	}

	public String getRestaurant_review_blind() {
		return restaurant_review_blind;
	}

	public void setRestaurant_review_blind(String restaurant_review_blind) {
		this.restaurant_review_blind = restaurant_review_blind;
	}

	public Date getRestaurant_review_lastmodified() {
		return restaurant_review_lastmodified;
	}

	public void setRestaurant_review_lastmodified(Date restaurant_review_lastmodified) {
		this.restaurant_review_lastmodified = restaurant_review_lastmodified;
	}

	public Date getRestaurant_review_tourdate() {
		return restaurant_review_tourdate;
	}

	public void setRestaurant_review_tourdate(Date restaurant_review_tourdate) {
		this.restaurant_review_tourdate = restaurant_review_tourdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "RestaurantReview [restaurant_no=" + restaurant_no + ", restaurant_review_no=" + restaurant_review_no
				+ ", restaurant_review_content=" + restaurant_review_content + ", restaurant_review_writer="
				+ restaurant_review_writer + ", restaurant_review_date=" + restaurant_review_date
				+ ", restaurant_review_point=" + restaurant_review_point + ", restaurant_review_blind="
				+ restaurant_review_blind + ", restaurant_review_lastmodified=" + restaurant_review_lastmodified
				+ ", restaurant_review_tourdate=" + restaurant_review_tourdate + "]";
	}

	
}
