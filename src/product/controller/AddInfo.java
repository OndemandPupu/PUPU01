package product.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	map.put("fileuuid", req.getParameter("fileuid"));
	System.out.println(map);
	boolean rst = pdif.ProductInfoSet(map);	
		if(rst==true) {
			return "true";
		}else {
			return "false";
		}
	}
	
	@RequestMapping(value="/productshow", produces="text/plain;charset=utf-8")
	@ResponseBody
	public String getinfo(HttpServletRequest req, HttpSession session){
		//name:상품명 , price:상품가격 
		String fnae = req.getParameter("filename");
		System.out.println("파일이름"+fnae);
		List<HashMap> rst = pdif.ProductInfoGet(fnae);
		System.out.println("파일에등록된정보"+rst);
		HashMap map = new HashMap();
		String arr = null;
		for(int i=0;i<rst.size();i++) {
			map = rst.get(i);
		}
		System.out.println(map);
		if(rst != null) {
			arr = "[\"";
			arr += (String)map.get("NAME");
			arr += "\",\"";
			arr += (String)map.get("PRICE");
			arr += "\",\"";
			arr += (String)map.get("ADDID");
			arr += "\"]";
			System.out.println(arr);
		}
		return arr;
	}
}
