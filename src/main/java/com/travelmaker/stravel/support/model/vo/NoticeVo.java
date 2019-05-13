package com.travelmaker.stravel.support.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class NoticeVo implements Serializable {

	private static final long serialVersionUID = 8534210657400853095L;
	private int notice_no;
	private String notice_title;
	private String notice_content;
	private String notice_writer;
	private String originalname_nfilename;
	private String rename_nfilename;
	private Date notice_date;
	private String notice_deletestatus;
	public NoticeVo() {
		super();
	}
	public NoticeVo(int notice_no, String notice_title, String notice_content, String notice_writer,
			String originalname_nfilename, String rename_nfilename, Date notice_date, String notice_deletestatus) {
		super();
		this.notice_no = notice_no;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_writer = notice_writer;
		this.originalname_nfilename = originalname_nfilename;
		this.rename_nfilename = rename_nfilename;
		this.notice_date = notice_date;
		this.notice_deletestatus = notice_deletestatus;
	}
	public int getNotice_no() {
		return notice_no;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public String getOriginalname_nfilename() {
		return originalname_nfilename;
	}
	public void setOriginalname_nfilename(String originalname_nfilename) {
		this.originalname_nfilename = originalname_nfilename;
	}
	public String getRename_nfilename() {
		return rename_nfilename;
	}
	public void setRename_nfilename(String rename_nfilename) {
		this.rename_nfilename = rename_nfilename;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public String getNotice_deletestatus() {
		return notice_deletestatus;
	}
	public void setNotice_deletestatus(String notice_deletestatus) {
		this.notice_deletestatus = notice_deletestatus;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "NoticeVo [notice_no=" + notice_no + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_writer=" + notice_writer + ", originalname_nfilename="
				+ originalname_nfilename + ", rename_nfilename=" + rename_nfilename + ", notice_date=" + notice_date
				+ ", notice_deletestatus=" + notice_deletestatus + "]";
	}
	

}
