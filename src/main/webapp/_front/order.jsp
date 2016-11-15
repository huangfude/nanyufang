<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String commonPath = basePath + "_front/common";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<title>在线预约</title>
		<link rel="stylesheet" type="text/css" href="<%=commonPath %>/css/weui.min.css"/>
		<link rel="stylesheet" type="text/css" href="<%=commonPath %>/css/example.css"/>
	</head>
<body>
<div class="main">
	<div class="weui-cells__title mt50">在线预约</div>
	
	<form id="subform" name="subform" method="post" action="<%=basePath %>order/save" >
	
	<div class="weui-cells weui-cells_form">
		<div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">姓名</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" name="order.name" type="text" placeholder="请输入姓名"/>
            </div>
        </div>
		<div class="weui-cell weui-cell_vcode">
            <div class="weui-cell__hd">
                <label class="weui-label">手机号</label>
            </div>
            <div class="weui-cell__bd">
                <input class="weui-input" name="order.tel" type="tel" placeholder="请输入手机号">
            </div>
        </div>
        <div class="weui-cell">
            <div class="weui-cell__hd"><label for="" class="weui-label">预约时间</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" name="order_time" type="datetime-local" value="" placeholder=""/>
            </div>
        </div>
        <div class="weui-cells__title">地址：广东省广州市天河区临江大道鹅公村酒楼</div>
	</div>
	
	<div class="weui-btn-area">
        <a class="weui-btn weui-btn_primary" href="javascript:document:subform.submit();" id="showTooltips">确定</a>
    </div>
    
    </form>
    
</div>
</body>
</html>