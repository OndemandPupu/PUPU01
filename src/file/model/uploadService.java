package file.model;

import java.io.File;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class uploadService {
	@Autowired
	ServletContext application;

	@Autowired
	SqlSessionFactory fac;

	public String execute(MultipartFile file, String cate, String tittle, String comments, String userid) {
		if (!file.isEmpty())
			try {
				String cont = file.getContentType();
				String uid = UUID.randomUUID().toString().substring(0, 4);
				String fileName = file.getOriginalFilename();
				String dir = application.getRealPath("/"); //
				System.out.println(dir);
				File des = new File(dir, uid);
				file.transferTo(des);
				HashMap map = new HashMap();
				map.put("cate", cate);
				map.put("tittle", tittle);
				map.put("id", userid);
				map.put("likes", 0);
				map.put("comments", comments);
				map.put("fileuuid", uid);

				SqlSession sql = fac.openSession();
				int excute = sql.insert("files.upLoad", map);
				sql.close();
				if (excute == 1) {
					return uid;
				}
			} catch (Exception e) {
				System.out.println(e);

				return null;
			}
		return null;
	}

}
