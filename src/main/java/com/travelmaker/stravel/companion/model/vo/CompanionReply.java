package com.travelmaker.stravel.companion.model.vo;

import java.sql.Date;

public class CompanionReply implements java.io.Serializable {

	private static final long serialVersionUID = -2823748804812402266L;
	
	private int companion_reply_no;
	private int companion_no;
	private int companion_reply_ref;
	private int companion_reply_lev;
	private int companion_reply_seq;
	private String user_email;
	private String companion_reply_content;
	private Date companion_reply_date;
	
	public CompanionReply() {}

	public CompanionReply(int companion_reply_no, int companion_no, int companion_reply_ref, int companion_reply_lev,
			int companion_reply_seq, String user_email, String companion_reply_content, Date companion_reply_date) {
		super();
		this.companion_reply_no = companion_reply_no;
		this.companion_no = companion_no;
		this.companion_reply_ref = companion_reply_ref;
		this.companion_reply_lev = companion_reply_lev;
		this.companion_reply_seq = companion_reply_seq;
		this.user_email = user_email;
		this.companion_reply_content = companion_reply_content;
		this.companion_reply_date = companion_reply_date;
	}


	public int getCompanion_reply_no() {
		return companion_reply_no;
	}


	public void setCompanion_reply_no(int companion_reply_no) {
		this.companion_reply_no = companion_reply_no;
	}


	public int getCompanion_no() {
		return companion_no;
	}


	public void setCompanion_no(int companion_no) {
		this.companion_no = companion_no;
	}


	public int getCompanion_reply_ref() {
		return companion_reply_ref;
	}


	public void setCompanion_reply_ref(int companion_reply_ref) {
		this.companion_reply_ref = companion_reply_ref;
	}


	public int getCompanion_reply_lev() {
		return companion_reply_lev;
	}


	public void setCompanion_reply_lev(int companion_reply_lev) {
		this.companion_reply_lev = companion_reply_lev;
	}


	public int getCompanion_reply_seq() {
		return companion_reply_seq;
	}


	public void setCompanion_reply_seq(int companion_reply_seq) {
		this.companion_reply_seq = companion_reply_seq;
	}


	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getCompanion_reply_content() {
		return companion_reply_content;
	}


	public void setCompanion_reply_content(String companion_reply_content) {
		this.companion_reply_content = companion_reply_content;
	}


	public Date getCompanion_reply_date() {
		return companion_reply_date;
	}


	public void setCompanion_reply_date(Date companion_reply_date) {
		this.companion_reply_date = companion_reply_date;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "CompanionReply [companion_reply_no=" + companion_reply_no + ", companion_no=" + companion_no
				+ ", companion_reply_ref=" + companion_reply_ref + ", companion_reply_lev=" + companion_reply_lev
				+ ", companion_reply_seq=" + companion_reply_seq + ", user_email=" + user_email
				+ ", companion_reply_content=" + companion_reply_content + ", companion_reply_date="
				+ companion_reply_date + "]";
	}

}
