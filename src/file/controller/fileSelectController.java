package file.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import file.model.SelLikeService;

@Controller
public class fileSelectController {
	
	@Autowired
	SelLikeService sls;
	
	@RequestMapping("/selectview")
	public String move() {
		return "my_feed2";
	}
	
	@RequestMapping("/liker")
	@ResponseBody
	public String select(HttpServletRequest req) {
		String uuid = req.getParameter("uuid");
		String selectliker = req.getParameter("id");
		boolean rst1 = sls.sellikecheck(selectliker, uuid);
		if(rst1==true) {
			boolean rst2 = sls.sellikego(selectliker, uuid);
			if(rst2==true) {
				boolean rst3 = sls.sellikeupdate(selectliker, uuid);
				if(rst3==true) {
					return "true";
				}
			}
		}else {
			String rst = sls.sellikedelet(uuid);
			return rst;
		}
		return "false";
	}
}
