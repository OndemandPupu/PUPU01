package indexcontroller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cart.model.cartService;
import file.model.SelLikeService;
import member.model.LoginService;
import member.model.myreadService;

@Controller
public class UsersUseController {
	@Autowired
	LoginService ls;
	@Autowired
	SelLikeService sls;
	@Autowired
	cartService cs;
	@Autowired
	myreadService ms;
		
	@RequestMapping("/saveWirter")
	@ResponseBody
	public String memberseting(HttpServletRequest req) {
		String id = req.getParameter("id");
		String nick = req.getParameter("nick");
		String nickid = nick+"("+id+")";
		String uuid = req.getParameter("uuid");
		String memo = req.getParameter("memo");
		HashMap map = new HashMap();
		map.put("id", nickid);
		map.put("comments", memo);
		map.put("comments_flleuuid", uuid);
		
		int r = ms.addCommetns(map);
		if(r==1) {
			return "true";
		}else {
			return "false";
		}
	}
	@RequestMapping("/getWirter")
	public ModelAndView memberWriter() {
		ModelAndView mav = new ModelAndView("wirter");
		List<HashMap> li = ms.getCommetns();
		mav.addObject("commts", li);
		return mav;
	}
	
	@RequestMapping("/getliker")
	public ModelAndView memberLiker() {
		ModelAndView mav = new ModelAndView("likerAuth");
		List<HashMap> li = sls.getLikers();
		mav.addObject("getliker", li);
		return mav;
	}

	
	@RequestMapping("/upload")
	public String memberupload() {
	
		return "t:upview";
	}
	
	@RequestMapping("/profile/{a}")
	public ModelAndView profile(HttpServletRequest req, @PathVariable String a) {
		ModelAndView mav = new ModelAndView();
		if(a != null){
			mav.setViewName("t:profile");
			List<HashMap> li = ls.profileCheck(a);
			 List<HashMap> lis = ms.readAlldata(a);
			  mav.addObject("data",lis);
			  mav.addObject("mssize",lis);
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

	@RequestMapping("/cart")
	public ModelAndView cartView(HttpSession session) {
		
		ModelAndView mav = new ModelAndView("t:cart");
		String nick = (String)session.getAttribute("nickname");
		String id = (String)session.getAttribute("userId");
	
		String nickid = nick+"("+id+")";
		List<HashMap> list = cs.getName(nickid);
		
		mav.addObject("productList", list);
	
		return mav;
			
	}
}
	
