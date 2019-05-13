package com.travelmaker.stravel.support.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;
@Data
public class QnaVo implements Serializable{


	private static final long serialVersionUID = -7961378957952681895L;
	private int qna_no;
	private String qna_title;
	private String qna_content;
	private String qna_writer;
	private String rename_qfilename;
	private Date qna_date;
	private String qna_status;
	private String qna_answer;
	private Date qna_answerdate;
	private String rename_afilename;
	public QnaVo() {
		super();
	}
	public QnaVo(int qna_no, String qna_title, String qna_content, String qna_writer, String rename_qfilename,
			Date qna_date, String qna_status, String qna_answer, Date qna_answerdate, String rename_afilename) {
		super();
		this.qna_no = qna_no;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_writer = qna_writer;
		this.rename_qfilename = rename_qfilename;
		this.qna_date = qna_date;
		this.qna_status = qna_status;
		this.qna_answer = qna_answer;
		this.qna_answerdate = qna_answerdate;
		this.rename_afilename = rename_afilename;
	}
	public int getQna_no() {
		return qna_no;
	}
	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_writer() {
		return qna_writer;
	}
	public void setQna_writer(String qna_writer) {
		this.qna_writer = qna_writer;
	}
	public String getRename_qfilename() {
		return rename_qfilename;
	}
	public void setRename_qfilename(String rename_qfilename) {
		this.rename_qfilename = rename_qfilename;
	}
	public Date getQna_date() {
		return qna_date;
	}
	public void setQna_date(Date qna_date) {
		this.qna_date = qna_date;
	}
	public String getQna_status() {
		return qna_status;
	}
	public void setQna_status(String qna_status) {
		this.qna_status = qna_status;
	}
	public String getQna_answer() {
		return qna_answer;
	}
	public void setQna_answer(String qna_answer) {
		this.qna_answer = qna_answer;
	}
	public Date getQna_answerdate() {
		return qna_answerdate;
	}
	public void setQna_answerdate(Date qna_answerdate) {
		this.qna_answerdate = qna_answerdate;
	}
	public String getRename_afilename() {
		return rename_afilename;
	}
	public void setRename_afilename(String rename_afilename) {
		this.rename_afilename = rename_afilename;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "QnaVo [qna_no=" + qna_no + ", qna_title=" + qna_title + ", qna_content=" + qna_content + ", qna_writer="
				+ qna_writer + ", rename_qfilename=" + rename_qfilename + ", qna_date=" + qna_date + ", qna_status="
				+ qna_status + ", qna_answer=" + qna_answer + ", qna_answerdate=" + qna_answerdate
				+ ", rename_afilename=" + rename_afilename + "]";
	}
	
	
}
