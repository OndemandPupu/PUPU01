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
	
	public HashMap allChart() {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		int sum1 = sql.selectOne("files.getAllChart", "test1");
		int sum2 = sql.selectOne("files.getAllChart", "test2");
		int sum3 = sql.selectOne("files.getAllChart", "test2");
		int sum4 = sql.selectOne("files.getAllChart", "test2");
		map.put("test1", sum1);
		map.put("test2", sum2);
		map.put("test3", sum3);
		map.put("test4", sum4);
		sql.close();
		return map;
	}
}