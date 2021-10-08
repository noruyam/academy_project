package com.java.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;


public class trashMapVO {
   int tmPostNum;
   private String tmTitle;
   private String tmAddr;
   private String tmContent;
   private String cusId;
   @JsonFormat(shape=JsonFormat.Shape.STRING,pattern="yyyy-MM-dd")
   private Date tmTime;
   private int tmCnt;
   
   private String tmFname;
   private String tmFnameEn;
   
   String tmComment;
   String tmCommentNum;
   
   private Double tmGetLat;
   private Double tmGetLng;
   
   MultipartFile file;

   public MultipartFile getFile() {
      return file;
   }

   public void setFile(MultipartFile file) {
//      this.file = file;
//      System.out.println("setFile");
//      System.out.println(file);
//      // 파일이 업로드가 되면
//      // 파일이 비어있지않을때
//      if (!file.isEmpty()) {
//         this.tmFname = file.getOriginalFilename();
//         System.out.println(">>> vo안에잇는 tmFname : "+tmFname);
//         String fileextension=tmFname.substring(tmFname.lastIndexOf("."));
//         this.tmFnameEn=UUID.randomUUID().toString().replaceAll("-", "")+fileextension;
////         File f = new File("C:\\Users\\qkr26\\git\\last\\ZizonBulls\\src\\main\\webapp\\resources\\trashmappic\\"
////               +tmFnameEn);
////         try {
////            file.transferTo(f);
////         } catch (Exception e) {
////            e.printStackTrace();
////         }
//
//      }
   }

   public int getTmPostNum() {
      return tmPostNum;
   }

   public void setTmPostNum(int tmPostNum) {
      this.tmPostNum = tmPostNum;
   }

   public String getTmTitle() {
      return tmTitle;
   }

   public void setTmTitle(String tmTitle) {
//      System.out.println(">>>>>>>vo안에잇어:"+tmTitle);
      this.tmTitle = tmTitle;
   }

   public String getTmAddr() {
      return tmAddr;
   }

   public void setTmAddr(String tmAddr) {
      this.tmAddr = tmAddr;
   }

   public String getTmContent() {
      return tmContent;
   }

   public void setTmContent(String tmContent) {
      this.tmContent = tmContent;
   }

   public int getTmCnt() {
      return tmCnt;
   }

   public void setTmCnt(int tmCnt) {
      this.tmCnt = tmCnt;
   }

   public String getCusId() {
      return cusId;
   }

   public void setCusId(String cusId) {
      this.cusId = cusId;
   }

   public String getTmFname() {
      return tmFname;
   }

   public void setTmFname(String tmFname) {
      this.tmFname = tmFname;
   }

   public String getTmComment() {
      return tmCommentNum;
   }

   public void setTmComment(String tmComment) {
      this.tmCommentNum = tmComment;
   }

   

   public Date getTmTime() {
      return tmTime;
   }

   public void setTmTime(Date tmTime) {
      this.tmTime = tmTime;
   }

   public String getTmFnameEn() {
      return tmFnameEn;
   }

   public void setTmFnameEn(String tmFnameEn) {
      this.tmFnameEn = tmFnameEn;
   }



   public String getTmCommentNum() {
      return tmCommentNum;
   }

   public void setTmCommentNum(String tmCommentNum) {
      this.tmCommentNum = tmCommentNum;
   }

   public Double getTmGetLat() {
      return tmGetLat;
   }

   public void setTmGetLat(Double tmGetLat) {
      this.tmGetLat = tmGetLat;
   }

   public Double getTmGetLng() {
      return tmGetLng;
   }

   public void setTmGetLng(Double tmGetLng) {
      this.tmGetLng = tmGetLng;
   }

   
   
   
   
   
}