package member.model;

import java.util.HashMap;

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
		sql.close();
		if(r==1) {
			return r;
		}else {
			return 0;
		}
	}
	
	public int followServiceJoin(String myid, String youid) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		map.put("myid", myid);
		map.put("youid", youid);
		int r = sql.update("member.setFollw", map);
		sql.close();
		return r;
	}
	
	public String follwCheckService(String my_id, String your_id) {
		SqlSession sql= fac.openSession();
		HashMap map = new HashMap();
		map.put("id", my_id);
		map.put("followerid", your_id);
		String ask = sql.selectOne("member.checkFollow", map);
		sql.close();
		if(ask!=null) {
			return "FALSE";
		}else {
			return "TRUE";
		}
	
		
		
	}
}
