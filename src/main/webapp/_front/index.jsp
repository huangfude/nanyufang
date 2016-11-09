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
	
<link rel="stylesheet" type="text/css" href="<%=commonPath %>/css/app.min.css?ver=3.9"/>

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
<img class="m-foregroundImg" src="<%=commonPath %>/images/53a93a5e17d79_c42828117176.png">
</section>
</section>

<%@ include file="page/1.jsp" %>


<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/53b51d842899b42837117179.jpg);">
<section class="page-content">
</section>
</section>

<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/53b53170a164a42835117180.jpg);">
<section class="page-content">
<div class="m-link">
<a href="weixin:share" class="imgLink">
<img src="<%=commonPath %>/images/53b51ab39ab5a42835117180.png"/>
</a>
<div class="u-maskLayer m-weixinShareLayer z-hide">
<img src="<%=commonPath %>/images/53b51697bc856.jpg">
</div>
</div>
</section>
</section>
<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/53b531805aa1242836117181.jpg);">
<section class="page-content">
<div class="m-link">
<a href="weixin:share" class="imgLink">
<img src="<%=commonPath %>/images/53b51ac2cb1f542836117181.png"/>
</a>
<div class="u-maskLayer m-weixinShareLayer z-hide">
<img src="<%=commonPath %>/images/53b519d9c813d.jpg">
</div>
</div>
</section>
</section>
<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/53b531920c92542838117182.jpg);">
<section class="page-content">
<div class="m-link">
<a href="weixin:share" class="imgLink">
<img src="<%=commonPath %>/images/53b5207f3cfd242838117182.png"/>
</a>
<div class="u-maskLayer m-weixinShareLayer z-hide">
<img src="<%=commonPath %>/images/53b5208c69d90.jpg">
</div>
</div>
</section>
</section>
<section class="page page-map" data-plugin-type="multistore_address" style="background-image: url(<%=commonPath %>/images/53a971f82ad6d42831117183.jpg); background-size: auto;">
<section class="page-content">
<div class="m-distributedPoints">
<ul class="pointList">
<li style="left:322px; top:636px;">
<h3> </h3>
<a href="javascript:void(0);" data-map-markers='[{"id":"3113","name":"Landon","tel":"","lng":"-0.181156","lat":"51.48065","desc":"","addr":""}]'></a>
<input type="hidden" name="store_data" value="{&quot;data&quot;:[{&quot;id&quot;:&quot;3113&quot;,&quot;name&quot;:&quot;Landon&quot;,&quot;tel&quot;:&quot;&quot;,&quot;lng&quot;:&quot;-0.181156&quot;,&quot;lat&quot;:&quot;51.48065&quot;,&quot;desc&quot;:&quot;&quot;,&quot;addr&quot;:&quot;&quot;}],&quot;name&quot;:&quot; &quot;,&quot;js_xy&quot;:&quot;161,318&quot;}">
</li>
</ul>
</div>
<div class="u-yunlaiMap z-hide"></div>
</section>
</section>
<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/53a97da63ba9842833117184.jpg);">
<section class="page-content">
<div class="m-link">
<a href="weixin:share" class="imgLink">
<img src="<%=commonPath %>/images/53a97dbac627942833117184.png"/>
</a>
<div class="u-maskLayer m-weixinShareLayer z-hide">
<img src="<%=commonPath %>/images/weixin-share-guide.png">
</div>
</div>
</section>
</section>

<section class="page page-link" data-plugin-type="info_link" style="background-image: url(<%=commonPath %>/images/appBg2.jpg);">
<section class="page-content">
<div class="m-link">
<table>
	<tr>
		<th>姓名：</th>
		<td>
		<input name="name" id="name" />
		</td>
	</tr>
	<tr>
		<th>电话：</th>
		<td>
		<input name="tel" id="tel" />
		</td>
	</tr>
	<tr>
		<th>预约时间：</th>
		<td>
		<input name="orderTime" id="orderTime" />
		</td>
	</tr>
</table>

</div>
</section>
</section>

</section>

<footer class="app-footer">
</footer>
<input type="hidden" value="<%=commonPath %>/images/53a97dde2178242832117186.png" data-share-pic>
 
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