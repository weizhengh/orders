package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;

/**
 * @author H
 *
 */
public interface DrinkService {

	List<Drink> selectAll();// ȫ���ˮ

	int insertSelective(Drink drink); // ��Ӿ�ˮ

	int updateSelective(Drink drink); // �޸ľ�ˮ

	int deleteByPrimaryKey(Integer drink_id); // ɾ����ˮ
	
	Drink selectByPrimaryKey(Integer drink_id); //���� ��ˮ
	
	List<Drink> selectBySoftId(Integer drink_soft_id); //根据分类查询
	
	List<Drink> selectByLike(String blur);//模糊查询
}
