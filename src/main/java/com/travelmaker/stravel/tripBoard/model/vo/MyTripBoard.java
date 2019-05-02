package com.travelmaker.stravel.tripBoard.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;


@Component
public class MyTripBoard implements java.io.Serializable {

	private static final long serialVersionUID = 23456L;
	
	private int board_no;
	private String board_title;
	private String board_writer;
	private String board_content;
	private String board_original_filename;
	private String board_rename_filename;
	private int board_read_count;
	private Date board_write_date;
	private int board_good_count;
	
	public MyTripBoard() {}
	
	public MyTripBoard(int board_no, String board_title, String board_writer, String board_content,
			String board_original_filename, String board_rename_filename, int board_read_count,
			Date board_write_date, int board_good_count) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.board_writer = board_writer;
		this.board_content = board_content;
		this.board_original_filename = board_original_filename;
		this.board_rename_filename = board_rename_filename;
		this.board_read_count = board_read_count;
		this.board_write_date = board_write_date;
		this.board_good_count = board_good_count;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_original_filename() {
		return board_original_filename;
	}
	public void setBoard_original_filename(String board_original_filename) {
		this.board_original_filename = board_original_filename;
	}
	public String getBoard_rename_filename() {
		return board_rename_filename;
	}
	public void setBoard_rename_filename(String board_rename_filename) {
		this.board_rename_filename = board_rename_filename;
	}
	public int getBoard_read_count() {
		return board_read_count;
	}
	public void setBoard_read_count(int board_read_count) {
		this.board_read_count = board_read_count;
	}
	public Date getBoard_write_date() {
		return board_write_date;
	}
	public void setBoard_write_date(Date board_write_date) {
		this.board_write_date = board_write_date;
	}
	public int getBoard_good_count() {
		return board_good_count;
	}
	public void setBoard_good_count(int board_good_count) {
		this.board_good_count = board_good_count;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "MyTripboard [board_no=" + board_no + ", board_title=" + board_title + ", board_writer="
				+ board_writer + ", board_content=" + board_content + ", board_original_filename="
				+ board_original_filename + ", board_rename_filename=" + board_rename_filename
				+ ", board_read_count=" + board_read_count + ", board_write_date=" + board_write_date
				+ ", board_good_count=" + board_good_count + "]";
	}
	
	
		
}
