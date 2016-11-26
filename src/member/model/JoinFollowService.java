package member.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.aspectj.lang.annotation.Around;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JoinFollowService {
	
	@Autowired
	SqlSessionFactory fac;
	
	public int followService(String id) {
		SqlSession sql = fac.openSession();
		int r = sql.insert("member.addfollw",id);
		if(r==1) {
			return r;
		}else {
			return 0;
		}
	}
	
}
