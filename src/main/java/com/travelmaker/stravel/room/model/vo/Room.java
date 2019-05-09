package com.travelmaker.stravel.room.model.vo;

import java.io.Serializable;

public class Room implements Serializable {
	
	/**
	 * 
	 */


	private static final long serialVersionUID = 1111L;
	
	private int roomNo;//객실번호
	private int licenseNo;//사업자번호
	private String roomName;//객실명
	private String option;//편의시설
	private String roomContent;//객실정보
	private int minNo;//기본인원
	private int maxNo;//총인원
	private int off_season_price;//비수기가격
	private int on_season_price;//성수기가격
	private int week_extra_price;//주말추가가격
	private int add_person_price;//인원추가가격
	private double discountRate;//할인율
	
	public Room() {}

	public Room(int roomNo, int licenseNo, String roomName, String option, String roomContent, int minNo, int maxNo,
			int off_season_price, int on_season_price, int week_extra_price, int add_person_price,
			double discountRate) {
		super();
		this.roomNo = roomNo;
		this.licenseNo = licenseNo;
		this.roomName = roomName;
		this.option = option;
		this.roomContent = roomContent;
		this.minNo = minNo;
		this.maxNo = maxNo;
		this.off_season_price = off_season_price;
		this.on_season_price = on_season_price;
		this.week_extra_price = week_extra_price;
		this.add_person_price = add_person_price;
		this.discountRate = discountRate;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getLicenseNo() {
		return licenseNo;
	}

	public void setLicenseNo(int licenseNo) {
		this.licenseNo = licenseNo;
	}

	public String getroomName() {
		return roomName;
	}

	public void setroomName(String roomName) {
		this.roomName = roomName;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getRoomContent() {
		return roomContent;
	}

	public void setRoomContent(String roomContent) {
		this.roomContent = roomContent;
	}

	public int getMinNo() {
		return minNo;
	}

	public void setMinNo(int minNo) {
		this.minNo = minNo;
	}

	public int getMaxNo() {
		return maxNo;
	}

	public void setMaxNo(int maxNo) {
		this.maxNo = maxNo;
	}

	public int getOff_season_price() {
		return off_season_price;
	}

	public void setOff_season_price(int off_season_price) {
		this.off_season_price = off_season_price;
	}

	public int getOn_season_price() {
		return on_season_price;
	}

	public void setOn_season_price(int on_season_price) {
		this.on_season_price = on_season_price;
	}

	public int getWeek_extra_price() {
		return week_extra_price;
	}

	public void setWeek_extra_price(int week_extra_price) {
		this.week_extra_price = week_extra_price;
	}

	public int getAdd_person_price() {
		return add_person_price;
	}

	public void setAdd_person_price(int add_person_price) {
		this.add_person_price = add_person_price;
	}

	public double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return roomNo + ", " + licenseNo + ", " + roomName + ", " + option + ", " + roomContent + ", " + minNo + ", " + maxNo + ", " + 
				 off_season_price + ", " + on_season_price + ", " + week_extra_price + ", " + add_person_price + ", " + 
				 discountRate;
	}
}
