package file.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import file.model.uploadService;

@Controller
public class uploadController {

	@Autowired
	uploadService ups;

	@RequestMapping("/file/upload")
	public ModelAndView upfile(String title, String comments,
			@RequestParam(name = "file") MultipartFile file, HttpSession session) {
		String id =(String)session.getAttribute("userId");
		String uid = ups.execute(file, id, title, comments);
		ModelAndView mav = new ModelAndView();
		if (uid != null) {
			mav.setViewName("t:upview");
			mav.addObject("uid", uid);
		} else {
			mav.setViewName("");
		}
		return mav;
	}

}
