package com.mc.enterprise.dto;

import java.util.Date;

public class EnterpriseDto {
	private int no;
	private int brNo;
	private String companyName;
	private String name;
	private String address;
	private String contactDetails;
	private String email;
	private String pwd;
	private Date createDate;
	
	public EnterpriseDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public EnterpriseDto(int no, int brNo, String companyName, String name, String address, String contactDetails,
			String email, String pwd, Date createDate) {
		super();
		this.no = no;
		this.brNo = brNo;
		this.companyName = companyName;
		this.name = name;
		this.address = address;
		this.contactDetails = contactDetails;
		this.email = email;
		this.pwd = pwd;
		this.createDate = createDate;
	}


	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getBrNo() {
		return brNo;
	}

	public void setBrNo(int brNo) {
		this.brNo = brNo;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactDetails() {
		return contactDetails;
	}

	public void setContactDetails(String contactDetails) {
		this.contactDetails = contactDetails;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	@Override
	public String toString() {
		return "EnterpriseDto [no=" + no + ", brNo=" + brNo + ", companyName=" + companyName + ", name=" + name
				+ ", address=" + address + ", contactDetails=" + contactDetails + ", email=" + email + ", pwd=" + pwd
				+ ", createDate=" + createDate + "]";
	}
	
	
	
}
