package dao;

import java.util.List;
import java.util.Map;

public interface ReviewDao {
	List<Map<String, Object>> reviewListByHos(String comnum) throws Exception;
}
