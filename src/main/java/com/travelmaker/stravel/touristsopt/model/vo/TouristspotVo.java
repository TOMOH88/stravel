package com.travelmaker.stravel.touristsopt.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class TouristspotVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6281822010661582817L;
	private int touristsopt_no;
	private String touristsoptcategorycode;
	private String touristsopt_name;
	private String touristsopt_content;
	private String touristsopt_writer;
	private String rename_thumnail;
	private String touristsopt_open;
	private String touristsopt_closed;
	private String touristsopt_homepage;
	private String touristsopt_address;
	private String touristsopt_tel;
	private Float touristsopt_gridx;
	private Float touristsopt_gridy;
	private Date touristsopt_date;
	private Date touristsopt_lastmodified;
	private String touristsopt_deletestatus;
	public TouristspotVo() {
		super();
	}
	public TouristspotVo(int touristsopt_no, String touristsoptcategorycode, String touristsopt_name,
			String touristsopt_content, String touristsopt_writer, String rename_thumnail, String touristsopt_open,
			String touristsopt_closed, String touristsopt_homepage, String touristsopt_address, String touristsopt_tel,
			Float touristsopt_gridx, Float touristsopt_gridy, Date touristsopt_date, Date touristsopt_lastmodified,
			String touristsopt_deletestatus) {
		super();
		this.touristsopt_no = touristsopt_no;
		this.touristsoptcategorycode = touristsoptcategorycode;
		this.touristsopt_name = touristsopt_name;
		this.touristsopt_content = touristsopt_content;
		this.touristsopt_writer = touristsopt_writer;
		this.rename_thumnail = rename_thumnail;
		this.touristsopt_open = touristsopt_open;
		this.touristsopt_closed = touristsopt_closed;
		this.touristsopt_homepage = touristsopt_homepage;
		this.touristsopt_address = touristsopt_address;
		this.touristsopt_tel = touristsopt_tel;
		this.touristsopt_gridx = touristsopt_gridx;
		this.touristsopt_gridy = touristsopt_gridy;
		this.touristsopt_date = touristsopt_date;
		this.touristsopt_lastmodified = touristsopt_lastmodified;
		this.touristsopt_deletestatus = touristsopt_deletestatus;
	}
	public int getTouristsopt_no() {
		return touristsopt_no;
	}
	public void setTouristsopt_no(int touristsopt_no) {
		this.touristsopt_no = touristsopt_no;
	}
	public String getTouristsoptcategorycode() {
		return touristsoptcategorycode;
	}
	public void setTouristsoptcategorycode(String touristsoptcategorycode) {
		this.touristsoptcategorycode = touristsoptcategorycode;
	}
	public String getTouristsopt_name() {
		return touristsopt_name;
	}
	public void setTouristsopt_name(String touristsopt_name) {
		this.touristsopt_name = touristsopt_name;
	}
	public String getTouristsopt_content() {
		return touristsopt_content;
	}
	public void setTouristsopt_content(String touristsopt_content) {
		this.touristsopt_content = touristsopt_content;
	}
	public String getTouristsopt_writer() {
		return touristsopt_writer;
	}
	public void setTouristsopt_writer(String touristsopt_writer) {
		this.touristsopt_writer = touristsopt_writer;
	}
	public String getRename_thumnail() {
		return rename_thumnail;
	}
	public void setRename_thumnail(String rename_thumnail) {
		this.rename_thumnail = rename_thumnail;
	}
	public String getTouristsopt_open() {
		return touristsopt_open;
	}
	public void setTouristsopt_open(String touristsopt_open) {
		this.touristsopt_open = touristsopt_open;
	}
	public String getTouristsopt_closed() {
		return touristsopt_closed;
	}
	public void setTouristsopt_closed(String touristsopt_closed) {
		this.touristsopt_closed = touristsopt_closed;
	}
	public String getTouristsopt_homepage() {
		return touristsopt_homepage;
	}
	public void setTouristsopt_homepage(String touristsopt_homepage) {
		this.touristsopt_homepage = touristsopt_homepage;
	}
	public String getTouristsopt_address() {
		return touristsopt_address;
	}
	public void setTouristsopt_address(String touristsopt_address) {
		this.touristsopt_address = touristsopt_address;
	}
	public String getTouristsopt_tel() {
		return touristsopt_tel;
	}
	public void setTouristsopt_tel(String touristsopt_tel) {
		this.touristsopt_tel = touristsopt_tel;
	}
	public Float getTouristsopt_gridx() {
		return touristsopt_gridx;
	}
	public void setTouristsopt_gridx(Float touristsopt_gridx) {
		this.touristsopt_gridx = touristsopt_gridx;
	}
	public Float getTouristsopt_gridy() {
		return touristsopt_gridy;
	}
	public void setTouristsopt_gridy(Float touristsopt_gridy) {
		this.touristsopt_gridy = touristsopt_gridy;
	}
	public Date getTouristsopt_date() {
		return touristsopt_date;
	}
	public void setTouristsopt_date(Date touristsopt_date) {
		this.touristsopt_date = touristsopt_date;
	}
	public Date getTouristsopt_lastmodified() {
		return touristsopt_lastmodified;
	}
	public void setTouristsopt_lastmodified(Date touristsopt_lastmodified) {
		this.touristsopt_lastmodified = touristsopt_lastmodified;
	}
	public String getTouristsopt_deletestatus() {
		return touristsopt_deletestatus;
	}
	public void setTouristsopt_deletestatus(String touristsopt_deletestatus) {
		this.touristsopt_deletestatus = touristsopt_deletestatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TouristspotVo [touristsopt_no=" + touristsopt_no + ", touristsoptcategorycode="
				+ touristsoptcategorycode + ", touristsopt_name=" + touristsopt_name + ", touristsopt_content="
				+ touristsopt_content + ", touristsopt_writer=" + touristsopt_writer + ", rename_thumnail="
				+ rename_thumnail + ", touristsopt_open=" + touristsopt_open + ", touristsopt_closed="
				+ touristsopt_closed + ", touristsopt_homepage=" + touristsopt_homepage + ", touristsopt_address="
				+ touristsopt_address + ", touristsopt_tel=" + touristsopt_tel + ", touristsopt_gridx="
				+ touristsopt_gridx + ", touristsopt_gridy=" + touristsopt_gridy + ", touristsopt_date="
				+ touristsopt_date + ", touristsopt_lastmodified=" + touristsopt_lastmodified
				+ ", touristsopt_deletestatus=" + touristsopt_deletestatus + "]";
	}
	
	
	
}
