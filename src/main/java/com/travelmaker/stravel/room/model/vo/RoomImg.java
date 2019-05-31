package com.travelmaker.stravel.room.model.vo;

import java.io.Serializable;

public class RoomImg implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 11122L;
	private int room_img_no;
	private String room_img;
	private int room_no;
	private int owner_no;
	
	public RoomImg() {}
	public RoomImg(int room_img_no, String room_img, int room_no, int owner_no) {
		super();
		this.room_img_no = room_img_no;
		this.room_img = room_img;
		this.room_no = room_no;
		this.owner_no = owner_no;
	}
	public int getRoom_img_no() {
		return room_img_no;
	}
	public void setRoom_img_no(int room_img_no) {
		this.room_img_no = room_img_no;
	}
	public String getRoom_img() {
		return room_img;
	}
	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	public int getOwner_no() {
		return owner_no;
	}
	public void setOwner_no(int owner_no) {
		this.owner_no = owner_no;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	}