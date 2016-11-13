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
<div class="main page__bd_spacing">
		<div class="icon-box">
            <i class="weui-icon-info weui-icon_msg"></i>
            <div class="icon-box__ctn">
                <h3 class="icon-box__title"><%=request.getAttribute("message") %></h3>
                <p class="icon-box__desc">有问题可电话咨询：13922340514</p>
            </div>
        </div>
        <div class="weui-cells__title">地址：广东省广州市天河区临江大道鹅公村酒楼</div>
	
		<div class="weui-btn-area">
	        <a class="weui-btn weui-btn_primary" href="<%=basePath %>" id="showTooltips">返回</a>
	    </div>
    
</div>
</body>
</html>