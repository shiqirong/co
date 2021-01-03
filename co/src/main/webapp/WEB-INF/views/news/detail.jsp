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

	<div class="page_content">
	
		<div class="article">
			<div class="article_title">${article.title }</div>
			<div class="article_content">
				${article.content }
			</div>
		</div>
		<div class="fe_ntp">
            <div class="left">
            	<c:if test="${prevArticle!=null}">
                    <span>上一篇&nbsp;:&nbsp;</span><a href="${ctx}/news/detail/${prevArticle.id }">${prevArticle.title }</a>
                </c:if>
            </div>
            <div class="right">
            	<c:if test="${nextArticle!=null }">
                    <span>下一篇&nbsp;:&nbsp;</span><a href="${ctx}/news/detail/${nextArticle.id }">${nextArticle.title }</a>
                </c:if>
            </div>
        </div>
	</div>

	<jsp:include page="/WEB-INF/views/base/bottom.jsp"></jsp:include>
</body>
</html>