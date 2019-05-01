package com.travelmaker.stravel.touristsopt.model.vo;

import java.io.Serializable;

public class TouristspotCategoryVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9143223401515485725L;
	private String touristspotCategoryCode;
	private String touristspotCategoryName;
	public TouristspotCategoryVo() {
		super();
	}
	public TouristspotCategoryVo(String touristspotCategoryCode, String touristspotCategoryName) {
		super();
		this.touristspotCategoryCode = touristspotCategoryCode;
		this.touristspotCategoryName = touristspotCategoryName;
	}
	public String getTouristspotCategoryCode() {
		return touristspotCategoryCode;
	}
	public void setTouristspotCategoryCode(String touristspotCategoryCode) {
		this.touristspotCategoryCode = touristspotCategoryCode;
	}
	public String getTouristspotCategoryName() {
		return touristspotCategoryName;
	}
	public void setTouristspotCategoryName(String touristspotCategoryName) {
		this.touristspotCategoryName = touristspotCategoryName;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TouristspotCategoryVo [touristspotCategoryCode=" + touristspotCategoryCode
				+ ", touristspotCategoryName=" + touristspotCategoryName + "]";
	}
	
}
