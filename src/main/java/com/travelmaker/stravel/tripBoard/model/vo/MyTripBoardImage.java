package com.travelmaker.stravel.tripBoard.model.vo;

public class MyTripBoardImage implements java.io.Serializable{
	
	private static final long serialVersionUID = 35822L;
	private int board_no;
	private int board_sq;
	private String board_imagename;
	
	public MyTripBoardImage() {}

	public MyTripBoardImage(int board_no, int board_sq, String board_imagename) {
		super();
		this.board_no = board_no;
		this.board_sq = board_sq;
		this.board_imagename = board_imagename;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getBoard_sq() {
		return board_sq;
	}

	public void setBoard_sq(int board_sq) {
		this.board_sq = board_sq;
	}

	public String getBoard_imagename() {
		return board_imagename;
	}

	public void setBoard_imagename(String board_imagename) {
		this.board_imagename = board_imagename;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MyTripBoardImage [board_no=" + board_no + ", board_sq=" + board_sq + ", board_imagename="
				+ board_imagename + "]";
	}
	
		 
	
	
}
