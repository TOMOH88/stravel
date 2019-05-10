package com.travelmaker.stravel.support.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class FaqVo implements Serializable{
	private static final long serialVersionUID = 6374358613109583909L;
	
	private int faq_no;
	private String faq_categorycode;
	private String faq_title;
	private String faq_content;
	private String faq_writer;
	private String rename_ffilename;
	private Date faq_date;
	private String faq_deletestatus;
	
	public FaqVo() {}

	public FaqVo(int faq_no, String faq_categorycode, String faq_title, String faq_content, String faq_writer,
			String rename_filename, Date faq_date, String faq_deletestatus) {
		super();
		this.faq_no = faq_no;
		this.faq_categorycode = faq_categorycode;
		this.faq_title = faq_title;
		this.faq_content = faq_content;
		this.faq_writer = faq_writer;
		this.rename_ffilename = rename_filename;
		this.faq_date = faq_date;
		this.faq_deletestatus = faq_deletestatus;
	}

	public int getFaq_no() {
		return faq_no;
	}

	public void setFaq_no(int faq_no) {
		this.faq_no = faq_no;
	}

	public String getFaq_categorycode() {
		return faq_categorycode;
	}

	public void setFaq_categorycode(String faq_categorycode) {
		this.faq_categorycode = faq_categorycode;
	}

	public String getFaq_title() {
		return faq_title;
	}

	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}

	public String getFaq_writer() {
		return faq_writer;
	}

	public void setFaq_writer(String faq_writer) {
		this.faq_writer = faq_writer;
	}

	public String getRename_ffilename() {
		return rename_ffilename;
	}

	public void setRename_ffilename(String rename_ffilename) {
		this.rename_ffilename = rename_ffilename;
	}

	public Date getFaq_date() {
		return faq_date;
	}

	public void setFaq_date(Date faq_date) {
		this.faq_date = faq_date;
	}

	public String getFaq_deletestatus() {
		return faq_deletestatus;
	}

	public void setFaq_deletestatus(String faq_deletestatus) {
		this.faq_deletestatus = faq_deletestatus;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Faq [faq_no=" + faq_no + ", faq_categorycode=" + faq_categorycode + ", faq_title=" + faq_title
				+ ", faq_content=" + faq_content + ", faq_writer=" + faq_writer + ", rename_ffilename=" + rename_ffilename
				+ ", faq_date=" + faq_date + ", faq_deletestatus=" + faq_deletestatus + "]";
	}
}
