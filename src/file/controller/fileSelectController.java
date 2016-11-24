package file.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

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
	
	@RequestMapping(value="/liker")
	public ModelAndView select(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		String uuid = req.getParameter("uuid");
		String selectliker = req.getParameter("id");
		boolean rst1 = sls.sellikecheck(selectliker, uuid);
		if(rst1==true) {
			boolean rst2 = sls.sellikego(selectliker, uuid);
			if(rst2==true) {
				boolean rst3 = sls.sellikeupdate(selectliker, uuid);
				if(rst3==true) {
					List<HashMap> sleList = sls.sellikeList(uuid);
					mav.setViewName("empty3");
					mav.addObject("list", sleList);
					System.out.println("좋아요"+sleList);
					return mav;
				}
			}
		}else {
			String rst = sls.sellikedelet(uuid);
			System.out.println("싫어요"+rst);
			mav.setViewName("empty3");
			mav.addObject("rst", rst);
			return mav;
		}
		return mav;
	}
}
