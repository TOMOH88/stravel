package com.travelmaker.stravel.room.model.vo;

import java.io.Serializable;

public class RoomImg implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 11122L;
	private int imgNo;
	private String roomImg;
	
	public RoomImg() {};
	
	public RoomImg(int imgNo, String roomImg) {
		super();
		this.imgNo = imgNo;
		this.roomImg = roomImg;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public String getRoomImg() {
		return roomImg;
	}

	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}
	
	
}
