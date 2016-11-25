package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.model.LoginService;

@Controller
public class UsersUseController {
	@Autowired
	LoginService ls;
	
	@RequestMapping("/cart")
	public String cartVeiw() {
		return "t:cart";
	}
	
	@RequestMapping("/upload")
	public String memberupload() {
	
		return "t:upview";
	}
	
	@RequestMapping("/profile")
	public ModelAndView profile(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String clickId = req.getParameter("findsee");
		if(clickId != null){
			mav.setViewName("t:profile");
			List<HashMap> li = ls.profileCheck(clickId);
			mav.addObject("profile", li);
			mav.addObject("size", li.size() - 1);
		} 
		return mav;
	}
	
	@RequestMapping("/provide")
	public ModelAndView showProvide() {
		ModelAndView mav = new ModelAndView("provide");
	
		return mav;
	}
}
	
