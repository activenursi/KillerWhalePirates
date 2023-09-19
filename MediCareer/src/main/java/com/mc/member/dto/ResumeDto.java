package com.mc.member.dto;

import java.util.Date;

public class ResumeDto {

   private int no;
   private String name;
   private String career;
   private String salary;
   private String gender;
   private Date birth_date;
   private String phone_no;
   private String email;
   private String address;
   private String final_academic_background;
   private String educational_institute;
   private String major;
   private String graduation_status;
   private Date entrance_date;
   private Date graduation_date;
   private String license_name;
   private String license_issuing_agency;
   private Date passing_date;
   private String self_introduction;
   private int cm_no;
   private Date write_date;
   
   
   



   public ResumeDto() {
      super();
      // TODO Auto-generated constructor stub
   }



   public ResumeDto(int no, String name, String career, String salary, String gender, Date birth_date, String phone_no,
         String email, String address, String final_academic_background, String educational_institute, String major,
         String graduation_status, Date entrance_date, Date graduation_date, String license_name,
         String license_issuing_agency, Date passing_date, String self_introduction, int cm_no , Date write_date) {
      super();
      this.no = no;
      this.name = name;
      this.career = career;
      this.salary = salary;
      this.gender = gender;
      this.birth_date = birth_date;
      this.phone_no = phone_no;
      this.email = email;
      this.address = address;
      this.final_academic_background = final_academic_background;
      this.educational_institute = educational_institute;
      this.major = major;
      this.graduation_status = graduation_status;
      this.entrance_date = entrance_date;
      this.graduation_date = graduation_date;
      this.license_name = license_name;
      this.license_issuing_agency = license_issuing_agency;
      this.passing_date = passing_date;
      this.self_introduction = self_introduction;
      this.cm_no = cm_no;
      this.write_date = write_date;
   }

   public Date getWrite_date() {
      return write_date;
   }
   
   
   
   public void setWrite_date(Date create_date) {
      this.write_date = create_date;
   }


   public int getNo() {
      return no;
   }



   public void setNo(int no) {
      this.no = no;
   }



   public String getName() {
      return name;
   }



   public void setName(String name) {
      this.name = name;
   }



   public String getCareer() {
      return career;
   }



   public void setCareer(String career) {
      this.career = career;
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



   public Date getBirth_date() {
      return birth_date;
   }



   public void setBirth_date(Date birth_date) {
      this.birth_date = birth_date;
   }



   public String getPhone_no() {
      return phone_no;
   }



   public void setPhone_no(String phone_no) {
      this.phone_no = phone_no;
   }



   public String getEmail() {
      return email;
   }



   public void setEmail(String email) {
      this.email = email;
   }



   public String getAddress() {
      return address;
   }



   public void setAddress(String address) {
      this.address = address;
   }



   public String getFinal_academic_background() {
      return final_academic_background;
   }



   public void setFinal_academic_background(String final_academic_background) {
      this.final_academic_background = final_academic_background;
   }



   public String getEducational_institute() {
      return educational_institute;
   }



   public void setEducational_institute(String educational_institute) {
      this.educational_institute = educational_institute;
   }



   public String getMajor() {
      return major;
   }



   public void setMajor(String major) {
      this.major = major;
   }



   public String getGraduation_status() {
      return graduation_status;
   }



   public void setGraduation_status(String graduation_status) {
      this.graduation_status = graduation_status;
   }



   public Date getEntrance_date() {
      return entrance_date;
   }



   public void setEntrance_date(Date entrance_date) {
      this.entrance_date = entrance_date;
   }



   public Date getGraduation_date() {
      return graduation_date;
   }



   public void setGraduation_date(Date graduation_date) {
      this.graduation_date = graduation_date;
   }



   public String getLicense_name() {
      return license_name;
   }



   public void setLicense_name(String license_name) {
      this.license_name = license_name;
   }



   public String getLicense_issuing_agency() {
      return license_issuing_agency;
   }



   public void setLicense_issuing_agency(String license_issuing_agency) {
      this.license_issuing_agency = license_issuing_agency;
   }



   public Date getPassing_date() {
      return passing_date;
   }



   public void setPassing_date(Date passing_date) {
      this.passing_date = passing_date;
   }



   public String getSelf_introduction() {
      return self_introduction;
   }



   public void setSelf_introduction(String self_introduction) {
      this.self_introduction = self_introduction;
   }



   public int getCm_no() {
      return cm_no;
   }



   public void setCm_no(int cm_no) {
      this.cm_no = cm_no;
   }



   @Override
   public String toString() {
      return "ResumeDto [no=" + no + ", name=" + name + ", career=" + career + ", salary=" + salary + ", gender="
            + gender + ", birth_date=" + birth_date + ", phone_no=" + phone_no + ", email=" + email + ", address="
            + address + ", final_academic_background=" + final_academic_background + ", educational_institute="
            + educational_institute + ", major=" + major + ", graduation_status=" + graduation_status
            + ", entrance_date=" + entrance_date + ", graduation_date=" + graduation_date + ", license_name="
            + license_name + ", license_issuing_agency=" + license_issuing_agency + ", passing_date=" + passing_date
            + ", self_introduction=" + self_introduction + ", cm_no=" + cm_no + ", write_date=" + write_date + "]";
   }

   
}