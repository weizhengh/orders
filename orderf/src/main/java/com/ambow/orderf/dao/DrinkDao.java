package com.ambow.orderf.dao;

import java.util.List;



import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;


public interface DrinkDao {
	List<Drink> selectAll();// ȫ���ˮ

	int insertSelective(Drink drink); // ��Ӿ�ˮ

	int updateSelective(Drink drink); // �޸ľ�ˮ
	
	int deleteByPrimaryKey(Integer drink_id); //ɾ����ˮ
	
	List<Drink> selectBySoftId(Integer drink_soft_id); //���ݾ�ˮ����ѯ
	
	Drink selectByPrimaryKey(Integer drink_id); //���� ��ˮ
	List<Drink> selectByDrinkName(String drink_name); //查重
	
	List<Drink> selectByLike(String blur);//模糊查询

}
