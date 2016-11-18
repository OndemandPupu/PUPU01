package indexcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping("/main")
	public String welcome(HttpSession session) {
		if(session.getAttribute("userId") != null) {
			return "t:yeslogin";
		}else {
			return "t:notlogin";
		}
	}
	@RequestMapping("/check")
	public ModelAndView welcome1(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("t:notlogin");
		String agree = req.getParameter("agree");
		System.out.println(agree);
		mav.addObject("agreeok", agree);
		return mav;
	}
	@RequestMapping("/cart")
	public String cartVeiw(){
		return "t:cart";
	}
	@RequestMapping("/upload")
	public String memberupload() {

		return "t:upview";
	}
	@RequestMapping("/logout")
	public String memberout(HttpSession session) {
		session.removeAttribute("userId");
		return "t:notlogin";
	}
	
}