package com.travelmaker.stravel.companion.model.vo;

import java.sql.Date;

public class Companion implements java.io.Serializable{
	
	private static final long serialVersionUID = 6843458844607554258L;
	
	private int companion_no;
	private String companion_title;
	private int user_no;
	private String companion_writer;
	private String companion_content;
	private Date companion_date;
	private String companion_schedule;
	private int companion_progress;
	
	public Companion() {}

	public Companion(int companion_no, String companion_title, int user_no, String companion_writer,
			String companion_content, Date companion_date, String companion_schedule, int companion_progress) {
		super();
		this.companion_no = companion_no;
		this.companion_title = companion_title;
		this.user_no = user_no;
		this.companion_writer = companion_writer;
		this.companion_content = companion_content;
		this.companion_date = companion_date;
		this.companion_schedule = companion_schedule;
		this.companion_progress = companion_progress;
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

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getCompanion_writer() {
		return companion_writer;
	}

	public void setCompanion_writer(String companion_writer) {
		this.companion_writer = companion_writer;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Companion [companion_no=" + companion_no + ", companion_title=" + companion_title + ", user_no="
				+ user_no + ", companion_writer=" + companion_writer + ", companion_content=" + companion_content
				+ ", companion_date=" + companion_date + ", companion_schedule=" + companion_schedule
				+ ", companion_progress=" + companion_progress + "]";
	}

	
	

}
