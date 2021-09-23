package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/")
public class MemberController {

	//@Controll라고 작성된 클래스의 메소드는 항상 리턴이 존재합니다
	// void : 시스템이 자동으로 mapping된 경로에서 jsp를 찾아줍니다.
	// String : return을 작성하여 수동으로 경로를 지정해야합니다.
	
	// 현재 메소드는 하는일(특별한 로직)없이 매핑만 하는 경우
//	@RequestMapping(value = {"userJoin.do","userLogin.do"})
//	public void userJoin() {
//		System.out.println("호출");
//		///user/userJoin 경로에 있는 jsp를 찾아줍니다.
//	}
	// /user/userJoin.do
	// {url} = userJoin
	// url 주소 중에 {} 로 감싼부분은 .
	// 하나의 변수처럼 파라미터값처럼 사용을 할수있는데 ?seq=seq
	// 사용하기위해서는 @PathVariable 써야합니다.
	// @PathVariable가 { } 안에 있는 변수명을 가진 값을 가져와줍니다.
	// 그래서 {}안에 있는 변수명과 String 파라미터명은 동일
	
	// 시스템 진행상황상 제일 마지막 실행 된다.
	@RequestMapping(value = "{url}.do")
	public String userJoin(@PathVariable String url) {
		System.out.println("호출");
		return "/user/"+url;
	}
	
	
//	@Autowired
//	private MemberService memberService;
//	
//	
//	@RequestMapping(value = "userInsert.do")
//	public ModelAndView userInsert(MemberVO vo) {
//		
//		System.out.println("/userInsert.do 호출");
//		
//		int result = memberService.userInsert(vo);
//		
//		String message = " 가입되지않았습니다.";
//		
//		if ( result > 0 ) {
//			message = vo.getUserName() + " 님 ,가입을 축하드립니다.";
//		}
//		
//		// model 단점은 값만 옮길수있고, 화면은 옮길수가 없습니다.
//		// String return을 작성해야했었습니다.
//		
//		ModelAndView mv = new ModelAndView();
//		
//		mv.setViewName("user/userJoin_ok");
//		mv.addObject("message", message);
//		mv.addObject("result", result);
//		
//		return mv;
//	}
//	
//	@RequestMapping("login.do")
//	public String login(MemberVO vo,HttpSession session) {
//		System.out.println("login");
//		
//		System.out.println(vo.getUserId());
//		System.out.println(vo.getUserPass());
//		
//		
//		MemberVO result = memberService.idCheck_Login(vo);
//		ModelAndView mv  = new ModelAndView();
//		
//		System.out.println(result.getUserId());
//		
//		if(result == null || result.getUserId() == null) {
//			mv.setViewName("/user/userLogin");
//		}else {
//			System.out.println("[ ]");
//			System.out.println("[ "+ result.getUserId()+" ] 로그인 접속");
//			
//			session.setAttribute("sessionTime", new Date().toLocaleString());
//			session.setAttribute("userName", result.getUserName());
//			
//		}
//		
//		return "/user/login_ok";
//	}
//	
//	@RequestMapping(value = "/idCheck.do", produces = "application/text; charset=utf8")
//	@ResponseBody // 화면이 전화되지않고 비동기동신이 가능하도록 하는 어노테이션
//	public String idCheck(MemberVO vo) {
//		
//		MemberVO resultVO = memberService.idCheck_Login(vo);
//		
//		String result = "ID가 사용가능합니다.";
//		if(resultVO != null) result = "중복된 ID입니다.";
//		
//		return result;
//	}
//	
//	
//	
//	@RequestMapping(value = "/test.do")
//	public void test() {
//		System.out.println("/test.do 호출");
//	}
	
//	@RequestMapping(value = "/test.do")
//	public String test() {
//		System.out.println("/test.do 호출");
//		return "test";
//	}
	
	
}

