package com.mc.board.dto;

import java.util.Date;


public class Cs_BoardDto {

	private int no;
	private String category;
	private String writer;
	private int cm_no;
	private String title;
	private String content;
	private String replyer;
	private Date create_date;
	private Date reply_date;
	private String progress;
	
	public Cs_BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cs_BoardDto(int no, String category, String writer, int cm_no, String title, String content, String replyer,
			Date create_date, Date reply_date, String progress) {
		super();
		this.no = no;
		this.category = category;
		this.writer = writer;
		this.cm_no = cm_no;
		this.title = title;
		this.content = content;
		this.replyer = replyer;
		this.create_date = create_date;
		this.reply_date = reply_date;
		this.progress = progress;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getCm_no() {
		return cm_no;
	}

	public void setCm_no(int cm_no) {
		this.cm_no = cm_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReplyer() {
		return replyer;
	}

	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	@Override
	public String toString() {
		return "Cs_BoardDto [no=" + no + ", category=" + category + ", writer=" + writer + ", cm_no=" + cm_no
				+ ", title=" + title + ", content=" + content + ", replyer=" + replyer + ", create_date=" + create_date
				+ ", reply_date=" + reply_date + ", progress=" + progress + "]";
	}
	
	
	
	
}
