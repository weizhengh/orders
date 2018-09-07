package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Evalute;

public interface EvaluteDao {
	List<Evalute> selectAll();

	void insertEvalute(Evalute evalute); 

	void updateEvalute(Evalute evalute); 

	void deleteEvaluteById(Integer eva_id); 
	
	Evalute selectEvaluteById(Integer evalute_id);
}
