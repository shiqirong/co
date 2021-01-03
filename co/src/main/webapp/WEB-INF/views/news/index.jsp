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
<title>新闻首页</title>
<link rel="stylesheet"
	href="${ctx}/templates/companydefault/css/site.css" />
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/top.jsp"></jsp:include>

	<div class="container padding-top-20" style="min-height: 600px">
		<div class="row">
			<div class="col-lg-6">
				<div class="news_title">
					<h1>公司新闻</h1>
					<a href="/news/company">更多 <span>&gt;&gt;</span></a>
				</div>
				<div class="news-list">
					<ul>
						<c:forEach var="news" items="${newsList1}" varStatus="xh">
							<c:if test="${xh.first }">
							<li class="item item-first">
								<div>
	                        		<a href="/news/detail/202012225" class="img-width" target="_blank">
	                            		<img src="https://imagefile.zac.cn//ZaWeb/2020/12/28/27d8ff30-f955-4201-ab3a-ae0dc2d9a328.jpg" alt="中安信业四位党代表，参加市新兴金融行业党委第一次党员代表大会！" title="中安信业四位党代表，参加市新兴金融行业党委第一次党员代表大会！" style="width:550px;height:368px;">
			                            <div>
			                                <h1>${news.title }</h1>
			                                <p class="message-time"><span>日期： </span><i><fmt:formatDate value="${news.createtime}" pattern="yyyy-MM-dd" /></i></p>
			                                <p>${news.content2 }</p>
			                            </div>
	                        		</a>
	                			</div>
                			</li>
							</c:if>
							<c:if test="${!xm.first }">
								<li class="item">
									<span class="title"> 
										<a href="${news.id}" target="_self" title="${news.title }">${news.title }</a>
									</span> 
									<span class="date">
										<fmt:formatDate value="${news.createtime}" pattern="yyyy-MM-dd" />
									</span>
								</li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="news_title">
					<h1>热点新闻</h1>
					<a href="/news/company">更多 <span>&gt;&gt;</span></a>
				</div>
				<div class="news-list">
					<ul>
						<c:forEach var="news" items="${newsList2}" varStatus="xh">
							<c:if test="${xh.first }">
								<li class="item item-first">
									<div>
		                        		<a href="/news/detail/202012225" class="img-width" target="_blank">
		                            		<img src="https://imagefile.zac.cn//ZaWeb/2020/12/28/27d8ff30-f955-4201-ab3a-ae0dc2d9a328.jpg" alt="中安信业四位党代表，参加市新兴金融行业党委第一次党员代表大会！" title="中安信业四位党代表，参加市新兴金融行业党委第一次党员代表大会！" style="width:550px;height:368px;">
				                            <div>
				                                <h1>${news.title }</h1>
				                                <p class="message-time"><span>日期： </span><i><fmt:formatDate value="${news.createtime}" pattern="yyyy-MM-dd" /></i></p>
				                                <p>${news.content2 }</p>
				                            </div>
		                        		</a>
		                			</div>
	                			</li>
							</c:if>
							<c:if test="${!xh.first }">
								<li class="item"><span class="title"> <a
										href="${news.id}" target="_self" title="${news.title }">${news.title }</a>
								</span> <span class="date"><fmt:formatDate value="${news.createtime}" pattern="yyyy-MM-dd" /></span></li>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/base/bottom.jsp"></jsp:include>
</body>
</html>