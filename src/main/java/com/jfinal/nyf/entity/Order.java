package com.jfinal.nyf.entity;

import com.jfinal.plugin.activerecord.Model;

public class Order extends Model<Order> {

	private static final long serialVersionUID = -7607009519302582913L;

	public static final Order dao = new Order();
	
	public static final String ID = "id";
	public static final String NAME = "name";
	public static final String TEL = "tel";
	public static final String ORDER_TIME = "order_time";
	public static final String CREATE_TIME = "create_time";
	//public static final String STATUS = "status";
	
	
}
