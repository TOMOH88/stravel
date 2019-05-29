package com.travelmaker.stravel.reservation.model.vo;

import java.io.Serializable;
import java.sql.Date;


public class Reservation implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 11113L;
	
	
	private int rsv_no ;//예약번호
	private int user_no;//유저번호
	private String user_name;//유저이름
	private int room_no;//룸 번호
	private String room_name;//객실명
	private Date check_in;//체크인
	private Date check_out;//체크아웃
	private String rsv_status;//예약현황
	private String enter_room;//입실현황
	private Date rsv_date;//예약날짜
	private int member;//입실인원
	private int total_price;//총결제가격
	private int owner_no;//
	public Reservation() {}

	



	public Reservation(int rsv_no, int user_no, String user_name, int room_no, String room_name, Date check_in,
			Date check_out, String rsv_status, String enter_room, Date rsv_date, int member, int total_price,
			int owner_no) {
		super();
		this.rsv_no = rsv_no;
		this.user_no = user_no;
		this.user_name = user_name;
		this.room_no = room_no;
		this.room_name = room_name;
		this.check_in = check_in;
		this.check_out = check_out;
		this.rsv_status = rsv_status;
		this.enter_room = enter_room;
		this.rsv_date = rsv_date;
		this.member = member;
		this.total_price = total_price;
		this.owner_no = owner_no;
	}





	public int getRsv_no() {
		return rsv_no;
	}





	public void setRsv_no(int rsv_no) {
		this.rsv_no = rsv_no;
	}





	public int getUser_no() {
		return user_no;
	}





	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}





	public String getUser_name() {
		return user_name;
	}





	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}





	public int getRoom_no() {
		return room_no;
	}





	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}





	public String getRoom_name() {
		return room_name;
	}





	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}





	public Date getCheck_in() {
		return check_in;
	}





	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}





	public Date getCheck_out() {
		return check_out;
	}





	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}





	public String getRsv_status() {
		return rsv_status;
	}





	public void setRsv_status(String rsv_status) {
		this.rsv_status = rsv_status;
	}





	public String getEnter_room() {
		return enter_room;
	}





	public void setEnter_room(String enter_room) {
		this.enter_room = enter_room;
	}





	public Date getRsv_date() {
		return rsv_date;
	}





	public void setRsv_date(Date rsv_date) {
		this.rsv_date = rsv_date;
	}





	public int getMember() {
		return member;
	}





	public void setMember(int member) {
		this.member = member;
	}





	public int getTotal_price() {
		return total_price;
	}





	public void setTotal_price(int total_price) {
		this.total_price = total_price;
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





	@Override
	public String toString() {
		return  rsv_no +", "+ user_no +", " +user_name +", "+ room_no +", " + room_name + ", "+ check_in +", "+  check_out +", "+  rsv_status +", "+ 
				 enter_room +", "+   rsv_date +", "+   member +", "+   total_price;
	}
}
