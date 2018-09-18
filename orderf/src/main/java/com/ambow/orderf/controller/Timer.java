package com.ambow.orderf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import com.ambow.orderf.service.StockService;



	/**
	 * 
	 * 类名称：TimerTask   
	 * 类描述：定时器任务
	 * 创建人：yunfei.han
	 * 创建时间：Aug 29, 2016 10:56:27 AM      
	 * @version  V1.0
	 *
	 */

	@Controller
	public class Timer {
		@Autowired
		private StockService stockService;
	  /**
	   * 每天22点30启动任务
	   */
	  @Scheduled(cron = "0 21 11 ? * *")
	  public void test1()
	  {
 stockService.totalTadayFince();
		  System.out.println("job1 开始执行...");
	  } 
/*	  @Scheduled(cron = "0/5 * * * * ?")//每隔5秒隔行一次 
	  public void test2()
	  {
	     System.out.println("job2 开始执行");
	  } */
	}
	

