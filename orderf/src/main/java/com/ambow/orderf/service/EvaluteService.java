package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Evalute;


public interface EvaluteService {
	List<Evalute> selectAll();

	void insertEvalute(Evalute evalute); 

	void updateEvalute(Evalute evalute); 

	void deleteEvaluteById(Integer evalute_id); 
	
	Evalute selectEvaluteById(Integer evalute_id);
}
