package member.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AuthService {

	@Autowired
	SqlSessionFactory fac;
	
	public List<HashMap> authSer(HashMap map) {
		SqlSession sql = fac.openSession();
		List<HashMap> li = sql.selectList("myauth.m_getUpload", map);
		
		return li;
	}
}
