package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.SelLikeService;
import file.model.allLoadViewService;
import member.model.LoginService;

@Controller
public class IndexController {
	
	@Autowired
	allLoadViewService alvs;
	@Autowired
	LoginService ls;
	@Autowired
	SelLikeService sls;
	
	@RequestMapping("/main")
	public ModelAndView welcome(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("userId") != null) {
			if (session.getAttribute("userId").equals("pupu-system")) {
				mav.setViewName("t:manager");
				List<HashMap> li = alvs.allview();
				mav.addObject("list", li);
				mav.addObject("size", li.size() - 1);
				return mav;
			} else {
				mav.setViewName("t:yeslogin");
				List<HashMap> li = alvs.allview();
				mav.addObject("list", li);
				mav.addObject("size", li.size() - 1);
				return mav;
			}
		} else {
			mav.setViewName("t:notlogin");
			return mav;
		}
	}
	@RequestMapping("/check")
	public ModelAndView welcome1(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("t:notlogin");
		String agree = req.getParameter("agree");
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
	@RequestMapping("/manager")
	public String Manager() {

		return "t:manager";
	}
	@RequestMapping("/question")
	public String question() {

		return "t:question";

	}

	@RequestMapping("/delete")
	public String delete() {

		return "t:delete";

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
		if (clickId != null) {
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