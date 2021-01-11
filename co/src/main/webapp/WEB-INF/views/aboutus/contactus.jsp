<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>联系我们</title>
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/site.css" />
<script
	src="https://api.map.baidu.com/api?v=2.0&ak=FyI0NOQh8s1Pj8lQ82THbXVY"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/top.jsp"></jsp:include>
	<div class="container page_content padding-top-20">
		<div class="row">
			<div class="col-lg-12">
				<div class="contact-content"
					style="height: 237px; background: url(/Content/images/contact-us-info-bg.jpg) no-repeat;">

					<div style="padding: 50px 0 0 40px;">
						<div style="font-size: 16px;">
							<b>总部电话：</b>0755-83579700
						</div>
						<div style="font-size: 16px;">
							<b>传真号码：</b>0755-82556352
						</div>
						<div style="font-size: 16px;">
							<b>商务合作：</b>bd@zac.cn
						</div>
						<div style="font-size: 16px;">
							<b>广告合作：</b>GG@zac.cn
						</div>
						<div style="font-size: 16px;">
							<b>总部地址：</b>深圳市福田区深南大道7028号时代科技大厦9F
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div style="width: 697px; height: 550px; border: #ccc solid 1px;"
					id="dituContent"></div>

				<script type="text/javascript">
					$(function() {
						//创建和初始化地图函数：
						function initMap() {
							createMap();//创建地图
							setMapEvent();//设置地图事件
							addMapControl();//向地图添加控件
							addMarker();//向地图中添加marker
						}

						//创建地图函数：
						function createMap() {
							var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
							var point = new BMap.Point(115.949652, 28.693851);//定义一个中心点坐标
							map.centerAndZoom(point, 18);//设定地图的中心点和坐标并将地图显示在地图容器中
							window.map = map;//将map变量存储在全局
						}

						//地图事件设置函数：
						function setMapEvent() {
							map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
							map.enableScrollWheelZoom();//启用地图滚轮放大缩小
							map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
							map.enableKeyboard();//启用键盘上下左右键移动地图
						}

						//地图控件添加函数：
						function addMapControl() {
							//向地图中添加缩放控件
							var ctrl_nav = new BMap.NavigationControl({
								anchor : BMAP_ANCHOR_TOP_LEFT,
								type : BMAP_NAVIGATION_CONTROL_LARGE
							});
							map.addControl(ctrl_nav);
							//向地图中添加缩略图控件
							var ctrl_ove = new BMap.OverviewMapControl({
								anchor : BMAP_ANCHOR_BOTTOM_RIGHT,
								isOpen : 1
							});
							map.addControl(ctrl_ove);
							//向地图中添加比例尺控件
							var ctrl_sca = new BMap.ScaleControl({
								anchor : BMAP_ANCHOR_BOTTOM_LEFT
							});
							map.addControl(ctrl_sca);
						}

						//标注点数组
						var markerArr = [ {
							title : "百恒网络",
							content : "电话：0791-88117053手机：15079002975",
							point : "115.950312|28.693447",
							isOpen : 1,
							icon : {
								w : 23,
								h : 25,
								l : 46,
								t : 21,
								x : 9,
								lb : 12
							}
						} ];
						//创建marker
						function addMarker() {
							for (var i = 0; i < markerArr.length; i++) {
								var json = markerArr[i];
								var p0 = json.point.split("|")[0];
								var p1 = json.point.split("|")[1];
								var point = new BMap.Point(p0, p1);
								var iconImg = createIcon(json.icon);
								var marker = new BMap.Marker(point, {
									icon : iconImg
								});
								var iw = createInfoWindow(i);
								var label = new BMap.Label(json.title, {
									"offset" : new BMap.Size(json.icon.lb
											- json.icon.x + 10, -20)
								});
								marker.setLabel(label);
								map.addOverlay(marker);
								label.setStyle({
									borderColor : "#808080",
									color : "#333",
									cursor : "pointer"
								});

								(function() {
									var index = i;
									var _iw = createInfoWindow(i);
									var _marker = marker;
									_marker.addEventListener("click",
											function() {
												this.openInfoWindow(_iw);
											});
									_iw.addEventListener("open", function() {
										_marker.getLabel().hide();
									})
									_iw.addEventListener("close", function() {
										_marker.getLabel().show();
									})
									label.addEventListener("click", function() {
										_marker.openInfoWindow(_iw);
									})
									if (!!json.isOpen) {
										label.hide();
										_marker.openInfoWindow(_iw);
									}
								})()
							}
						}
						//创建InfoWindow
						function createInfoWindow(i) {
							var json = markerArr[i];
							var iw = new BMap.InfoWindow(
									"<b class='iw_poi_title' title='" + json.title + "'>"
											+ json.title
											+ "</b><div class='iw_poi_content'>"
											+ json.content + "</div>");
							return iw;
						}
						//创建一个Icon
						function createIcon(json) {
							var icon = new BMap.Icon(
									"http://map.baidu.com/image/us_cursor.gif",
									new BMap.Size(json.w, json.h), {
										imageOffset : new BMap.Size(-json.l,
												-json.t),
										infoWindowOffset : new BMap.Size(
												json.lb + 5, 1),
										offset : new BMap.Size(json.x, json.h)
									})
							return icon;
						}

						initMap();//创建和初始化地图
					});
				</script>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/base/bottom.jsp"></jsp:include>
</body>
</html>