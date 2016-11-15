
package com.jfinal.nyf.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.jfinal.core.Controller;
import com.jfinal.nyf.entity.Order;
import com.jfinal.nyf.service.OrderService;
import com.jfinal.weixin.util.DateUtils;

/**
 * @author Javen
 * 2016年1月15日
 */
public class OrderController extends Controller {
    
	private OrderService orderService = new OrderService();
	
	public void index(){
		render("order.jsp");
	}
	
	public void save(){
		Order order = getModel(Order.class);
		String order_time = getPara("order_time");
		
		order.set(Order.ORDER_TIME, order_time.replace("T", " ").substring(0, 16));
		
		if(orderService.save(order)){
			setAttr("message", "预约成功！");
		} else {
			setAttr("message", "预约失败！");
		}
		
		render("message.jsp");
	}
	
}
