<%@page import="com.sqr.co.controller.MenuController"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="com.sqr.co.controller.*"%>  
<%@ page import="java.util.List"%>  
<%@ page import="com.sqr.co.viewModel.*"%>
<%@ page import="com.sqr.co.common.*"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
<title>产品中心-PageAdmin内容管理系统-企业级网站内容管理解决方案</title>
<meta name="keywords" />
<meta name="description" />
<meta name="author" content="PageAdmin CMS"
	data-url="http://www.pageadmin.net" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,user-scalable=0,minimal-ui" />
<meta name="format-detection" content="telephone=no" />
<meta name="renderer" content="webkit" />
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/animate.min.css" />
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/swiper.min.css" />
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/base.css" />
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/style.css?v=4.0.14" />
<script src="${ctx}/templates/companydefault/Js/jquery.min.js"></script>
<script src="${ctx}/templates/companydefault/Js/basic.js"></script>
<script src="${ctx}/templates/companydefault/Js/script.js"></script>
<script src="${ctx}/templates/companydefault/Js/swiper.min.js"></script>
<!--[if lte IE 9]>
        <script src="/Incs/bootstrap/js/respond.min.js"></script>
        <script src="/Incs/bootstrap/js/html5.js"></script>
    <![endif]-->
</head>
<body>

<%
  new WebHelper().getMenuTree();
%> 
<div class="header clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-3 float-lg-left">
                <a class="logo" href="http://demo.pageadmin.net/">
                    <img src="${ctx}/upload/images/2019/04/25/2359336760.png" />

                </a>
            </div>
            <div class="col-md-9">
                <div class="nav text-right col-md-right" id="navMenu">
                <c:forEach items="${menuTree}" var="m">
                    <ul>
                        <li data-id="${m.id}">
                        	<a href="${ctx}/${m.controller}/${m.action}">${m.name }</a>
                        	<c:if test="${m.children!=null && m.children.size()>0}"> 
                        		
                        		<ul>
                        		<c:forEach items="${m.children}" var="c">
                        			<li data-id="${c.id}">
                        				<a href="${ctx}/${c.controller}/${c.action}">${c.name}</a>
			                        </li>
			                   
                        		</c:forEach>
                        		 </ul>
                        	</c:if>
                        </li>
                    </ul>
                </c:forEach>

                   </div>
            </div>
            <div class="mask-bg" id="maskBg"></div>
            <div class="right-icon-box">
                <i class="fa fa-search" aria-hidden="true" id="searchBtn"></i>
                <i class="fa fa-remove hidden" id="removeSearch"></i>
                <i class="fa fa-bars" id="navToggle"></i>
            </div>
        </div>
    </div>
</div>



	

	<!-- 搜索隐藏模块-->
	<div class="search-show">
		<div class="box container">
			<div class="title">
				<input type="text" class="s-input" id="input-search"
					placeholder="请输入你要查找的产品" /> <i class="fa fa-search s-btn"></i>
			</div>
			<div class="hot-word">
				<div class="text">热搜产品</div>
				<ul>
					<li><a href="/product/Search/?kw=%e7%93%b7%e7%a0%96">瓷砖</a></li>
					<li><a
						href="/product/Search/?kw=%e7%99%bd%e7%8e%89%e7%93%b7%e7%a0%96">白玉瓷砖</a></li>
					<li><a
						href="/product/Search/?kw=%e5%8e%9f%e7%9f%b3%e7%93%b7%e7%a0%96">原石瓷砖</a></li>
					<li><a
						href="/product/Search/?kw=%e6%88%b7%e5%a4%96%e5%9c%b0%e6%9d%bf">户外地板</a></li>
					<li><a href="/product/Search/?kw=%e6%b1%89%e7%99%bd%e7%8e%89">汉白玉</a></li>
					<li><a href="/product/Search/?kw=%e5%a4%a7%e7%90%86%e7%9f%b3">大理石</a></li>
					<li><a
						href="/product/Search/?kw=%e6%b5%b4%e5%ae%a4%e7%93%b7%e7%a0%96">浴室瓷砖</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="search-bg" id="SearchMask"></div>

	<script type="text/javascript">
		var $navToggle = $("#navToggle");//手机端菜单图标
		var $maskBg = $("#maskBg");//遮挡层
		var $navMenu = $("#navMenu");
		$navToggle.on("click", function() {
			$maskBg.addClass("active");
			$navMenu.addClass("active");
		});
		$maskBg.on("click", function() {
			$maskBg.removeClass("active");
			$navMenu.removeClass("active");
		});
		$navMenu.children("ul").find("li").InitNav(46, 46);//初始化响应式菜单

		//搜索展示
		var $searchBtn = $('#searchBtn');
		var $removeSearch = $('#removeSearch');
		var $searchshow = $('.search-show');
		var $searchbg = $('.search-bg');
		$searchBtn.on("click", function() {
			$(this).toggleClass("hidden");
			$removeSearch.toggleClass("hidden");
			$searchshow.slideToggle();
			//$searchbg.toggle();
		})
		$removeSearch.on("click", function() {
			$(this).toggleClass("hidden");
			$searchBtn.toggleClass("hidden");
			$searchshow.slideUp();
			//$searchbg.hide();
		})

		var keyword = "";
		var $s_input = $(".s-input");
		$(".s-btn").on("click", function() {
			keyword = $s_input.val();
			if (keyword != "") {
				location.href = "/product/Search/?kw=" + keyword;
			}
		});
		$(".s-input").on("keydown", function(event) {
			var key = event.which;
			if (key == 13) {
				keyword = $s_input.val();
				if (keyword != "") {
					location.href = "/product/Search/?kw=" + keyword;
				}
			}
		});
	</script>



</body>
</html>