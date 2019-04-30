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
	private Date touristsopt_date;
	private String rename_thumnail;
	private String touristsopt_openinghours;
	private String touristsopt_homepage;
	private String touristsopt_tel;
	private Date touristsopt_lastmodified;
	private Float touristsopt_gridx;
	private Float touristsopt_gridy;
	private String touristsopt_deletestatus;
	private String touristsopt_address;
	/*TOURISTSOPT_NO	NUMBER
	TOURISTSOPTCATEGORYCODE	CHAR(4 BYTE)
	TOURISTSOPT_NAME	VARCHAR2(200 BYTE)
	TOURISTSOPT_CONTENT	CLOB
	TOURISTSOPT_WRITER	VARCHAR2(100 BYTE)
	TOURISTSOPT_DATE	DATE
	-RENAME_THUMBNAIL	VARCHAR2(100 BYTE)
	TOURISTSOPT_OPENINGHOURS	VARCHAR2(50 BYTE)
	TOURISTSOPT_HOMEPAGE	VARCHAR2(200 BYTE)
	TOURISTSOPT_TEL	VARCHAR2(20 BYTE)
	TOURISTSOPT_LASTMODIFIED	DATE
	TOURISTSOPT_GRIDX	VARCHAR2(50 BYTE)
	TOURISTSOPT_GRIDY	VARCHAR2(50 BYTE)
	TOURISTSOPT_DELETESTATUS	CHAR(1 BYTE)
	TOURISTSOPT_ADDRESS	VARCHAR2(200 BYTE)*/
	public TouristspotVo() {
		super();
	}
	public TouristspotVo(int touristsopt_no, String touristsoptcategorycode, String touristsopt_name,
			String touristsopt_content, String touristsopt_writer, Date touristsopt_date, String rename_thumnail,
			String touristsopt_openinghours, String touristsopt_homepage, String touristsopt_tel,
			Date touristsopt_lastmodified, Float touristsopt_gridx, Float touristsopt_gridy,
			String touristsopt_deletestatus, String touristsopt_address) {
		super();
		this.touristsopt_no = touristsopt_no;
		this.touristsoptcategorycode = touristsoptcategorycode;
		this.touristsopt_name = touristsopt_name;
		this.touristsopt_content = touristsopt_content;
		this.touristsopt_writer = touristsopt_writer;
		this.touristsopt_date = touristsopt_date;
		this.rename_thumnail = rename_thumnail;
		this.touristsopt_openinghours = touristsopt_openinghours;
		this.touristsopt_homepage = touristsopt_homepage;
		this.touristsopt_tel = touristsopt_tel;
		this.touristsopt_lastmodified = touristsopt_lastmodified;
		this.touristsopt_gridx = touristsopt_gridx;
		this.touristsopt_gridy = touristsopt_gridy;
		this.touristsopt_deletestatus = touristsopt_deletestatus;
		this.touristsopt_address = touristsopt_address;
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
	public Date getTouristsopt_date() {
		return touristsopt_date;
	}
	public void setTouristsopt_date(Date touristsopt_date) {
		this.touristsopt_date = touristsopt_date;
	}
	public String getRename_thumnail() {
		return rename_thumnail;
	}
	public void setRename_thumnail(String rename_thumnail) {
		this.rename_thumnail = rename_thumnail;
	}
	public String getTouristsopt_openinghours() {
		return touristsopt_openinghours;
	}
	public void setTouristsopt_openinghours(String touristsopt_openinghours) {
		this.touristsopt_openinghours = touristsopt_openinghours;
	}
	public String getTouristsopt_homepage() {
		return touristsopt_homepage;
	}
	public void setTouristsopt_homepage(String touristsopt_homepage) {
		this.touristsopt_homepage = touristsopt_homepage;
	}
	public String getTouristsopt_tel() {
		return touristsopt_tel;
	}
	public void setTouristsopt_tel(String touristsopt_tel) {
		this.touristsopt_tel = touristsopt_tel;
	}
	public Date getTouristsopt_lastmodified() {
		return touristsopt_lastmodified;
	}
	public void setTouristsopt_lastmodified(Date touristsopt_lastmodified) {
		this.touristsopt_lastmodified = touristsopt_lastmodified;
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
	public String getTouristsopt_deletestatus() {
		return touristsopt_deletestatus;
	}
	public void setTouristsopt_deletestatus(String touristsopt_deletestatus) {
		this.touristsopt_deletestatus = touristsopt_deletestatus;
	}
	public String getTouristsopt_address() {
		return touristsopt_address;
	}
	public void setTouristsopt_address(String touristsopt_address) {
		this.touristsopt_address = touristsopt_address;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Touristspot [touristsopt_no=" + touristsopt_no + ", touristsoptcategorycode=" + touristsoptcategorycode
				+ ", touristsopt_name=" + touristsopt_name + ", touristsopt_content=" + touristsopt_content
				+ ", touristsopt_writer=" + touristsopt_writer + ", touristsopt_date=" + touristsopt_date
				+ ", rename_thumnail=" + rename_thumnail + ", touristsopt_openinghours=" + touristsopt_openinghours
				+ ", touristsopt_homepage=" + touristsopt_homepage + ", touristsopt_tel=" + touristsopt_tel
				+ ", touristsopt_lastmodified=" + touristsopt_lastmodified + ", touristsopt_gridx=" + touristsopt_gridx
				+ ", touristsopt_gridy=" + touristsopt_gridy + ", touristsopt_deletestatus=" + touristsopt_deletestatus
				+ ", touristsopt_address=" + touristsopt_address + "]";
	}
	
	
	
	
	
	


}
