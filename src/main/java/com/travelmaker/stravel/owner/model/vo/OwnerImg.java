package com.travelmaker.stravel.owner.model.vo;

import java.io.Serializable;

public class OwnerImg implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 121111L;
	
	private int owner_img_no;//사업장대표이미지번호
	private String owner_img;//대표이미지
	private int owner_no;//사업자 번호
	
	public OwnerImg () {}

	public OwnerImg(int owner_img_no, String owner_img, int owner_no) {
		super();
		this.owner_img_no = owner_img_no;
		this.owner_img = owner_img;
		this.owner_no = owner_no;
	}

	public int getOwner_img_no() {
		return owner_img_no;
	}

	public void setOwner_img_no(int owner_img_no) {
		this.owner_img_no = owner_img_no;
	}

	public String getOwner_img() {
		return owner_img;
	}

	public void setOwner_img(String owner_img) {
		this.owner_img = owner_img;
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
