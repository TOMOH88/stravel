package com.travelmaker.stravel.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Member implements java.io.Serializable {
	private static final long serialVersionUID = 88888L;
	private int user_no;
	private String user_email;
	private String user_password;
	private String user_name;
	private String user_phone;
	private String user_picture;
	private String gender;
	public Member() {}
	public Member(int user_no, String user_email, String user_password, String user_name, String user_phone,
			String user_picture, String gender) {
		super();
		this.user_no = user_no;
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_picture = user_picture;
		this.gender = gender;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_picture() {
		return user_picture;
	}
	public void setUser_picture(String user_picture) {
		this.user_picture = user_picture;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Member [user_no=" + user_no + ", user_email=" + user_email + ", user_password=" + user_password
				+ ", user_name=" + user_name + ", user_phone=" + user_phone + ", user_picture=" + user_picture
				+ ", gender=" + gender + "]";
	}
	
	
	
	
	
}