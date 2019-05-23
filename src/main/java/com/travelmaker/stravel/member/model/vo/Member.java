package com.travelmaker.stravel.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class Member implements java.io.Serializable {
	private static final long serialVersionUID = 88888L;
	
	private String useremail;
	private String userpwd;
	private String username;
	private String gender;
	private int age;
	private String phone;
	 
	public Member() {}

	public Member(String useremail, String userpwd, String username, String gender, int age, String phone) {
		super();
		this.useremail = useremail;
		this.userpwd = userpwd;
		this.username = username;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return useremail + ", " + userpwd + ", " + username + ", " + gender + ", " + age + ", " + phone;
	}
	
	
	
	
}
