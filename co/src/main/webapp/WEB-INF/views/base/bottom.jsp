<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.sqr.co.common.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		new WebHelper().getMenuTree();
	%>
	<footer class="padding-top-30 padding-bottom-40">
		<div class="container">
			<div style=" text-algin:center;color:white;">合作伙伴</div>
			<ul class="row text-white" style="disply:inline-block">

				<li class="col-sm-8 col-xs-12">
				<a href="/About/Index?p=3&amp;t=1"
					target="_blank" rel="nofollow"> <img
						src="https://imagefile.zac.cn//ZaWeb/2016/11/28/a5e4fd4e-564c-452c-aa43-8cd7847dd602.png"
						alt="IFC" title="IFC" style="width: 140px; height: 38px">
				</a>
				<a	target="_blank" rel="nofollow"> <img
						src="https://imagefile.zac.cn//ZaWeb/2016/11/28/1c7947e4-c04a-4db1-b903-602b4fc6a7b0.png"
						alt="中国建设银行" title="中国建设银行" style="width: 140px; height: 38px">
				</a>
				<a	target="_blank" rel="nofollow"> <img
						src="https://imagefile.zac.cn//ZaWeb/2016/11/28/6f3fe4d8-f94b-4a18-a96e-1086d7206dbb.png"
						alt="中国银行" title="中国银行" style="width: 140px; height: 38px">
				</a>
				<a	target="_blank" rel="nofollow"> <img
						src="https://imagefile.zac.cn//ZaWeb/2017/08/15/17b15a01-5aef-41f8-8f37-e51dce3915b6.png"
						alt="中国人民保险集团" title="中国人民保险集团" style="width: 140px; height: 38px">
				</a>
				<a	target="_blank" rel="nofollow"> <img
						src="https://imagefile.zac.cn//ZaWeb/2016/11/28/8357cc71-5915-4bba-aa6e-6bfb4d062dec.png"
						alt="国安村镇银行" title="国安村镇银行" style="width: 140px; height: 38px">
				</a>
				<a	target="_blank" rel="nofollow"> <img
						src="https://imagefile.zac.cn//ZaWeb/2016/11/28/423abf90-7701-4067-8822-fc7c6f870bb8.png"
						alt="廊坊银行" title="廊坊银行" style="width: 140px; height: 38px">
				</a>
				</li>

			</ul>
			<div class="copyright text-left text-lg-center">
				<a href="http://www.pageadmin.net" target="_blank"
					class="text-white">Powered By PageAdmin V4.0.10</a>
			</div>
		</div>
	</footer>

	<a href="#" id="toTop" style="display: inline;"><span
		id="toTopHover" style="opacity: 0;"></span>To Top</a>


</body>
</html>