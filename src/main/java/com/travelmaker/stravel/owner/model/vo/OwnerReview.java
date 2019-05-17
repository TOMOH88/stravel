package com.travelmaker.stravel.owner.model.vo;

import java.io.Serializable;

public class OwnerReview implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 112214L;
	
	private String user_name;
	private String property_review_content;
	private int property_review_like;
	private String user_picture;
	private int owner_no;
	
	public OwnerReview() {}

	public OwnerReview(String user_name, String property_review_content, int property_review_like, String user_picture,
			int owner_no) {
		super();
		this.user_name = user_name;
		this.property_review_content = property_review_content;
		this.property_review_like = property_review_like;
		this.user_picture = user_picture;
		this.owner_no = owner_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getProperty_review_content() {
		return property_review_content;
	}

	public void setProperty_review_content(String property_review_content) {
		this.property_review_content = property_review_content;
	}

	public int getProperty_review_like() {
		return property_review_like;
	}

	public void setProperty_review_like(int property_review_like) {
		this.property_review_like = property_review_like;
	}

	public String getUser_picture() {
		return user_picture;
	}

	public void setUser_picture(String user_picture) {
		this.user_picture = user_picture;
	}

	public int getOwner_no() {
		return owner_no;
	}

	public void setOwner_no(int owner_no) {
		this.owner_no = owner_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	}
