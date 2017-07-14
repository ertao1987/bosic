package com.bosic.school.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@SequenceGenerator(name="generator", sequenceName="students_seq", initialValue=1, allocationSize=1)
	@GeneratedValue(generator="generator", strategy=GenerationType.SEQUENCE)
	@Column
	private Long id;
	@Column(name="student_number")
	private String studentNumber;
	@Column(name="student_name")
	private String studentName;
	@Column
	private String gender;
	@Column
	private Date birthday;
	@Column
	private String email;
	@Column
	private String mobile;
	@Column
	private String address;
	@Column
	private String city;
	@Column
	private String province;

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String studentNumber, String studentName, String gender, Date birthday, String email, String mobile,
			String address, String city, String province) {
		super();
		this.studentNumber = studentNumber;
		this.studentName = studentName;
		this.gender = gender;
		this.birthday = birthday;
		this.email = email;
		this.mobile = mobile;
		this.address = address;
		this.city = city;
		this.province = province;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(String studentNumber) {
		this.studentNumber = studentNumber;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentNumber=" + studentNumber + ", studentName=" + studentName + ", gender="
				+ gender + ", birthday=" + birthday + ", email=" + email + ", mobile=" + mobile + ", address=" + address
				+ ", city=" + city + ", province=" + province + "]";
	}
}
