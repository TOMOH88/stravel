package com.travelmaker.stravel.calendar.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class MyCalendar implements Serializable{
	private static final long serialVersionUID = 12223131L;
	
	private int mycalendar_no;
	private String mycalendar_title;
	private String mycalendar_content;
	private String mycalendar_writer;
	private Date mycalendar_start_date;
	private Date mycalendar_end_date;
	private String category;
	private String notepad;
	private String budget;
	
	public MyCalendar() {}

	public MyCalendar(int mycalendar_no, String mycalendar_title, String mycalendar_content, String mycalendar_writer,
			String category, String notepad, String budget) {
		super();
		this.mycalendar_no = mycalendar_no;
		this.mycalendar_title = mycalendar_title;
		this.mycalendar_content = mycalendar_content;
		this.mycalendar_writer = mycalendar_writer;
		this.category = category;
		this.notepad = notepad;
		this.budget = budget;
	}
	
	public Date getMycalendar_start_date() {
		return mycalendar_start_date;
	}

	public void setMycalendar_start_date(Date mycalendar_start_date) {
		this.mycalendar_start_date = mycalendar_start_date;
	}

	public Date getMycalendar_end_date() {
		return mycalendar_end_date;
	}

	public void setMycalendar_end_date(Date mycalendar_end_date) {
		this.mycalendar_end_date = mycalendar_end_date;
	}

	public int getMycalendar_no() {
		return mycalendar_no;
	}

	public void setMycalendar_no(int mycalendar_no) {
		this.mycalendar_no = mycalendar_no;
	}

	public String getMycalendar_title() {
		return mycalendar_title;
	}

	public void setMycalendar_title(String mycalendar_title) {
		this.mycalendar_title = mycalendar_title;
	}

	public String getMycalendar_content() {
		return mycalendar_content;
	}

	public void setMycalendar_content(String mycalendar_content) {
		this.mycalendar_content = mycalendar_content;
	}

	public String getMycalendar_writer() {
		return mycalendar_writer;
	}

	public void setMycalendar_writer(String mycalendar_writer) {
		this.mycalendar_writer = mycalendar_writer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getNotepad() {
		return notepad;
	}

	public void setNotepad(String notepad) {
		this.notepad = notepad;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "myCalendar [mycalendar_no=" + mycalendar_no + ", mycalendar_title=" + mycalendar_title
				+ ", mycalendar_content=" + mycalendar_content + ", mycalendar_writer=" + mycalendar_writer
				+ ", category=" + category + ", notepad=" + notepad + ", budget=" + budget + "]";
	}
}
