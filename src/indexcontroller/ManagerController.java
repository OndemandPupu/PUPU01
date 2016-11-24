package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import file.model.allLoadViewService;
import member.model.LoginService;

@Controller
public class ManagerController {
	@Autowired
	allLoadViewService alvs;
	@Autowired
	LoginService ls;

	

	@RequestMapping("/memberout")
	public ModelAndView memberout(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("t:memberout");
		List<HashMap> list = ls.profileSystem();
		mav.addObject("memberlist", list);

		return mav;
	}

	@RequestMapping("/memberdel")
	@ResponseBody
	public String memberdel(String id) {
		int r = ls.memberout(id);
		if (r == 1) {
			return "YYYY";
		} else {
			return "NNNN";
		}
	}
	@RequestMapping("/writedel")
	@ResponseBody
	public String writedel(String fileuuid) {
		System.out.println("¿äÃ»µé¿È?"+fileuuid);
		int r = ls.writeout(fileuuid);
		System.out.println(r);
		if (r == 1) {
			return "YYYY";
		} else {
			return "NNNN";
		}
	}
	

}
