package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class followController {
	
	@RequestMapping("/follow")
	@ResponseBody
	public String follow() {
		
		
		return "TRUE";
	}
}
