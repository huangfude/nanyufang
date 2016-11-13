package com.jfinal.nyf.service;

import com.jfinal.nyf.entity.Order;
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
	
}
