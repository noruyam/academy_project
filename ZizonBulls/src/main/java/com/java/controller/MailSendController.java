package com.java.controller;

import java.io.UnsupportedEncodingException;

import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.mail.internet.MimeUtility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.domain.CustomerVO;

@Controller
public class MailSendController {
	// MailSender - SimpleMailMessage (메일제목, 단순 텍스트 내용)
	
	// JavaMailSender - MimeMessage(Java Mail API), JavaMailSenderImpl(인터페이스 구현체)
	// MailSender인터페이스 상속받음
	// 파일 첨부 또는 HTML로 구성되어 있을 경우 사용
	// createMimeMessage()
	
	// MimeMessageHelper 이용 파일 첨부 - DataSource 사용
	// new MimeMessageHelper(MimeMessage 객체, Multipart 여부, 인코딩 타입)
	// MimeMessageHelper.addAttachment() -> 파일을 메일에 첨부
	// MimeUtility -> 문장 인코딩
	
	
	@Autowired
	MailSender sender; // 타입으로 받을 수 있음
	
	@Autowired
	JavaMailSender javaMailSender;
	
	@RequestMapping("/mail/send")
	public String sendMail() {
		
		// 메일 내용 설정
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo("songverlining94@gmail.com");
		message.setFrom("songverlining94@gmail.com");
		message.setSubject("Test Subject");
		message.setText("Test Body");
		
		sender.send(message);
		
		return "send OK";
	}
	
	@ResponseBody
	@RequestMapping("/mail/send2")
	public String sendJavaMailSender() {
		
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			// 메일 제목설정
			message.setSubject("처음 보내는 JavaMailSender", "UTF-8");
			// html 메일 내용
			String htmlStr = "<h1 style=\"color:blue\"> 안녕안녕 </h1><br>"
							+ "<a href=\"http://www/naver/com\"> 네이버 </a>";
			// 내용 설정
			message.setText(htmlStr, "UTF-8", "html"); // 인코딩, 타입 정할 수 있게 되었음!
			// to 설정
			message.addRecipient(RecipientType.TO, new InternetAddress("songverlining94@gmail.com", "포크", "UTF-8"));
		
			javaMailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return "send OK";
	}
	
	// 파일 첨부해서 전송
	@ResponseBody
	@RequestMapping("mail/send3.do")
	public String sendFileAttach(CustomerVO vo) {
		
		MimeMessage message = javaMailSender.createMimeMessage();
		
		try {
			
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			// 제목
			messageHelper.setSubject("[제목]");
			// 내용 html
			String htmlStr = "<h1>파일 다운받아 어서 </h1>";
			// 내용설정
			// multipart/form-data is one of the value of enctype attribute, which is used in form element that have a file upload.
			// multi-part means form data divides into multiple parts and send to server.
			// enctype property is the MIME type of content that is used to submit the form to the server.
			// possible values are : application/x-www-form-urlencoded : The initial default type.
			// multipart/form-data : The type that allows file <input> element(s) to upload file data.
			// text/plain : A type introduced in HTML5.
			messageHelper.setText(htmlStr, true);
			// To 설정
			messageHelper.setTo(new InternetAddress("newhyun33@gmail.com", "콜라맨", "UTF-8"));
			messageHelper.setTo(new InternetAddress("songverlining94@gmail.com", "포크", "UTF-8"));
			// 첨부할 파일 객체 생성
			DataSource dataSource = new FileDataSource("C:\\Users\\User\\Desktop\\lezgiddit.txt"); // 절대경로
			// MimeMessageHelper 파일 객체를 추가
			messageHelper.addAttachment(MimeUtility.encodeText("lezgiddit.txt", "UTF-8", "B"), dataSource);
			
			//전송 
			javaMailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return "send OK";
	}
	
//	@ResponseBody
//	@RequestMapping("/mail/send2")
//	public String sendJavaMailSender() throws UnsupportedEncodingException {
//		
//		MimeMessage message = javaMailSender.createMimeMessage();
//		try {
//			// 메일 제목설정
//			message.setSubject("처음 보내는 JavaMailSender", "UTF-8");
//			// html 메일 내용
//			String htmlStr = "<h1 style=\"color:blue\"> 안녕안녕 </h1><br>"
//							+ "<a href=\"http://www/naver/com\"> 네이버 </a>";
//			// 내용 설정
//			message.setText(htmlStr, "UTF-8", "html"); // 인코딩, 타입 정할 수 있게 되었음!
//			// to 설정
//			message.addRecipient(RecipientType.TO, InternetAddress("songverlining94@gmail.com", "포크", "UTF-8"));
//		
//			javaMailSender.send(message);
//			
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		}
//		
//		return "send OK";
//	}
//	public InternetAddress InternetAddress(String address, String personalName, String charset) throws UnsupportedEncodingException {
//		InternetAddress iAddress = new InternetAddress(address, personalName, charset);
//		return iAddress;
//	}
//	private Address InternetAddress(String string, String string2, String string3) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	
	
}
