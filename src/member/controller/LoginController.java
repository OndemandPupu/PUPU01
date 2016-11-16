package member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;

	@RequestMapping("loginAuth")
	public ModelAndView proceed(HttpSession session, @RequestParam(name = "id") String id, String pass, 
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		String rst = loginService.loginCheck(id, pass);

		if (rst != null) {
			session.setAttribute("userId", id);
			System.out.println(session.getAttribute("userId"));
		 // redirect: 경로는 뷰설정이 애초에 다른
													// 매핑잡아둔 경로로 요청 전환
			
			System.out.println("로그인오케이");
		} else {
			mav.setViewName("/member/loginResult");
		}
		return mav;

	}

}
