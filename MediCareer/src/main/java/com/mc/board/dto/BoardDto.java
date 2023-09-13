package com.mc.board.dto;

import java.util.Date;

//Bean Spec
public class BoardDto {

	private int no;
	private String writer;
	private String title;
	private String content;
	private int view_count;
	private int recommend;
	private Date write_date;
	private Date mod_date;
	private int cm_no;
	
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public BoardDto(int no, String writer, String title, String content, int view_count, int recommend, Date write_date,
			Date mod_date, int cm_no) {
		super();
		this.no = no;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.view_count = view_count;
		this.recommend = recommend;
		this.write_date = write_date;
		this.mod_date = mod_date;
		this.cm_no = cm_no;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public Date getMod_date() {
		return mod_date;
	}

	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}

	public int getCm_no() {
		return cm_no;
	}

	public void setCm_no(int cm_no) {
		this.cm_no = cm_no;
	}

	@Override
	public String toString() {
		return "BoardDto [no=" + no + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", view_count=" + view_count + ", recommend=" + recommend + ", write_date=" + write_date
				+ ", mod_date=" + mod_date + ", cm_no=" + cm_no + "]";
	}
	
	
	
	
	
	
	
}
