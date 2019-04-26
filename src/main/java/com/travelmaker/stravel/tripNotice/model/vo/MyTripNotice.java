package com.travelmaker.stravel.tripNotice.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;


@Component
public class MyTripNotice implements java.io.Serializable {

	private static final long serialVersionUID = 23456L;
	
	private int notice_no;
	private String notice_title;
	private String notice_writer;
	private String notice_content;
	private String notice_original_filename;
	private String notice_rename_filename;
	private int notice_read_count;
	private Date notice_write_date;
	private int notice_good_count;
	
	public MyTripNotice() {}
	
	public MyTripNotice(int notice_no, String notice_title, String notice_writer, String notice_content,
			String notice_original_filename, String notice_rename_filename, int notice_read_count,
			Date notice_write_date, int notice_good_count) {
		super();
		this.notice_no = notice_no;
		this.notice_title = notice_title;
		this.notice_writer = notice_writer;
		this.notice_content = notice_content;
		this.notice_original_filename = notice_original_filename;
		this.notice_rename_filename = notice_rename_filename;
		this.notice_read_count = notice_read_count;
		this.notice_write_date = notice_write_date;
		this.notice_good_count = notice_good_count;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_original_filename() {
		return notice_original_filename;
	}
	public void setNotice_original_filename(String notice_original_filename) {
		this.notice_original_filename = notice_original_filename;
	}
	public String getNotice_rename_filename() {
		return notice_rename_filename;
	}
	public void setNotice_rename_filename(String notice_rename_filename) {
		this.notice_rename_filename = notice_rename_filename;
	}
	public int getNotice_read_count() {
		return notice_read_count;
	}
	public void setNotice_read_count(int notice_read_count) {
		this.notice_read_count = notice_read_count;
	}
	public Date getNotice_write_date() {
		return notice_write_date;
	}
	public void setNotice_write_date(Date notice_write_date) {
		this.notice_write_date = notice_write_date;
	}
	public int getNotice_good_count() {
		return notice_good_count;
	}
	public void setNotice_good_count(int notice_good_count) {
		this.notice_good_count = notice_good_count;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MyTripNotice [notice_no=" + notice_no + ", notice_title=" + notice_title + ", notice_writer="
				+ notice_writer + ", notice_content=" + notice_content + ", notice_original_filename="
				+ notice_original_filename + ", notice_rename_filename=" + notice_rename_filename
				+ ", notice_read_count=" + notice_read_count + ", notice_write_date=" + notice_write_date
				+ ", notice_good_count=" + notice_good_count + "]";
	}
	
	
		
}
