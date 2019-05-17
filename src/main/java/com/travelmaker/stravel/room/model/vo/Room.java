package com.travelmaker.stravel.room.model.vo;

import java.io.Serializable;

public class Room implements Serializable {
	
	/**
	 * 
	 */


	private static final long serialVersionUID = 1111L;
	
	private int room_no;//객실번호
	private int owner_no;//사업자번호
	private String room_name;//객실명
	private String room_option;//편의시설
	private String room_content;//객실정보
	private int min_no;//기본인원
	private int max_no;//총인원
	private int off_season_price;//비수기가격
	private int on_season_price;//성수기가격
	private int week_extra_price;//주말추가가격
	private int add_person_price;//인원추가가격
	private double discountrate;//할인율
	
	public Room() {}

	public Room(int room_no, int owner_no, String room_name, String room_option, String room_content, int min_no,
			int max_no, int off_season_price, int on_season_price, int week_extra_price, int add_person_price,
			double discountrate) {
		super();
		this.room_no = room_no;
		this.owner_no = owner_no;
		this.room_name = room_name;
		this.room_option = room_option;
		this.room_content = room_content;
		this.min_no = min_no;
		this.max_no = max_no;
		this.off_season_price = off_season_price;
		this.on_season_price = on_season_price;
		this.week_extra_price = week_extra_price;
		this.add_person_price = add_person_price;
		this.discountrate = discountrate;
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

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_option() {
		return room_option;
	}

	public void setRoom_option(String room_option) {
		this.room_option = room_option;
	}

	public String getRoom_content() {
		return room_content;
	}

	public void setRoom_content(String room_content) {
		this.room_content = room_content;
	}

	public int getMin_no() {
		return min_no;
	}

	public void setMin_no(int min_no) {
		this.min_no = min_no;
	}

	public int getMax_no() {
		return max_no;
	}

	public void setMax_no(int max_no) {
		this.max_no = max_no;
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

	public double getDiscountrate() {
		return discountrate;
	}

	public void setDiscountrate(double discountrate) {
		this.discountrate = discountrate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}