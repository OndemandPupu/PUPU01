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

	public String execute(MultipartFile f, String id, String comments,String name) {
		// id: 업로더 title:파일제목 comments:파일내용
		if (f.isEmpty())
			return null;
		try {
			String uid = UUID.randomUUID().toString().substring(0, 4);
			String dir = application.getRealPath("/users");
			File des = new File(dir, uid);
			f.transferTo(des);
			HashMap map = new HashMap();
			map.put("id", id);
			map.put("comments", comments);
			map.put("fileuuid", uid);
			map.put("name", name);
			SqlSession sql = fac.openSession();
			sql.insert("files.upLoad", map);
			sql.close();
			return uid;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
}
