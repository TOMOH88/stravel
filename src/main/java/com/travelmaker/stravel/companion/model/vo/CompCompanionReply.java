package com.travelmaker.stravel.companion.model.vo;

import java.sql.Date;

public class CompCompanionReply implements java.io.Serializable {
	
	
	private static final long serialVersionUID = 7112322509070443407L;
	private int companion_no;
	private String companion_title;
	private String user_email;
	private String companion_content;
	private Date companion_date;
	private String companion_schedule;
	private int companion_progress;
	private int companion_reply_no;
	private String companion_reply_content;
	
	public CompCompanionReply() {}

	public CompCompanionReply(int companion_no, String companion_title, String user_email, String companion_content,
			Date companion_date, String companion_schedule, int companion_progress, int companion_reply_no,
			String companion_reply_content) {
		super();
		this.companion_no = companion_no;
		this.companion_title = companion_title;
		this.user_email = user_email;
		this.companion_content = companion_content;
		this.companion_date = companion_date;
		this.companion_schedule = companion_schedule;
		this.companion_progress = companion_progress;
		this.companion_reply_no = companion_reply_no;
		this.companion_reply_content = companion_reply_content;
	}

	public int getCompanion_no() {
		return companion_no;
	}

	public void setCompanion_no(int companion_no) {
		this.companion_no = companion_no;
	}

	public String getCompanion_title() {
		return companion_title;
	}

	public void setCompanion_title(String companion_title) {
		this.companion_title = companion_title;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getCompanion_content() {
		return companion_content;
	}

	public void setCompanion_content(String companion_content) {
		this.companion_content = companion_content;
	}

	public Date getCompanion_date() {
		return companion_date;
	}

	public void setCompanion_date(Date companion_date) {
		this.companion_date = companion_date;
	}

	public String getCompanion_schedule() {
		return companion_schedule;
	}

	public void setCompanion_schedule(String companion_schedule) {
		this.companion_schedule = companion_schedule;
	}

	public int getCompanion_progress() {
		return companion_progress;
	}

	public void setCompanion_progress(int companion_progress) {
		this.companion_progress = companion_progress;
	}

	public int getCompanion_reply_no() {
		return companion_reply_no;
	}

	public void setCompanion_reply_no(int companion_reply_no) {
		this.companion_reply_no = companion_reply_no;
	}

	public String getCompanion_reply_content() {
		return companion_reply_content;
	}

	public void setCompanion_reply_content(String companion_reply_content) {
		this.companion_reply_content = companion_reply_content;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CompCompanionReply [companion_no=" + companion_no + ", companion_title=" + companion_title
				+ ", user_email=" + user_email + ", companion_content=" + companion_content + ", companion_date="
				+ companion_date + ", companion_schedule=" + companion_schedule + ", companion_progress="
				+ companion_progress + ", companion_reply_no=" + companion_reply_no + ", companion_reply_content="
				+ companion_reply_content + "]";
	}


}
