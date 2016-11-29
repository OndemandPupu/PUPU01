package file.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping(value="/liker")
	public ModelAndView select(HttpServletRequest req, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		String uuid = req.getParameter("uuid");
		String  iid= (String)session.getAttribute("userId");
		String nick = (String)session.getAttribute("nickname");
		String selectliker = nick;
		boolean rst1 = sls.sellikecheck(selectliker, uuid);
		// 눌럿던사람인지 안눌럿던사람인지 검사
		if(rst1==true) {
			boolean rst2 = sls.sellikego(selectliker, uuid);
			// 눌럿던 사람이아니라면 디비에 인설트
			if(rst2==true) {
				boolean rst3 = sls.sellikeupdate(selectliker, uuid);
				// 인설트가 정상처리되면 like +1 로 업데이트
				if(rst3==true) {
					List<HashMap> sleList = sls.sellikeList(uuid);
					mav.setViewName("like");
					mav.addObject("sleList", sleList);
					return mav;
				}
			}
		}else {
			String rst = sls.sellikedelet(uuid, selectliker);
			mav.setViewName("unlike");
			mav.addObject("rst", rst);
			return mav;
		}
		return mav;
	}
}
