package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.EvaluteDao;
import com.ambow.orderf.pojo.Evalute;
import com.ambow.orderf.service.EvaluteService;

@Service("evaluteService")
public class EvaluteServiceImpl implements EvaluteService {
	@Autowired
	private EvaluteDao evaluteDao;

	public List<Evalute> selectAll(Evalute evalute) {
		List<Evalute> evaluteList = evaluteDao.selectAll(evalute);
		/*for (Evalute evalute : evaluteList) {
			
		}*/
		return evaluteList;
	}

	public void insertEvalute(Evalute evalute) {
		evaluteDao.insertEvalute(evalute);
	}

	public void updateEvalute(Evalute evalute) {
	}

	public void deleteEvaluteById(Integer eva_id) {
		evaluteDao.deleteEvaluteById(eva_id);
	}

	public Evalute selectEvaluteById(Integer eva_id) {
		return null;
//		return evaluteDao.selectEvaluteById(eva_id);
	}

	public Integer selectOrderById(String order_id) {
		// TODO Auto-generated method stub
		return evaluteDao.selectOrderById(order_id);
	}
}
