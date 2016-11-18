package file.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class fileSelectController {
	@RequestMapping("/selectview")
	public String move() {
		return "my_feed2";
	}
}
