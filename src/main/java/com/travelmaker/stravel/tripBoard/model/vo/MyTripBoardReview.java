package com.travelmaker.stravel.tripBoard.model.vo;

import java.sql.Date;

public class MyTripBoardReview implements java.io.Serializable{

	private static final long serialVersionUID = 98125L;
	private int board_no;
	private int answer_no;
	private String answer_content;
	private String answer_writer;
	private Date answer_date;
	
	public MyTripBoardReview() {}

	public MyTripBoardReview(int board_no, int answer_no, String answer_content, String answer_writer,
			Date answer_date) {
		super();
		this.board_no = board_no;
		this.answer_no = answer_no;
		this.answer_content = answer_content;
		this.answer_writer = answer_writer;
		this.answer_date = answer_date;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getAnswer_no() {
		return answer_no;
	}

	public void setAnswer_no(int answer_no) {
		this.answer_no = answer_no;
	}

	public String getAnswer_content() {
		return answer_content;
	}

	public void setAnswer_content(String answer_content) {
		this.answer_content = answer_content;
	}

	public String getAnswer_writer() {
		return answer_writer;
	}

	public void setAnswer_writer(String answer_writer) {
		this.answer_writer = answer_writer;
	}

	public Date getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MyTripBoardReview [board_no=" + board_no + ", answer_no=" + answer_no + ", answer_content="
				+ answer_content + ", answer_writer=" + answer_writer + ", answer_date=" + answer_date + "]";
	}
	
	
}
