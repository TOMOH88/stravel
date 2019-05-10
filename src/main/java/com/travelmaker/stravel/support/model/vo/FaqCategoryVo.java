package com.travelmaker.stravel.support.model.vo;

import java.io.Serializable;

public class FaqCategoryVo implements Serializable{

	private static final long serialVersionUID = -5124183801122144980L;
	private String faq_categorycode;
	private String faq_categoryname;
	public FaqCategoryVo() {
		super();
	}
	public FaqCategoryVo(String faq_categorycode, String faq_categoryname) {
		super();
		this.faq_categorycode = faq_categorycode;
		this.faq_categoryname = faq_categoryname;
	}
	public String getFaq_categorycode() {
		return faq_categorycode;
	}
	public void setFaq_categorycode(String faq_categorycode) {
		this.faq_categorycode = faq_categorycode;
	}
	public String getFaq_categoryname() {
		return faq_categoryname;
	}
	public void setFaq_categoryname(String faq_categoryname) {
		this.faq_categoryname = faq_categoryname;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "FaqCategoryVo [faq_categorycode=" + faq_categorycode + ", faq_categoryname=" + faq_categoryname + "]";
	}
	
	
	
}
