package product.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductInfo {
	@Autowired
	SqlSessionFactory fac;

	public boolean ProductInfoSet(HashMap map) {
		SqlSession sql = fac.openSession();
		int rst = sql.insert("product_info.addProduct", map);
		sql.close();
		if (rst == 1) {
			return true;
		} else {
			return false;
		}
	}
	
	public List<HashMap> ProductInfoGet(HashMap map) {
		SqlSession sql = fac.openSession();
		List<HashMap> infoP = sql.selectList("product_info.getProduct", map);
		sql.close();
		if (infoP != null) {
			return infoP;
		}
			return null;
	}
}
