package test.viewcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testviewcontroller {
	@RequestMapping("test")
	public String view() {
		return "member/login.jsp";
	}
	@RequestMapping("/test1")
	public String view1() {
		return "test/test.jsp";
	}
	@RequestMapping("/test2")
	public String view2() {
		return "file/upload.jsp";
	}
	
}
