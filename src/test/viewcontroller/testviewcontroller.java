package test.viewcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.SelLikeService;

@Controller
public class testviewcontroller {
	@Autowired
	SelLikeService sls;
	
	@RequestMapping("test")
	public ModelAndView view(HttpServletRequest req) {
		
		ModelAndView mav = new ModelAndView("test/test");
		String fileuuid = req.getParameter("uid");
		List<HashMap> me = sls.setlikeList(fileuuid);
		mav.addObject("test", me);
		return mav;
	}
	@RequestMapping("/test1")
	public String view1() {
		return "test/test";
	}
	@RequestMapping("/test2")
	public String view2() {
		return "upload";
	}
	@RequestMapping("/path/{a}/{b}")
	public String source05(@PathVariable String a, @PathVariable String b) {
		System.out.println("a==>"+a);
		System.out.println("b==>"+b);
		return "/default";
	}
}

