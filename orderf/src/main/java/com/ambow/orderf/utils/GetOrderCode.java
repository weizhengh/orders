package com.ambow.orderf.utils;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Random;

public class GetOrderCode {
	public static String numid(){
		// 随机数生成类
		Random random = new Random();
		
		// 定义验证码的位数
		int size = 1;
		
		// 定义变量保存生成的验证码
		String vCode = "";
		String c;
		// 产生验证码
		for (int i = 0; i < size; i++) {
			// 产生一个26以内的随机整数
			int number = random.nextInt(9);
			// 如果生成的是偶数，则随机生成一个数字
			c = ""+(int) (Math.random() * 10);
			vCode = vCode + c;
		}
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		String y = new SimpleDateFormat("yyyyMMddhhmm").format(ts);
		return (y+vCode).substring(1, 12);
	}
	public static String numCode(){
		// 随机数生成类
        Random random = new Random();

        // 定义验证码的位数
        int size = 6;

        // 定义变量保存生成的验证码
        String vCode = "";
        String c;
        // 产生验证码
        for (int i = 0; i < size; i++) {
            // 产生一个26以内的随机整数
            int number = random.nextInt(9);
            // 如果生成的是偶数，则随机生成一个数字
                c = ""+(int) (Math.random() * 10);
            vCode = vCode + c;
        }
        Timestamp ts = new Timestamp(System.currentTimeMillis());
		String y = new SimpleDateFormat("yyyyMMddhhmmss").format(ts);
	    return y+vCode;
	}
//	public static void main(String[] args) {
//		System.out.println(numCode().substring(1, 12));
//	}
}
