package file.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import file.model.ReadViewService;
import file.model.uploadService;

@Controller
public class uploadController {
	
	@Autowired
	uploadService uploadservice;
	@Autowired
	ReadViewService readviewservice;
	// ¾÷·Îµå ºä 
	@RequestMapping("test11")
	public ModelAndView upfile(HttpSession session, String cate, String tittle , String comments,
			@RequestParam(name = "file") MultipartFile file) {
		ModelAndView mav = new ModelAndView("open.jsp");
		String userid = session.getId();
		String fileuuid = uploadservice.execute(file, cate, tittle, comments, userid);
		if(fileuuid != null) {
			List imporm = readviewservice.readview(fileuuid);
			mav.addObject("fileimporm", imporm);
		}
		return mav;
	}
}
