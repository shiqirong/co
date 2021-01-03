<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>产品中心-PageAdmin内容管理系统-企业级网站内容管理解决方案</title>
<body>

	<jsp:include page="/WEB-INF/views/base/top.jsp" flush="true"/>

	<div class="swiper-container banner" id="banner">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="${ctx}/upload/images/2019/04/25/2359594830.jpg">
			</div>
			<div class="swiper-slide">
				<img src="${ctx}/upload/images/2019/04/25/2359594831.jpg">
			</div>
		</div>
		<!-- 如果需要分页器 -->
		<div class="swiper-pagination"></div>

		<!-- 如果需要导航按钮 -->
		<div class="swiper-button-prev swiper-button-white"></div>
		<div class="swiper-button-next swiper-button-white"></div>
		<!-- 如果需要滚动条 -->
		<div class="swiper-scrollbar"></div>
	</div>
	<script>
		var mySwiper = new Swiper('#banner', {
			//direction: 'vertical', // 垂直切换选项
			loop : true, // 循环模式选项
			effect : 'slide',

			// 如果需要分页器
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},

			// 如果需要前进后退按钮
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},

			// 如果需要滚动条
			scrollbar : {
				el : '.swiper-scrollbar',
			},
		})
	</script>

<div class="container padding-top-40 padding-bottom-20">
    <div class="row">
        <div class="col-md-3 text-center text-md-left wow fadeInDown">
            @Html.LoadImg("images/companyIcon.png")
        </div>
        <div class="col-md-9 wow fadeInUp">
            <p class="font-size-24 text-red text-center text-lg-left line-height-2-5">中山市某某某服务有限公司 </p>
            <p>
                PageAdmin内容管理系统V4.0.10，基于当前最流行的MVC框架全新开发，强大的管理功能，良好的用户操作体验，开发式的功能扩展，让各种类型网站制作更加便捷和灵活。
            </p>
            <p class="line-height-2 padding-top-20">
                PageAdmin在国内拥有超过100万的用户，广泛用于政府、企业、学校教育和资讯门户等各个行业领域。

                系统从2008发布至今，经过数十次大大小小的升级，”精益求精，永不止步“是我们的开发系统的宗旨，力求功能更强，更灵活，更好用，以达到更好的用户体验。

                我们以"为客户创造效益"为核心经营理念，致力于为用户提供最优秀的网站管理系统，帮助客户摆脱技术捆扰全心投入到网站运营，携手PageAdmin，共同迈向事业的新高点。

                我们坚信采用PageAdmin系统来架构您的网站会是一个明智的选择，这将让你后续网站更容易维护、更自由的扩展，真正实现自己的网站自己管理，同时希望每个用户都可以提供您宝贵的建议，这个是我们不断升级和改进的动力和源泉。

                欢迎提出您宝贵的意见!
            </p>
        </div>
    </div>
    <div class="text-center wow fadeInUp">
        <a class="btn-more" href="/about/">查看详情&gt;&gt;</a>
    </div>
</div>

<div class="module-box product-module-box">
    <div class="module-title wow fadeInDown">
        <div class="cn-title">产品展示</div>
        <div class="en-title"><i></i><span>LATEST PRODUCTS</span><i></i></div>
    </div>
    <div class="container clearfix images-list imgae-same-size" id="productList">
        <div class="row">
            @{
                foreach (dynamic item in Html.InfoDataList(new { ColumnId = 46 }))
                {
                    string url = Html.InfoDataUrl((int)item.ColumnId, (int)item.Id);
                    string thumbnail = item.Thumbnail;
                    <div class="col-md-avg-5 col-sm-4 col-xs-6 item wow fadeInUp">
                        <a href="@url" target="_blank">
                            <img src="@item.Thumbnail" border="0">
                        </a>
                        <a href="@url" target="_blank" class="text-center line-height-3 font-weight-600">
                            @item.Title
                        </a>
                    </div>
                }
            }
        </div>
    </div>
    <div class="text-center wow fadeInUp"><a class="btn-more" href="@Html.ColumnUrl(46)" target="_blank">查看更多 &gt;</a></div>
</div>

<div class="module-box">
    <div class="module-title wow fadeInDown">
        <span class="cn-title">我们的优势</span>
        <div class="en-title"><i></i><span>OUR ADVANTAGES</span><i></i></div>
    </div>
    <div class="container">
        <ul class="row advantages-list">
            <li class="col-sm-3 wow fadeInUp">
                <p class="text-center">
                    <img src="@templateDirectory/images/ys1.png" />
                </p>
                <p class="text-center font-size-20">
                    产品优势
                </p>
                <p class="text-center">
                    产品纹理效法天然石材、质感温润细腻、防污抗压耐磨，装饰效果美观大观，彰显出强烈的文化品位与时尚气质，使产品更好地与空间融为一体，达到产品的完美
                </p>
            </li>
            <li class="col-sm-3  wow fadeInUp">
                <p class="text-center">
                    <img src="@templateDirectory/images/ys2.png" />
                </p>
                <p class="text-center font-size-20">研发优势 </p>
                <p>
                    庞大的研发团队做支撑, 不断研发出优秀经典的产品。并联合意大利、西班牙等多家国际陶瓷技术公司、陶瓷工业设计公司等力量，加大新产品、新技术的研发
                </p>
            </li>
            <li class="col-sm-3  wow fadeInUp">
                <p class="text-center">
                    <img src="@templateDirectory/images/ys3.png" />
                </p>
                <p class="text-center font-size-20">品质优势</p>
                <p>
                    通过ISO9001:2000国际质量体系认证，产品品质得到充分保证。在全面参照国际标准研发技术的基础上，公司凭借先进的现代化生产和对产品质量的执着追求
                </p>
            </li>
            <li class="col-sm-3  wow fadeInUp">
                <p class="text-center">
                    <img src="@templateDirectory/images/ys4.png" />
                </p>
                <p class="text-center font-size-20">生产优势</p>
                <p>
                    100吨中铝球球磨机、意大利“西斯特姆”滚筒雕刻印花机等，438米长的全自动工控辊道窑16条，计算机控制系统的7200T自动压机，年生产能力超过7000万平米。
                </p>
            </li>
        </ul>
    </div>
</div>

<div class="module-box">
    <div class="module-title wow fadeInDown">
        <span class="cn-title">工程案例</span>
        <div class="en-title">
            <i></i><span>PROJECT CASES</span><i></i>
        </div>
    </div>
    <div style="padding-left:15px;padding-right:15px;">
        <div class="row case-list imgae-same-size overflow-hidden" id="caseList">
            @{
            foreach (dynamic item in Html.InfoDataList(new { ColumnId = 47, ShowNumber = 8 }))
            {
                string url = Html.InfoDataUrl((int)item.ColumnId, (int)item.Id);
                string thumbnail = item.Thumbnail;
                <div class="item col-md-3 col-xs-6 wow fadeInUp">
                    <a href="@url">
                        <img class="image" src="@thumbnail">
                        <span class="tit">@item.Title</span>
                        <div class="cover-bg"></div>
                    </a>
                </div>
        }
            }
        </div>

    </div>
 
   
    <div class="text-center wow fadeInUp">
        <a class="btn-more" href="@Html.ColumnUrl(47)" target="_blank">查看更多 ></a>
    </div>
</div>

	<jsp:include page="/WEB-INF/views/base/bottom.jsp" flush="true"/>
</body>
</html>
