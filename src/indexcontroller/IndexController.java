package indexcontroller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/member.nhn")
	public String memberView() {
		return "login/memberView";
	}
	
	@RequestMapping("/cart")
	public String cartVeiw(){
		return "t:cart";
	}
	@RequestMapping("/upload")
	public String memberupload() {

		return "t:upview";
	}
	
	
}