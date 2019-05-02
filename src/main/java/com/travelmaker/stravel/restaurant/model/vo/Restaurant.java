package com.travelmaker.stravel.restaurant.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;
@Component
public class Restaurant implements java.io.Serializable{

	private static final long serialVersionUID = 34567L;
	private int restaurant_no;
	private String restaurant_category_code;
	private String restaurant_name;
	private String restaurant_content;
	private String restaurant_writer;
	private Date restaurant_date;
	private String rename_rhumbnail;
	private String restaurant_openinghours;
	private String restaurant_homepage;
	private String restaurant_tel;
	private String restaurant_lastmodified;
	private String restaurant_gridx;
	private String restaurant_gridy;
	private String restaurant_deletestatus;
	
	public Restaurant() {}

	public Restaurant(int restaurant_no, String restaurant_category_code, String restaurant_name,
			String restaurant_content, String restaurant_writer, Date restaurant_date, String rename_rhumbnail,
			String restaurant_openinghours, String restaurant_homepage, String restaurant_tel,
			String restaurant_lastmodified, String restaurant_gridx, String restaurant_gridy,
			String restaurant_deletestatus) {
		super();
		this.restaurant_no = restaurant_no;
		this.restaurant_category_code = restaurant_category_code;
		this.restaurant_name = restaurant_name;
		this.restaurant_content = restaurant_content;
		this.restaurant_writer = restaurant_writer;
		this.restaurant_date = restaurant_date;
		this.rename_rhumbnail = rename_rhumbnail;
		this.restaurant_openinghours = restaurant_openinghours;
		this.restaurant_homepage = restaurant_homepage;
		this.restaurant_tel = restaurant_tel;
		this.restaurant_lastmodified = restaurant_lastmodified;
		this.restaurant_gridx = restaurant_gridx;
		this.restaurant_gridy = restaurant_gridy;
		this.restaurant_deletestatus = restaurant_deletestatus;
	}

	public int getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(int restaurant_no) {
		this.restaurant_no = restaurant_no;
	}

	public String getRestaurant_category_code() {
		return restaurant_category_code;
	}

	public void setRestaurant_category_code(String restaurant_category_code) {
		this.restaurant_category_code = restaurant_category_code;
	}

	public String getRestaurant_name() {
		return restaurant_name;
	}

	public void setRestaurant_name(String restaurant_name) {
		this.restaurant_name = restaurant_name;
	}

	public String getRestaurant_content() {
		return restaurant_content;
	}

	public void setRestaurant_content(String restaurant_content) {
		this.restaurant_content = restaurant_content;
	}

	public String getRestaurant_writer() {
		return restaurant_writer;
	}

	public void setRestaurant_writer(String restaurant_writer) {
		this.restaurant_writer = restaurant_writer;
	}

	public Date getRestaurant_date() {
		return restaurant_date;
	}

	public void setRestaurant_date(Date restaurant_date) {
		this.restaurant_date = restaurant_date;
	}

	public String getRename_rhumbnail() {
		return rename_rhumbnail;
	}

	public void setRename_rhumbnail(String rename_rhumbnail) {
		this.rename_rhumbnail = rename_rhumbnail;
	}

	public String getRestaurant_openinghours() {
		return restaurant_openinghours;
	}

	public void setRestaurant_openinghours(String restaurant_openinghours) {
		this.restaurant_openinghours = restaurant_openinghours;
	}

	public String getRestaurant_homepage() {
		return restaurant_homepage;
	}

	public void setRestaurant_homepage(String restaurant_homepage) {
		this.restaurant_homepage = restaurant_homepage;
	}

	public String getRestaurant_tel() {
		return restaurant_tel;
	}

	public void setRestaurant_tel(String restaurant_tel) {
		this.restaurant_tel = restaurant_tel;
	}

	public String getRestaurant_lastmodified() {
		return restaurant_lastmodified;
	}

	public void setRestaurant_lastmodified(String restaurant_lastmodified) {
		this.restaurant_lastmodified = restaurant_lastmodified;
	}

	public String getRestaurant_gridx() {
		return restaurant_gridx;
	}

	public void setRestaurant_gridx(String restaurant_gridx) {
		this.restaurant_gridx = restaurant_gridx;
	}

	public String getRestaurant_gridy() {
		return restaurant_gridy;
	}

	public void setRestaurant_gridy(String restaurant_gridy) {
		this.restaurant_gridy = restaurant_gridy;
	}

	public String getRestaurant_deletestatus() {
		return restaurant_deletestatus;
	}

	public void setRestaurant_deletestatus(String restaurant_deletestatus) {
		this.restaurant_deletestatus = restaurant_deletestatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Restaurant [restaurant_no=" + restaurant_no + ", restaurant_category_code=" + restaurant_category_code
				+ ", restaurant_name=" + restaurant_name + ", restaurant_content=" + restaurant_content
				+ ", restaurant_writer=" + restaurant_writer + ", restaurant_date=" + restaurant_date
				+ ", rename_rhumbnail=" + rename_rhumbnail + ", restaurant_openinghours=" + restaurant_openinghours
				+ ", restaurant_homepage=" + restaurant_homepage + ", restaurant_tel=" + restaurant_tel
				+ ", restaurant_lastmodified=" + restaurant_lastmodified + ", restaurant_gridx=" + restaurant_gridx
				+ ", restaurant_gridy=" + restaurant_gridy + ", restaurant_deletestatus=" + restaurant_deletestatus
				+ "]";
	}
	
	
}
