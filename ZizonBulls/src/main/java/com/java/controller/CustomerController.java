package com.java.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.java.domain.CustomerVO;
import com.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	// 컨트롤러 통해서 리턴되면 무조건 파일경로 WEB-INF에서 시작한다. 
	@RequestMapping(value="{url}.do")
	public String customerJoin(@PathVariable String url) {
		System.out.println("호출");
		
		return "/customer/"+url;
	}
	
	@RequestMapping(value="index.do")
	public String goToIndex() {
		System.out.println("index 페이지 호출");
		
		return "redirect:/";
	}
	
	@RequestMapping(value="forgotLoginInfo.do")
	@ResponseBody
	public CustomerVO forgotInfo(CustomerVO vo) {
		System.out.println(vo.getEmail());
		System.out.println(vo.getCusId()); // null
		System.out.println(vo.getPass()); // null
		// select cusid, pass from customer1 where email = #{email};
		CustomerVO result = customerService.getCustomerIdPwd(vo);
		System.out.println(vo.getEmail());
		System.out.println("디비 갔다온 후" + vo.getCusId()); // null
		System.out.println("디비 갔다온 후" + vo.getPass()); // null
		System.out.println("디비 갔다온 후 " + result.getEmail());
		System.out.println("디비 갔다온 후" + result.getCusId()); //email에 따른 값
		System.out.println("디비 갔다온 후" + result.getPass()); //email에 따른 값
//		if (result == null || (result.getCusId() == null && result.getPass() == null)) {
//			// db에 존재하지 않는 이메일, 틀린 이메일이라는 팝업
//			
//		} else if(result.getCusId() == vo.getCusId()) {
//			// 
//		} else if(result.getPass() == vo.getPass()) {
//			
//		}
//		<a href="../mail/send3.do"> 이메일 보내기 </a>
		
//		return "/customer/customerLogin";
//		return "redirect:/customer/customerLogin.do"; // 얘는 왜 오류나지
		return result;
	}
	
	
	@RequestMapping("login.do")
	public String login(CustomerVO vo, HttpSession session) {
//		System.out.println(customerService.idCheck_Login.getCusId(vo));
		System.out.println("아이디: " + vo.getCusId() + "/n");
		System.out.println("비번: " + vo.getPass() + "/n");
		System.out.println("아이디체크 " + customerService.idCheck_Login(vo));
//		customerService.idCheck_Login(vo);
		CustomerVO result = customerService.idCheck_Login(vo);
		if(result == null || result.getCusId() == null) {
			System.out.println("로그인 실패");
			
			return "/customer/customerLogin";
		}else {
			System.out.println("[" + result.getCusId() + "] 로그인 접속");
		
			session.setAttribute("sessionTime", new Date().toLocaleString());
			session.setAttribute("cusName", result.getCusName());
			session.setAttribute("cusId", result.getCusId());
			session.setAttribute("pass", result.getPass());
			session.setAttribute("email", result.getEmail());
		}
		return "redirect:/";
	}
	
	@RequestMapping("memberInfo.do")
	public String memberInfo(CustomerVO vo) {
		
		return "/customer/customerInfo";
	}
	
	@RequestMapping(value="customerInsert.do")
	public ModelAndView customerInsert(CustomerVO vo, HttpSession session) {
		System.out.println("/customerInsert.do 호출");
		System.out.println("customerInsert.do" + vo.getCusName());
		System.out.println("customerInsert.do" + vo.getEmail());
		System.out.println("customerInsert.do" + vo.getPass());
		System.out.println("customerInsert.do" + vo.getPoints());
		int result = customerService.customerInsert(vo);
		
		String message = " 가입되지 않았습니다. ";
		
		if(result > 0) {
			message = vo.getCusName() + "님, 가입을 축하드립니다.";
			login(vo, session);
		}
		
		// model 단점은 값만 옮길 수 있고, 화면은 옮길 수가 없음. 
		// String return을 작성했어야함. 
		
		ModelAndView mv = new ModelAndView();
//		mv.setViewName("customer/customerJoin_ok");
		mv.setViewName("redirect:/");
		mv.addObject("message", message);
		mv.addObject("result", result);
		// 위에 3개가 전부 파라미터값으로 들어가네
		
		return mv;
	}
	
	@RequestMapping(value="fromUpdateCustomerInfo.do")
	public String updateCustomerInfo(CustomerVO vo, HttpSession session) {
		System.out.println(vo.getCusId());
		System.out.println(vo.getPass());
		customerService.updateCustomerInfo(vo);
		
		System.out.println("up >> " + vo.getCusId());
		System.out.println("up >> " + vo.getPass());
		CustomerVO result = customerService.idCheck_Login(vo);
		System.out.println("sel >> " + result.getCusName());
		System.out.println("sel >> " + result.getCusId());
		System.out.println("sel >> " + result.getPass());
		System.out.println("sel >> " + result.getEmail());
		
		
		session.setAttribute("sessionTime", new Date().toLocaleString());
		session.setAttribute("cusName", result.getCusName());
		session.setAttribute("cusId", result.getCusId());
		session.setAttribute("pass", result.getPass());
		session.setAttribute("email", result.getEmail());
		
		return "redirect:customerInfo.do";
	}
	
	@RequestMapping(value="/fromDeleteCustomerInfo.do")
	public String deleteCustomerInfo(CustomerVO vo, HttpSession session) {
		System.out.println("회원정보 삭제");
		customerService.deleteCustomerInfo(vo);
//		session.invalidate(); // 세션 지워줌으로써 index.jsp에서 바로 login 페이지로
		session.removeAttribute("sessionTime");
		session.removeAttribute("cusName");
		session.removeAttribute("cusId");
		session.removeAttribute("pass");
		session.removeAttribute("email");
		
		return "redirect:/";
	}
	
	 @RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
	   @ResponseBody
	   public int idCheck_Join(CustomerVO vo, HttpServletRequest req) {
	      System.out.println("Controller 성공");
	      System.out.println(vo.getCusId());
	      CustomerVO resultVO = customerService.idCheck_Join(vo);
	         
	       int result = 1;
	         
	       if (resultVO != null) result = 0;
	       return result;
	   }
	
}
