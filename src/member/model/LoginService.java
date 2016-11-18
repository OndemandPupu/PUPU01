package member.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginService {
	@Autowired

	SqlSessionFactory fac;

	public String loginCheck(String id, String pass) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap<>();
		map.put("id", id);
		map.put("pass", pass);
		String check = sql.selectOne("member.checkmember", map);
		sql.close();
		return check;

	}
	
	public String joinCheck(String id) {
		SqlSession sql = fac.openSession();
		String check = sql.selectOne("member.overlapmember", id);
		sql.close();
		return check;

	}
	
	public List<HashMap> nicknameSet(String id) {
		SqlSession sql = fac.openSession();
		List<HashMap> nickname = sql.selectList("member.nickname", id);
		sql.close();
		return nickname;

	}

}