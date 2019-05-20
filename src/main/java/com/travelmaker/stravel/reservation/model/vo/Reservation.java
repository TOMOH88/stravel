package com.travelmaker.stravel.reservation.model.vo;

import java.io.Serializable;
import java.util.Date;


public class Reservation implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 11113L;
	
	
	private int rsv_no ;//예약번호
	
	private Date check_in;//체크인
	private Date check_out;//체크아웃
	private String rsv_status;//예약현황
	private String enter_room;//입실현황
	private Date rsv_date;//예약날짜
	private int member;//입실인원
	private int total_price;//총결제가격
	
	public Reservation() {}

	public Reservation(int rsv_no, Date check_in, Date check_out, String rsv_status, String enter_room, Date rsv_date,
			int member, int total_price) {
		super();
		this.rsv_no = rsv_no;
		this.check_in = check_in;
		this.check_out = check_out;
		this.rsv_status = rsv_status;
		this.enter_room = enter_room;
		this.rsv_date = rsv_date;
		this.member = member;
		this.total_price = total_price;
	}

	public int getRsv_no() {
		return rsv_no;
	}

	public void setRsv_no(int rsv_no) {
		this.rsv_no = rsv_no;
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

	public String getrsv_status() {
		return rsv_status;
	}

	public void setrsv_status(String rsv_status) {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}