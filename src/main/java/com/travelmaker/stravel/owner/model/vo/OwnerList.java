package com.travelmaker.stravel.owner.model.vo;

import java.io.Serializable;

public class OwnerList implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 111144L;
	
	private int owner_no;//사업자번호
	private String owner_companyName;//업체이름
	private String owner_address;//주소
	private String owner_category;//숙박종류
	private int off_season_price;//최저가
	private int property_review_like;//별점
	
	
	public OwnerList() {}


	public OwnerList(int owner_no, String owner_companyName, String owner_address, String owner_category,
			int off_season_price, int property_review_like) {
		super();
		this.owner_no = owner_no;
		this.owner_companyName = owner_companyName;
		this.owner_address = owner_address;
		this.owner_category = owner_category;
		this.off_season_price = off_season_price;
		this.property_review_like = property_review_like;
	}


	public int getOwner_no() {
		return owner_no;
	}


	public void setOwner_no(int owner_no) {
		this.owner_no = owner_no;
	}


	public String getOwner_companyName() {
		return owner_companyName;
	}


	public void setOwner_companyName(String owner_companyName) {
		this.owner_companyName = owner_companyName;
	}


	public String getOwner_address() {
		return owner_address;
	}


	public void setOwner_address(String owner_address) {
		this.owner_address = owner_address;
	}


	public String getOwner_category() {
		return owner_category;
	}


	public void setOwner_category(String owner_category) {
		this.owner_category = owner_category;
	}


	public int getOff_season_price() {
		return off_season_price;
	}


	public void setOff_season_price(int off_season_price) {
		this.off_season_price = off_season_price;
	}


	public int getProperty_review_like() {
		return property_review_like;
	}


	public void setProperty_review_like(int property_review_like) {
		this.property_review_like = property_review_like;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	
	
}
