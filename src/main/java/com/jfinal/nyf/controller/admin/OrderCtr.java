
package com.jfinal.nyf.controller.admin;

import com.jfinal.core.Controller;
import com.jfinal.nyf.entity.Order;
import com.jfinal.nyf.service.OrderService;
import com.jfinal.plugin.activerecord.Page;

/**
 * @author Javen
 * 2016年1月15日
 */
public class OrderCtr extends Controller {
    
	private OrderService orderService = new OrderService();
	
	public void index(){
		render("list_main.jsp");
	}
	
	public void sub(){
		render("list_sub.jsp");
	}
	
	/**
	 * 刷新
	 */
	public void refresh(){
		int pageNumber = getParaToInt("pageNumber",1);
		int pageSize = getParaToInt("pageSize", 15);
		
		Page<Order> dataPage = orderService.getOrderPage(pageNumber, pageSize);
		this.renderJson(dataPage);
	}
}
