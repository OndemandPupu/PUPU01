package file.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class allLoadViewService {
	@Autowired
	SqlSessionFactory fac;
	
	public List<HashMap> allview() {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("files.getAllFile");
		sql.close();
		return li;
	}
	
	public List<HashMap> cateview(String select) {
		SqlSession sql = fac.openSession();
		System.out.println("¸ðµ¨"+select);
		List<HashMap> li = sql.selectList("files.getCateView",select);

		sql.close();
		return li;
	}
	
	
	
}
