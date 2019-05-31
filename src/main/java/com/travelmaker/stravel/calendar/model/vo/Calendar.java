package com.travelmaker.stravel.calendar.model.vo;

import java.io.Serializable;

public class Calendar implements Serializable{
	private static final long serialVersionUID = 13323245L;
	
	private int calendar_no;
	private String calendar_title;
	private int touristopt_no;
	//private int restaurant_no;
	private int mycalendar_no;
	
	public Calendar() {}

	public Calendar(int calendar_no, String calendar_title, int touristopt_no, /*int restaurant_no,*/ int mycalendar_no) {
		super();
		this.calendar_no = calendar_no;
		this.calendar_title = calendar_title;
		this.touristopt_no = touristopt_no;
		//this.restaurant_no = restaurant_no;
		this.mycalendar_no = mycalendar_no;
	}
	
	public String getCalendar_title() {
		return calendar_title;
	}

	public void setCalendar_title(String calendar_title) {
		this.calendar_title = calendar_title;
	}

	public int getCalendar_no() {
		return calendar_no;
	}

	public void setCalendar_no(int calendar_no) {
		this.calendar_no = calendar_no;
	}

	public int getTouristopt_no() {
		return touristopt_no;
	}

	public void setTouristopt_no(int touristopt_no) {
		this.touristopt_no = touristopt_no;
	}

	/*public int getRestaurant_no() {
		return restaurant_no;
	}

	public void setRestaurant_no(int restaurant_no) {
		this.restaurant_no = restaurant_no;
	}*/

	public int getMycalendar_no() {
		return mycalendar_no;
	}

	public void setMycalendar_no(int mycalendar_no) {
		this.mycalendar_no = mycalendar_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Calendar [calendar_no=" + calendar_no + ", calendar_title=" + calendar_title + ", touristopt_no="
				+ touristopt_no + ", mycalendar_no=" + mycalendar_no + "]";
	}

}
