package file.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import file.model.mentService;

@Controller
public class mentUpcontroller {
	@Autowired
	mentService ms;

	@RequestMapping("/memo/upMemo")
	@ResponseBody
	public String upMemo(String fileuuid, String memo, String id) {
		ModelAndView mav = new ModelAndView();
		boolean r = ms.addMent(id, memo, fileuuid);
		if(r)
			return "YYYYY";
		else 
			return "NNNNN";
	}
	@RequestMapping("/memo/show")
	public ModelAndView showMemo(String fileuuid) {
		ModelAndView mav = new ModelAndView("empty2");
		List<HashMap> li = ms.getMent(fileuuid);
		mav.addObject("comen", li);
		return mav;
	}
}
