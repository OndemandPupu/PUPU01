package file.controller;

import java.util.HashMap;
import java.util.List;

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
	@RequestMapping(value="/memo/show", produces="text/plain;charset=utf-8")
	public ModelAndView showMemo(String fileuuid) {
		ModelAndView mav = new ModelAndView("empty2");
		System.out.println("ajax 요청"+fileuuid);
		List<HashMap> li = ms.getMent(fileuuid);
		System.out.println("ajax 요청대한답"+li);
		
		mav.addObject("comen", li);
		return mav;
	}
}
