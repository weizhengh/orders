package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.PowerDao;
import com.ambow.orderf.pojo.Power;
import com.ambow.orderf.service.PowerService;

@Service
@Transactional
public class PowerServiceImpl implements PowerService{

	@Autowired PowerDao powerDao;
	
	@Override
	public List<Power> findAll() {
		
		List<Power> list=powerDao.findAll();
		return list;
	}

	@Override
	public boolean addPower(Power power) {
		
		try {
			powerDao.addPower(power);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updatePower(Power power) {
		
		try {
			powerDao.updatePower(power);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean delPower(Integer powerId) {
		
		try {
			powerDao.delPower(powerId);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public Power findByPowerId(Integer powerId) {
		
		Power power=powerDao.findByPowerId(powerId);
		return power;
	}

}
