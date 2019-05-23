package com.travelmaker.stravel.tripBoard.model.vo;

public class MyTripBoardLike implements java.io.Serializable{
	private static final long serialVersionUID =87690L;
	private int like_no;
	private int board_no;
	private int user_no;
	private int like_check;
	
	public MyTripBoardLike() {}

	public MyTripBoardLike(int like_no, int board_no, int user_no, int like_check) {
		super();
		this.like_no = like_no;
		this.board_no = board_no;
		this.user_no = user_no;
		this.like_check = like_check;
	}

	public int getLike_no() {
		return like_no;
	}

	public void setLike_no(int like_no) {
		this.like_no = like_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getLike_check() {
		return like_check;
	}

	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Like [like_no=" + like_no + ", board_no=" + board_no + ", user_no=" + user_no + ", like_check="
				+ like_check + "]";
	}
	
}
