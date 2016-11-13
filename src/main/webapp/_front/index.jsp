<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String commonPath = basePath + "_front/common";
%>
<html lang="ch" >
<head>
<title>楠玉·生活坊</title>
<meta charset="utf-8" />
<meta HTTP-EQUIV="pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
<meta HTTP-EQUIV="expires" CONTENT="0">
<meta name="keywords" content="优雅，在彼此凝视的眼眸中，在闻香吟咏的诗词里……它默默无语，却在最美丽的年华里，以“时光”之名与你相遇，也因为你的优雅成就了你的梦。" />
<meta name="description" content="优雅，在彼此凝视的眼眸中，在闻香吟咏的诗词里……它默默无语，却在最美丽的年华里，以“时光”之名与你相遇，也因为你的优雅成就了你的梦。" />
<meta name="apple-touch-fullscreen" content="yes" />
<meta name="format-detection" content="telephone=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="pragram" content="no-cache" />

<script type="text/javascript">

	if(/Android (\d+\.\d+)/.test(navigator.userAgent)){

		var version = parseFloat(RegExp.$1);

		if(version>2.3){

			var phoneScale = parseInt(window.screen.width)/640;

			document.write('<meta name="viewport" content="width=640, minimum-scale = '+ phoneScale +', maximum-scale = '+ phoneScale +', target-densitydpi=device-dpi">');

		}else{

			document.write('<meta name="viewport" content="width=640, target-densitydpi=device-dpi">');

		}

	}else{

		document.write('<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">');

	}

	//微信去掉下方刷新栏

	if(navigator.userAgent.indexOf('MicroMessenger') >= 0){

		document.addEventListener('WeixinJSBridgeReady', function() {

			//WeixinJSBridge.call('hideToolbar');

		});

	}

	</script>
	
<link rel="stylesheet" type="text/css" href="<%=commonPath %>/css/app.min.css"/>
<link rel="stylesheet" type="text/css" href="<%=commonPath %>/css/index.css"/>

</head>
<body class="app"  data-ad="true">

<div id="app-loading" class="app-loading">
<div class="cycleWrap">
<span class="cycle cycle-1"></span>
<span class="cycle cycle-2"></span>
<span class="cycle cycle-3"></span>
<span class="cycle cycle-4"></span>
</div>
<div class="lineWrap">
<span class="line line-1"></span>
<span class="line line-2"></span>
<span class="line line-3"></span>
</div>
</div>

<header class="app-header">
<a href="javascript:void(0);" class="u-globalAudio">
<audio src="<%=commonPath %>/swf/1.mp3" autoplay="autoplay" loop="loop"></audio>
</a>
</header>

<section class="app-content">

<section class="page page-index z-current" data-plugin-type="info_front">
<section class="page-content">
<div class="m-animationBox m-animationCloudBg"></div>
<img class="m-foregroundImg" src="<%=commonPath %>/images/IMG_1944.JPG">
</section>
</section>

<%@ include file="page/1.jsp" %>
<%@ include file="page/2.jsp" %>

<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/18.jpg);">
<section class="page-content">
<div class="m-link">
<a href="<%=basePath %>order" class="button orange">预约美甲</a>
</div>
</section>
</section>


</section>

<footer class="app-footer">
</footer>
 
<script type="text/javascript" src="<%=commonPath %>/js/init.min.js?ver=3.3"></script>
<script type="text/javascript">

	window.onload = function() {
		
		$audio = $("audio");
		if ($audio.length>0) {
			$audio.attr("src", $audio.data("src"));
			$audio.parent("a").prepend('<i class="icon-music"></i>');
		}

	};

	</script>
</body>
</html>