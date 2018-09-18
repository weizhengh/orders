package com.ambow.orderf.controller;

import java.io.UnsupportedEncodingException;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.utils.Speak;
import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;


@Controller
@RequestMapping("/speak")
public class SpeakController {
	
	 Map<String, String> waiterMap=new IdentityHashMap<String, String>();
	
	@RequestMapping(value = "/speakwaiter")
	public String speakwaiter(String table,String thing,Model model ) {
	if(thing.equals("0")){
		thing="呼叫";
	}else if(thing.equals("1")){
		thing="点餐";
		
	}else if(thing.equals("2")){
		thing="结账";
		
	}else if(thing.equals("3")){
		thing="纸巾";
		
	}
		    Speak speak=new Speak();
		    speak.speakWaiter(table);		  
		
		    waiterMap.put(table,thing);
		model.addAttribute("speak", waiterMap);
		    return "redirect:/speak/selectspeak.action";
	}
	
	@RequestMapping(value = "/selectspeak")
	public String selectspeak(Model model){
		model.addAttribute("speak", waiterMap);
		return "admin/speak-waiter";
	}
	
	@RequestMapping(value = "/deletespeak")
	public String deletespeak (String table,String thing,Model model ) throws UnsupportedEncodingException {
		thing=new String(thing.getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(table+thing+"123");
		
		
		Iterator iter = waiterMap.entrySet().iterator();
		//推荐使用：效率高,以后一定要使用此种方式
		synchronized (iter) {
		
	    for (Map.Entry<String, String> entry : waiterMap.entrySet())  {
	        System.out.println(entry.getKey() + "--->" + entry.getValue());
	        if(entry.getKey().contains(table)){
	        if(entry.getValue().contains(thing)){
	            System.out.println("12344");
	            waiterMap.remove(entry.getKey());
	            //iter.remove();
	        }
	        }
	    }
          
        
	    }
	    for (Map.Entry<String, String> entry : waiterMap.entrySet()) {
	        System.out.println(entry.getKey() + ">>>>>" + entry.getValue());
	    }
	    
		    return "redirect:/speak/selectspeak.action";
	    
		  
}
}