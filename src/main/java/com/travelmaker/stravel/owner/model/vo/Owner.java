package com.travelmaker.stravel.owner.model.vo;

import java.io.Serializable;

public class Owner implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 11141L;

	private int owner_no;//사업자번호
	private int owner_license_no;//사업자등록번호,아이디
	private String owner_password;//비밀번호
	private String owner_name;//대표이름
	private String owner_companyName;//업체이름
	private int owner_telephone;//휴대전화번호
	private int owner_phone;//전화번호
	private String owner_account;//계좌번호
	private String owner_address;//주소
	private String owner_category;//숙박종류
	private String owner_approve;//가입승인여부
	private String owner_latitude;//위도
	private String owner_longitude;//경도
	private int off_season_price;//최저가
	private int property_review_like;//별점

	
	public Owner() {}

	
	public Owner(int owner_no, int owner_license_no, String owner_password, String owner_name, String owner_companyName,
			int owner_telephone, int owner_phone, String owner_account, String owner_address, String owner_category,
			String owner_approve, String owner_latitude, String owner_longitude, int off_season_price, int property_review_like) {
		super();
		this.owner_no = owner_no;
		this.owner_license_no = owner_license_no;
		this.owner_password = owner_password;
		this.owner_name = owner_name;
		this.owner_companyName = owner_companyName;
		this.owner_telephone = owner_telephone;
		this.owner_phone = owner_phone;
		this.owner_account = owner_account;
		this.owner_address = owner_address;
		this.owner_category = owner_category;
		this.owner_approve = owner_approve;
		this.owner_latitude = owner_latitude;
		this.owner_longitude = owner_longitude;
		this.off_season_price = off_season_price;
		this.property_review_like = property_review_like;
	}
	

	public String getOwner_latitude() {
		return owner_latitude;
	}


	public void setOwner_latitude(String owner_latitude) {
		this.owner_latitude = owner_latitude;
	}


	public String getOwner_longitude() {
		return owner_longitude;
	}


	public void setOwner_longitude(String owner_longitude) {
		this.owner_longitude = owner_longitude;
	}


	public int getOwner_no() {
		return owner_no;
	}

	public void setOwner_no(int owner_no) {
		this.owner_no = owner_no;
	}

	public int getOwner_license_no() {
		return owner_license_no;
	}

	public void setOwner_license_no(int owner_license_no) {
		this.owner_license_no = owner_license_no;
	}

	public String getOwner_password() {
		return owner_password;
	}

	public void setOwner_password(String owner_password) {
		this.owner_password = owner_password;
	}

	public String getOwner_name() {
		return owner_name;
	}

	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}

	public String getOwner_companyName() {
		return owner_companyName;
	}

	public void setOwner_companyName(String owner_companyName) {
		this.owner_companyName = owner_companyName;
	}

	public int getOwner_telephone() {
		return owner_telephone;
	}

	public void setOwner_telephone(int owner_telephone) {
		this.owner_telephone = owner_telephone;
	}

	public int getOwner_phone() {
		return owner_phone;
	}

	public void setOwner_phone(int owner_phone) {
		this.owner_phone = owner_phone;
	}

	public String getOwner_account() {
		return owner_account;
	}

	public void setOwner_account(String owner_account) {
		this.owner_account = owner_account;
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

	public String getOwner_approve() {
		return owner_approve;
	}

	public void setOwner_approve(String owner_approve) {
		this.owner_approve = owner_approve;
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
