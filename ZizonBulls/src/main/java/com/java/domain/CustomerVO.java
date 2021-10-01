package com.java.domain;

import java.util.Date;

public class CustomerVO {

	private String cusId;
	private String pass;
	private String cusName;
	private Date birth;
	private String gender;
	private int ssn;
	private String email;
	private String cusAddr;
	private int cusNumber;
	private String mundab;
	private int busId; // 사업자 등록번호
	private int points;
	
	// 파일첨부를 위한 작업
	// insertBoard에서 선언한 

	public String getCusId() {
		return cusId;
	}

	public void setCusId(String cusId) {
		this.cusId = cusId;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getCusName() {
		return cusName;
	}

	public void setCusName(String cusName) {
		this.cusName = cusName;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getSsn() {
		return ssn;
	}

	public void setSsn(int ssn) {
		this.ssn = ssn;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCusAddr() {
		return cusAddr;
	}

	public void setCusAddr(String cusAddr) {
		this.cusAddr = cusAddr;
	}

	public int getCusNumber() {
		return cusNumber;
	}

	public void setCusNumber(int cusNumber) {
		this.cusNumber = cusNumber;
	}

	public String getMundab() {
		return mundab;
	}

	public void setMundab(String mundab) {
		this.mundab = mundab;
	}

	public int getBusId() {
		return busId;
	}

	public void setBusId(int busId) {
		this.busId = busId;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

}
