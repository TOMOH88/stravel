package com.travelmaker.stravel.calendar.model.vo;

import java.io.Serializable;

public class ViewOwner implements Serializable{
	private static final long serialVersionUID = 1222323232L;
	
	private String owner_companyname;
	private String owner_address;
	private int min_no;
 	private int max_no;
	
	public ViewOwner() {}

	public ViewOwner(String owner_companyname, String owner_address, int min_no, int max_no) {
		super();
		this.owner_companyname = owner_companyname;
		this.owner_address = owner_address;
		this.min_no = min_no;
		this.max_no = max_no;
	}

	public String getOwner_companyname() {
		return owner_companyname;
	}

	public void setOwner_companyname(String owner_companyname) {
		this.owner_companyname = owner_companyname;
	}

	public String getOwner_address() {
		return owner_address;
	}

	public void setOwner_address(String owner_address) {
		this.owner_address = owner_address;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ViewOwner [owner_companyname=" + owner_companyname + ", owner_address=" + owner_address + ", min_no="
				+ min_no + ", max_no=" + max_no + "]";
	}
}
