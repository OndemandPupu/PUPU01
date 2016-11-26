package member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class followController {
	
	@RequestMapping("/follow")
	@ResponseBody
	public String follow(HttpServletRequest req) {
		String myid = req.getParameter("myid");
		String youid = req.getParameter("youid");
		
		return "TRUE";
	}
}
