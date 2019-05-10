package com.travelmaker.stravel.touristspot.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class TouristspotVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6281822010661582817L;
	private int touristspot_no;
	private String touristspotcategorycode;
	private String touristspot_name;
	private String touristspot_content;
	private String touristspot_writer;
	private String rename_thumnail;
	private String touristspot_open;
	private String touristspot_closed;
	private String touristspot_homepage;
	private String touristspot_address;
	private String touristspot_tel;
	private double touristspot_latitude;
	private double touristspot_longitude;
	private Date touristspot_date;
	private Date touristspot_lastmodified;
	private String touristspot_deletestatus;
	public TouristspotVo() {
		super();
	}
	public TouristspotVo(int touristspot_no, String touristspotcategorycode, String touristspot_name,
			String touristspot_content, String touristspot_writer, String rename_thumnail, String touristspot_open,
			String touristspot_closed, String touristspot_homepage, String touristspot_address, String touristspot_tel,
			double touristspot_latitude, double touristspot_longitude, Date touristspot_date, Date touristspot_lastmodified,
			String touristspot_deletestatus) {
		super();
		this.touristspot_no = touristspot_no;
		this.touristspotcategorycode = touristspotcategorycode;
		this.touristspot_name = touristspot_name;
		this.touristspot_content = touristspot_content;
		this.touristspot_writer = touristspot_writer;
		this.rename_thumnail = rename_thumnail;
		this.touristspot_open = touristspot_open;
		this.touristspot_closed = touristspot_closed;
		this.touristspot_homepage = touristspot_homepage;
		this.touristspot_address = touristspot_address;
		this.touristspot_tel = touristspot_tel;
		this.touristspot_latitude = touristspot_latitude;
		this.touristspot_longitude = touristspot_longitude;
		this.touristspot_date = touristspot_date;
		this.touristspot_lastmodified = touristspot_lastmodified;
		this.touristspot_deletestatus = touristspot_deletestatus;
	}
	public int getTouristspot_no() {
		return touristspot_no;
	}
	public void setTouristspot_no(int touristspot_no) {
		this.touristspot_no = touristspot_no;
	}
	public String getTouristspotcategorycode() {
		return touristspotcategorycode;
	}
	public void setTouristspotcategorycode(String touristspotcategorycode) {
		this.touristspotcategorycode = touristspotcategorycode;
	}
	public String getTouristspot_name() {
		return touristspot_name;
	}
	public void setTouristspot_name(String touristspot_name) {
		this.touristspot_name = touristspot_name;
	}
	public String getTouristspot_content() {
		return touristspot_content;
	}
	public void setTouristspot_content(String touristspot_content) {
		this.touristspot_content = touristspot_content;
	}
	public String getTouristspot_writer() {
		return touristspot_writer;
	}
	public void setTouristspot_writer(String touristspot_writer) {
		this.touristspot_writer = touristspot_writer;
	}
	public String getRename_thumnail() {
		return rename_thumnail;
	}
	public void setRename_thumnail(String rename_thumnail) {
		this.rename_thumnail = rename_thumnail;
	}
	public String getTouristspot_open() {
		return touristspot_open;
	}
	public void setTouristspot_open(String touristspot_open) {
		this.touristspot_open = touristspot_open;
	}
	public String getTouristspot_closed() {
		return touristspot_closed;
	}
	public void setTouristspot_closed(String touristspot_closed) {
		this.touristspot_closed = touristspot_closed;
	}
	public String getTouristspot_homepage() {
		return touristspot_homepage;
	}
	public void setTouristspot_homepage(String touristspot_homepage) {
		this.touristspot_homepage = touristspot_homepage;
	}
	public String getTouristspot_address() {
		return touristspot_address;
	}
	public void setTouristspot_address(String touristspot_address) {
		this.touristspot_address = touristspot_address;
	}
	public String getTouristspot_tel() {
		return touristspot_tel;
	}
	public void setTouristspot_tel(String touristspot_tel) {
		this.touristspot_tel = touristspot_tel;
	}
	public double gettouristspot_latitude() {
		return touristspot_latitude;
	}
	public void settouristspot_latitude(double touristspot_latitude) {
		this.touristspot_latitude = touristspot_latitude;
	}
	public double gettouristspot_longitude() {
		return touristspot_longitude;
	}
	public void settouristspot_longitude(double touristspot_longitude) {
		this.touristspot_longitude = touristspot_longitude;
	}
	public Date getTouristspot_date() {
		return touristspot_date;
	}
	public void setTouristspot_date(Date touristspot_date) {
		this.touristspot_date = touristspot_date;
	}
	public Date getTouristspot_lastmodified() {
		return touristspot_lastmodified;
	}
	public void setTouristspot_lastmodified(Date touristspot_lastmodified) {
		this.touristspot_lastmodified = touristspot_lastmodified;
	}
	public String getTouristspot_deletestatus() {
		return touristspot_deletestatus;
	}
	public void setTouristspot_deletestatus(String touristspot_deletestatus) {
		this.touristspot_deletestatus = touristspot_deletestatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TouristspotVo [touristspot_no=" + touristspot_no + ", touristspotcategorycode="
				+ touristspotcategorycode + ", touristspot_name=" + touristspot_name + ", touristspot_content="
				+ touristspot_content + ", touristspot_writer=" + touristspot_writer + ", rename_thumnail="
				+ rename_thumnail + ", touristspot_open=" + touristspot_open + ", touristspot_closed="
				+ touristspot_closed + ", touristspot_homepage=" + touristspot_homepage + ", touristspot_address="
				+ touristspot_address + ", touristspot_tel=" + touristspot_tel + ", touristspot_latitude="
				+ touristspot_latitude + ", touristspot_longitude=" + touristspot_longitude + ", touristspot_date="
				+ touristspot_date + ", touristspot_lastmodified=" + touristspot_lastmodified
				+ ", touristspot_deletestatus=" + touristspot_deletestatus + "]";
	}
	
	
	
}
