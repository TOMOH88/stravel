package com.travelmaker.stravel.tripNotice.model.vo;

import java.sql.Date;

public class MyTripNotice implements java.io.Serializable {

	private static final long serialVersionUID = 23456L;
	
	private int notice_no;
	private String title;
	private String writer;
	private String content;
	private String original_filename;
	private String rename_filename;
	private int read_no;
	private Date write_date;
	private int good_no;
	
	public MyTripNotice(int notice_no, String title, String writer, String content, String original_filename,
			String rename_filename, int read_no, Date write_date, int good_no) {
		super();
		this.notice_no = notice_no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.original_filename = original_filename;
		this.rename_filename = rename_filename;
		this.read_no = read_no;
		this.write_date = write_date;
		this.good_no = good_no;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOriginal_filename() {
		return original_filename;
	}
	public void setOriginal_filename(String original_filename) {
		this.original_filename = original_filename;
	}
	public String getrename_filename() {
		return rename_filename;
	}
	public void setrename_filename(String rename_filename) {
		this.rename_filename = rename_filename;
	}
	public int getRead_no() {
		return read_no;
	}
	public void setRead_no(int read_no) {
		this.read_no = read_no;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public int getGood_no() {
		return good_no;
	}
	public void setGood_no(int good_no) {
		this.good_no = good_no;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MyTripNotice [notice_no=" + notice_no + ", title=" + title + ", writer=" + writer + ", content="
				+ content + ", original_filename=" + original_filename + ", rename_filename=" + rename_filename
				+ ", read_no=" + read_no + ", write_date=" + write_date + ", good_no=" + good_no + "]";
	}
	
	
}
