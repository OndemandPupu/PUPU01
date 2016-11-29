package indexcontroller;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import file.model.SelLikeService;
import file.model.allLoadViewService;
import member.model.LoginService;

@Controller
public class IndexController {

	@Autowired
	allLoadViewService alvs;
	@Autowired
	LoginService ls;
	@Autowired
	SelLikeService sls;

	@RequestMapping("/main")
	public ModelAndView welcome(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userId") != null) {
			if (session.getAttribute("userId").equals("pupu-system")) {
				mav.setViewName("t:manager");
				List<HashMap> li = alvs.allview();
				mav.addObject("list", li);
				mav.addObject("size", li.size() - 1);
					
				return mav;
			}else {
				mav.setViewName("t:yeslogin");
				List<HashMap> li = alvs.allview();
				HashMap map = new HashMap();
				List<HashMap> sleList = null;
				for(int i =0;i<li.size();i++) {
					map = li.get(i);
					String s_fileid = (String)map.get("FILEUUID");
					sleList = sls.setlikeList(s_fileid);
					if(sleList !=null) {
						System.out.println(s_fileid+":"+sleList);
					}	
				}			
				mav.addObject("liker", sleList);
				mav.addObject("list", li);
				mav.addObject("size", li.size()-1);
				mav.addObject("sleList", sleList);
				return mav;
			}
		}else {
			mav.setViewName("t:notlogin");
			return mav;
		}
	}

		
	@RequestMapping("/logout")
	public String memberout(HttpSession session) {
		session.removeAttribute("userId");
		return "t:notlogin";
	}
}
