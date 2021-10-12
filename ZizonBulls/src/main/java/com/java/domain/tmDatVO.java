package com.java.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;


public class tmDatVO {
   private int tmPostNum;
   private String cusId;
   private String tmDat;
   private String tmDatNum;
   @JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy-MM-dd")
   private Date tmTime;
   
   
public int getTmPostNum() {
	return tmPostNum;
}
public void setTmPostNum(int tmPostNum) {
	this.tmPostNum = tmPostNum;
}
public String getCusId() {
	return cusId;
}
public void setCusId(String cusId) {
	this.cusId = cusId;
}
public String getTmDat() {
	return tmDat;
}
public void setTmDat(String tmDat) {
	this.tmDat = tmDat;
}
public String getTmDatNum() {
	return tmDatNum;
}
public void setTmDatNum(String tmDatNum) {
	this.tmDatNum = tmDatNum;
}
public Date getTmTime() {
	return tmTime;
}
public void setTmTime(Date tmTime) {
	this.tmTime = tmTime;
}

   
   
   
   
   
   
   
}