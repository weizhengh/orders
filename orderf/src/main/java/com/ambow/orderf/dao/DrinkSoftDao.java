package com.ambow.orderf.dao;

import java.util.List;



import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;

public interface DrinkSoftDao {
	List<DrinkSoft> selectAll();// ȫ���ˮ���

	int insertSelective(DrinkSoft drinkSoft); // ��Ӿ�ˮ���

	int updateSelective(DrinkSoft drinkSoft); // �޸ľ�ˮ���
	
	int deleteByPrimaryKey(Integer drink_soft_id); //ɾ����ˮ���
	
	DrinkSoft selectByPrimaryKey(Integer drink_soft_id); //���� ��ˮ���
	List<DrinkSoft> selectByName(String drink_soft_name);//查重
	

}
