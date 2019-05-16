package com.travelmaker.stravel.restaurant.model.vo;

import java.sql.Date;

public class RestaurantReview implements java.io.Serializable{

	private static final long serialVersionUID = 93658L;
	private int restaurant_no;
	private int restaurant_answer_no;
	private String restaurant_answer_content;
	private String restaurant_answer_writer;
	private Date restaurant_answer_date;
	private int restaurant_answer_point;
	private String restaurant_answer_blind;
	private Date restaurant_answer_lastmodified;
	private Date restaurant_answer_enjoydate;
	
	public RestaurantReview() {}

	public RestaurantReview(int restaurant_no, int restaurant_answer_no, String restaurant_answer_content,
			String restaurant_answer_writer, Date restaurant_answer_date, int restaurant_answer_point,
			String restaurant_answer_blind, Date restaurant_answer_lastmodified, Date restaurant_answer_enjoydate) {
		super();
		this.restaurant_no = restaurant_no;
		this.restaurant_answer_no = restaurant_answer_no;
		this.restaurant_answer_content = restaurant_answer_content;
		this.restaurant_answer_writer = restaurant_answer_writer;
		this.restaurant_answer_date = restaurant_answer_date;
		this.restaurant_answer_point = restaurant_answer_point;
		this.restaurant_answer_blind = restaurant_answer_blind;
		this.restaurant_answer_lastmodified = restaurant_answer_lastmodified;
		this.restaurant_answer_enjoydate = restaurant_answer_enjoydate;
	}

	public int getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(int restaurant_no) {
		this.restaurant_no = restaurant_no;
	}

	public int getRestaurant_answer_no() {
		return restaurant_answer_no;
	}

	public void setRestaurant_answer_no(int restaurant_answer_no) {
		this.restaurant_answer_no = restaurant_answer_no;
	}

	public String getRestaurant_answer_content() {
		return restaurant_answer_content;
	}

	public void setRestaurant_answer_content(String restaurant_answer_content) {
		this.restaurant_answer_content = restaurant_answer_content;
	}

	public String getRestaurant_answer_writer() {
		return restaurant_answer_writer;
	}

	public void setRestaurant_answer_writer(String restaurant_answer_writer) {
		this.restaurant_answer_writer = restaurant_answer_writer;
	}

	public Date getRestaurant_answer_date() {
		return restaurant_answer_date;
	}

	public void setRestaurant_answer_date(Date restaurant_answer_date) {
		this.restaurant_answer_date = restaurant_answer_date;
	}

	public int getRestaurant_answer_point() {
		return restaurant_answer_point;
	}

	public void setRestaurant_answer_point(int restaurant_answer_point) {
		this.restaurant_answer_point = restaurant_answer_point;
	}

	public String getRestaurant_answer_blind() {
		return restaurant_answer_blind;
	}

	public void setRestaurant_answer_blind(String restaurant_answer_blind) {
		this.restaurant_answer_blind = restaurant_answer_blind;
	}

	public Date getRestaurant_answer_lastmodified() {
		return restaurant_answer_lastmodified;
	}

	public void setRestaurant_answer_lastmodified(Date restaurant_answer_lastmodified) {
		this.restaurant_answer_lastmodified = restaurant_answer_lastmodified;
	}

	public Date getRestaurant_answer_enjoydate() {
		return restaurant_answer_enjoydate;
	}

	public void setRestaurant_answer_enjoydate(Date restaurant_answer_enjoydate) {
		this.restaurant_answer_enjoydate = restaurant_answer_enjoydate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "RestaurantReview [restaurant_no=" + restaurant_no + ", restaurant_answer_no=" + restaurant_answer_no
				+ ", restaurant_answer_content=" + restaurant_answer_content + ", restaurant_answer_writer="
				+ restaurant_answer_writer + ", restaurant_answer_date=" + restaurant_answer_date
				+ ", restaurant_answer_point=" + restaurant_answer_point + ", restaurant_answer_blind="
				+ restaurant_answer_blind + ", restaurant_answer_lastmodified=" + restaurant_answer_lastmodified
				+ ", restaurant_answer_enjoydate=" + restaurant_answer_enjoydate + "]";
	}

	
}
