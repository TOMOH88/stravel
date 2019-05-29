package com.travelmaker.stravel.admin.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class AdminVo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6016585958938020392L;
	private String admin_id;
	private String admin_password;
	private String admin_name;
	private Date regist_date;
	public AdminVo() {
		super();
	}
	public AdminVo(String admin_id, String admin_password, String admin_name, Date regist_date) {
		super();
		this.admin_id = admin_id;
		this.admin_password = admin_password;
		this.admin_name = admin_name;
		this.regist_date = regist_date;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", admin_password=" + admin_password + ", admin_name=" + admin_name
				+ ", regist_date=" + regist_date + "]";
	}
	
	
}
