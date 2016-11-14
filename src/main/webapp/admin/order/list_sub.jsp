<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String commonPath = basePath + "admin/common";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<title>文章列表</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<link rel="stylesheet" href="<%=commonPath %>/css/mui.min.css">
		
	</head>

	<body>
		<!--下拉刷新容器-->
		<div id="pullrefresh" class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
				<!--数据列表-->
				<ul class="mui-table-view mui-table-view-chevron" id="content">
					
				</ul>
			</div>
		</div>
		<script src="<%=commonPath %>/js/mui.min.js"></script>
		<script>
			mui.init({
				pullRefresh: {
					container: '#pullrefresh',
					up: {
						contentrefresh: '正在加载...',
						callback: pullupRefresh
					}
				}
			});
			
			mui('#content').on('tap', 'a', function() {
				var href=this.getAttribute("href");
				mui.openWindow({
					id: 'detail',
					url: href
				})
			});

			
			var pageNumber = 1;
			/**
			 * 上拉加载具体业务实现
			 */
			 function pullupRefresh() {
					mui.ajax({
						type: "get",
						url: "<%=basePath %>admin/order/refresh",
						data: {
							pageNumber: pageNumber,
							pageSize: "15"
						},
						async: true,
						dataType: "json",
						success: function(data) {
							pageNumber++;
							mui('#pullrefresh').pullRefresh().endPullupToRefresh((pageNumber > data.totalPage)); //参数为true代表没有更多数据了。
							var table = document.body.querySelector('.mui-table-view');
							mui.each(data.list, function(index, _data) {
								var li = document.createElement('li');
	                            li.className = 'mui-table-view-cell';
	                            li.innerHTML = _data.order_time + '&nbsp' + _data.name + '&nbsp' + _data.tel;
		                        //下拉刷新，新纪录插到最前面；
		                        table.appendChild(li);
							});
						}
					});
				}
			if (mui.os.plus) {
				mui.plusReady(function() {
					setTimeout(function() {
						mui('#pullrefresh').pullRefresh().pullupLoading();
					}, 500);

				});
			} else {
				mui.ready(function() {
					mui('#pullrefresh').pullRefresh().pullupLoading();
				});
			}
		</script>
	</body>

</html>