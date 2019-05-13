package com.travelmaker.stravel.touristspot.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class TouristspotReviewsVo implements Serializable{

	private static final long serialVersionUID = 37351640710728254L;
	
	private int touristspot_no;
	private int review_no;
	private String review_writer;
	private String review_content;
	private int review_point;
	private String review_blind;
	private String review_deletestatus;
	private Date review_date;
	private Date review_lastmodified;
	private Date review_tourdate;
	public TouristspotReviewsVo() {
		super();
	}
	public TouristspotReviewsVo(int touristspot_no, int review_no, String review_writer, String review_content,
			int review_point, String review_blind, String review_deletestatus, Date review_date,
			Date review_lastmodified, Date review_tourdate) {
		super();
		this.touristspot_no = touristspot_no;
		this.review_no = review_no;
		this.review_writer = review_writer;
		this.review_content = review_content;
		this.review_point = review_point;
		this.review_blind = review_blind;
		this.review_deletestatus = review_deletestatus;
		this.review_date = review_date;
		this.review_lastmodified = review_lastmodified;
		this.review_tourdate = review_tourdate;
	}
	public int getTouristspot_no() {
		return touristspot_no;
	}
	public void setTouristspot_no(int touristspot_no) {
		this.touristspot_no = touristspot_no;
	}
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public String getReview_writer() {
		return review_writer;
	}
	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_point() {
		return review_point;
	}
	public void setReview_point(int review_point) {
		this.review_point = review_point;
	}
	public String getReview_blind() {
		return review_blind;
	}
	public void setReview_blind(String review_blind) {
		this.review_blind = review_blind;
	}
	public String getReview_deletestatus() {
		return review_deletestatus;
	}
	public void setReview_deletestatus(String review_deletestatus) {
		this.review_deletestatus = review_deletestatus;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public Date getReview_lastmodified() {
		return review_lastmodified;
	}
	public void setReview_lastmodified(Date review_lastmodified) {
		this.review_lastmodified = review_lastmodified;
	}
	public Date getReview_tourdate() {
		return review_tourdate;
	}
	public void setReview_tourdate(Date review_tourdate) {
		this.review_tourdate = review_tourdate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TouristspotReviewsVo [touristspot_no=" + touristspot_no + ", review_no=" + review_no
				+ ", review_writer=" + review_writer + ", review_content=" + review_content + ", review_point="
				+ review_point + ", review_blind=" + review_blind + ", review_deletestatus=" + review_deletestatus
				+ ", review_date=" + review_date + ", review_lastmodified=" + review_lastmodified + ", review_tourdate="
				+ review_tourdate + "]";
	}
	
	
	}
