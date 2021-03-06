package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Evalute;

public interface EvaluteDao {
	List<Evalute> selectAll(Evalute evalute);
	
	void insertEvalute(Evalute evalute); 
	
	void deleteEvaluteById(Integer eva_id);

	Integer selectOrderById(String order_id); 
	
}
