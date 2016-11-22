package product.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import product.model.ProductInfo;

@Controller
public class AddInfo {

	@Autowired
	ProductInfo pdif;
	
	
	@RequestMapping("/product")
	@ResponseBody
	public String addinfo(HttpServletRequest req, HttpSession session){
		//name:상품명 , price:상품가격 
	HashMap map = new HashMap();
	map.put("name", req.getParameter("name"));
	map.put("price", req.getParameter("price"));
	map.put("addid", req.getParameter("id"));
	boolean rst = pdif.ProductInfoSet(map);	
		if(rst==true) {
			session.setAttribute("name", req.getParameter("name"));
			session.setAttribute("price", req.getParameter("price"));
			session.setAttribute("addid", req.getParameter("id"));
			return "true";
		}else {
			return "false";
		}
	}
	
	@RequestMapping("/productshow")
	public ModelAndView getinfo(HttpServletRequest req, HttpSession session){
		//name:상품명 , price:상품가격 
	ModelAndView mav = new ModelAndView("productAuth");
		HashMap map = new HashMap();
		map.put("name", session.getAttribute("name"));
		map.put("price", session.getAttribute("price"));
		map.put("addid", session.getAttribute("id"));
		List<HashMap> rst = pdif.ProductInfoGet(map);
		System.out.println(rst);
		session.removeAttribute("name");
		session.removeAttribute("price");
		session.removeAttribute("id");
		if(rst != null) {
			String[] arr = null;
			for(int i=0;i<rst.size();i++) {
				map = rst.get(i);
				arr[i] += (String)map.get("NAME");
				arr[i] += (String)map.get("PRICE");
				arr[i] += (String)map.get("ADDID");
			}
		mav.addObject("product_in",arr);
			System.out.println(arr);
			
			return mav;
		}
		return mav;
	}
}
