package com.jfinal.nyf.service;

import com.jfinal.nyf.entity.Order;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.weixin.util.DateUtils;

public class OrderService {

	/**
	 * 保存预约信息
	 * @param order
	 * @return
	 */
	public boolean save(Order order){
		return order.set(Order.CREATE_TIME, DateUtils.getCurrentTime()).save();
	}
	
	/**
	 * 预约列表
	 * @param pageNumber
	 * @param pageSize
	 * @return
	 */
	public Page<Order> getOrderPage(int pageNumber, int pageSize){
		String sqlExceptSelect = "FROM t_order ORDER BY order_time DESC,create_time DESC";
		return Order.dao.paginate(pageNumber, pageSize, "SELECT * ", sqlExceptSelect);
	}
	
}
