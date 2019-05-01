package com.travelmaker.stravel.touristsopt.model.vo;

import java.io.Serializable;

public class TouristspotImagesVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1804525401009965642L;
	private int touristspot_no;
	private int touristspot_sq;
	private String touristspot_imagename;
	public TouristspotImagesVo() {
		super();
	}
	public TouristspotImagesVo(int touristspot_no, int touristspot_sq, String touristspot_imagename) {
		super();
		this.touristspot_no = touristspot_no;
		this.touristspot_sq = touristspot_sq;
		this.touristspot_imagename = touristspot_imagename;
	}
	public int getTouristspot_no() {
		return touristspot_no;
	}
	public void setTouristspot_no(int touristspot_no) {
		this.touristspot_no = touristspot_no;
	}
	public int getTouristspot_sq() {
		return touristspot_sq;
	}
	public void setTouristspot_sq(int touristspot_sq) {
		this.touristspot_sq = touristspot_sq;
	}
	public String getTouristspot_imagename() {
		return touristspot_imagename;
	}
	public void setTouristspot_imagename(String touristspot_imagename) {
		this.touristspot_imagename = touristspot_imagename;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TouristspotImagesVo [touristspot_no=" + touristspot_no + ", touristspot_sq=" + touristspot_sq
				+ ", touristspot_imagename=" + touristspot_imagename + "]";
	}
	
}
