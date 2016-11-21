package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.allLoadViewService;
import member.model.LoginService;

@Controller
public class IndexController {
	
	@Autowired
	allLoadViewService alvs;
	@Autowired
	LoginService ls;
	
	@RequestMapping("/main")
	public ModelAndView welcome(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userId") != null) {
			mav.setViewName("t:yeslogin");
			List<HashMap> li = alvs.allview();
			mav.addObject("list", li);
			mav.addObject("size", li.size()-1);
			return mav;
		}else {
			mav.setViewName("t:notlogin");
			return mav;
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
	
	@RequestMapping("/profile")
	public ModelAndView profile(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String clickId = req.getParameter("name");
		if(clickId != null){
			mav.setViewName("t:profile");
			List<HashMap> li = ls.profileCheck(clickId);
			mav.addObject("profile", li);
			mav.addObject("size", li.size() - 1);

			return mav;
		} else {
			mav.setViewName("t:notlogin");
			return mav;
		}
	}
}