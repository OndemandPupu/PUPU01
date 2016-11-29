package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.JoinFollowService;
import webhandler.controller.UploaderHandler;

@Controller
public class followController {
	
	@Autowired
	JoinFollowService jfs;
	@Autowired
	UploaderHandler handler;
	
	@RequestMapping("/follow")
	@ResponseBody
	public String follow(HttpServletRequest req) {
		String myid = req.getParameter("myid");
		String youid = req.getParameter("youid");
		int r = jfs.followServiceJoin(myid, youid);
		if(r==1) {
			handler.sendToAllSession(youid+"등록되었습니다.");
			return "TRUE";
		}else {
			return "FALSE";
		}
	}
	
	@RequestMapping("/followcheck")
	@ResponseBody
	public String follow2(HttpServletRequest req) {
		String my_id = req.getParameter("my_id");
		String your_id = req.getParameter("you_id");
		String ask = jfs.follwCheckService(my_id, your_id);
		return ask;
	}
	
	@RequestMapping("/followShow")
	public String follow3(HttpSession session) {
		session.getAttribute("userId");
		return "";
	}
}
