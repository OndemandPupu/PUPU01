package file.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SelLikeService {
	
	@Autowired
	SqlSessionFactory fac;
	
	public boolean sellikego(String selectliker, String uuid) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		map.put("l_selectliker", selectliker);
		map.put("l_fileuuid", uuid);
		int rst = sql.insert("files.liker", map);
		sql.close();
		if(rst==1) {
			return true;
		}
		return false;
	}
	

	public boolean sellikecheck(String selectliker, String uuid) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		map.put("l_selectliker", selectliker);
		map.put("l_fileuuid", uuid);
		String rst = sql.selectOne("files.likercheck", map);
		sql.close();
		if(rst == null ) {
			return true;
		}
		return false;
	}
	
	public boolean sellikeupdate(String selectliker, String uuid) {
		SqlSession sql = fac.openSession();
		HashMap map = new HashMap();
		map.put("l_selectliker", selectliker);
		map.put("l_fileuuid", uuid);
		int rst = sql.update("files.likeupdate", map);
		sql.close();
		if(rst == 1 ) {
			return true;
		}
		return false;
	}
	
	public String sellikedelet(String uuid) {
		SqlSession sql = fac.openSession();
	
		int rst = sql.delete("files.likeBye", uuid);
		sql.close();
		if(rst == 1 ) {
			return "false";
		}
		return null;
	}
	
	public List<HashMap> sellikeList(String fileuuid) {
		SqlSession sql = fac.openSession();
	
		List<HashMap> selList= sql.selectList("files.likerList",fileuuid);
		sql.close();
		if(selList != null ) {
			return selList;
		}
		return null;
	}
}