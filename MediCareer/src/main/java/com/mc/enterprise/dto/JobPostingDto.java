package com.mc.enterprise.dto;

import java.util.Date;

public class JobPostingDto {

	private int no;
	private String title;
	private String type;
	private String Location_name;
	private String working_hour;
	private String salary;
	private String gender;
	private String age;
	private String education;
	private String career;
	private String primary_duties1;
	private String primary_duties2;
	private String primary_duties3;
	private String recruiter_name;
	private String recruiter_phone;
	private String recruiter_email;
	private String recruiter_process;
	private String employee_benefit;
	private String address;
	private String application_period;
	private Date create_date;
	private int em_no;
	private String em_name;
	
	public JobPostingDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public JobPostingDto(int no, String title, String type, String location_name, String working_hour, String salary,
			String gender, String age, String education, String career, String primary_duties1, String primary_duties2,
			String primary_duties3, String recruiter_name, String recruiter_phone, String recruiter_email,
			String recruiter_process, String employee_benefit, String address, String application_period,
			Date create_date, int em_no, String em_name) {
		super();
		this.no = no;
		this.title = title;
		this.type = type;
		Location_name = location_name;
		this.working_hour = working_hour;
		this.salary = salary;
		this.gender = gender;
		this.age = age;
		this.education = education;
		this.career = career;
		this.primary_duties1 = primary_duties1;
		this.primary_duties2 = primary_duties2;
		this.primary_duties3 = primary_duties3;
		this.recruiter_name = recruiter_name;
		this.recruiter_phone = recruiter_phone;
		this.recruiter_email = recruiter_email;
		this.recruiter_process = recruiter_process;
		this.employee_benefit = employee_benefit;
		this.address = address;
		this.application_period = application_period;
		this.create_date = create_date;
		this.em_no = em_no;
		this.em_name = em_name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getLocation_name() {
		return Location_name;
	}

	public void setLocation_name(String location_name) {
		Location_name = location_name;
	}

	public String getWorking_hour() {
		return working_hour;
	}

	public void setWorking_hour(String working_hour) {
		this.working_hour = working_hour;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getPrimary_duties1() {
		return primary_duties1;
	}

	public void setPrimary_duties1(String primary_duties1) {
		this.primary_duties1 = primary_duties1;
	}

	public String getPrimary_duties2() {
		return primary_duties2;
	}

	public void setPrimary_duties2(String primary_duties2) {
		this.primary_duties2 = primary_duties2;
	}

	public String getPrimary_duties3() {
		return primary_duties3;
	}

	public void setPrimary_duties3(String primary_duties3) {
		this.primary_duties3 = primary_duties3;
	}

	public String getRecruiter_name() {
		return recruiter_name;
	}

	public void setRecruiter_name(String recruiter_name) {
		this.recruiter_name = recruiter_name;
	}

	public String getRecruiter_phone() {
		return recruiter_phone;
	}

	public void setRecruiter_phone(String recruiter_phone) {
		this.recruiter_phone = recruiter_phone;
	}

	public String getRecruiter_email() {
		return recruiter_email;
	}

	public void setRecruiter_email(String recruiter_email) {
		this.recruiter_email = recruiter_email;
	}

	public String getRecruiter_process() {
		return recruiter_process;
	}

	public void setRecruiter_process(String recruiter_process) {
		this.recruiter_process = recruiter_process;
	}

	public String getEmployee_benefit() {
		return employee_benefit;
	}

	public void setEmployee_benefit(String employee_benefit) {
		this.employee_benefit = employee_benefit;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getApplication_period() {
		return application_period;
	}

	public void setApplication_period(String application_period) {
		this.application_period = application_period;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}

	public int getEm_no() {
		return em_no;
	}

	public void setEm_no(int em_no) {
		this.em_no = em_no;
	}

	public String getEm_name() {
		return em_name;
	}

	public void setEm_name(String em_name) {
		this.em_name = em_name;
	}

	@Override
	public String toString() {
		return "JobPostingDto [no=" + no + ", title=" + title + ", type=" + type + ", Location_name=" + Location_name
				+ ", working_hour=" + working_hour + ", salary=" + salary + ", gender=" + gender + ", age=" + age
				+ ", education=" + education + ", career=" + career + ", primary_duties1=" + primary_duties1
				+ ", primary_duties2=" + primary_duties2 + ", primary_duties3=" + primary_duties3 + ", recruiter_name="
				+ recruiter_name + ", recruiter_phone=" + recruiter_phone + ", recruiter_email=" + recruiter_email
				+ ", recruiter_process=" + recruiter_process + ", employee_benefit=" + employee_benefit + ", address="
				+ address + ", application_period=" + application_period + ", create_date=" + create_date + ", em_no="
				+ em_no + ", em_name=" + em_name + "]";
	}
	
	
}
