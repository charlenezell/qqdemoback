<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./filesgenerated/___forInclude_index.jsp"%>
<c:set var="mainLayout__title">首页</c:set>
<c:set var="mainLayout__topStyle">
${pageInjectStyle}
</c:set>
<c:set var="mainLayout__content">

	<!--顶部导航 start-->
	<div class="topNav clearfix topNav--background-grey">
		<div class="topNav__category">
			<a href="###" class="item item_on">推荐</a>
			<a href="###" class="item">游戏</a>
			<a href="###" class="item">动漫</a>
			<a href="###" class="item">明星</a>
			<a href="###" class="item">搞笑</a>
			<a href="###" class="item">其他</a>
		</div>
		<div class="topNav__ctrls">

		</div>
	</div>
	<!--顶部导航 end-->
	<div class="topNav__mainContent bottomNav__maincontent">
			<!--焦点图 start-->
	<div class="commonSwiper01">
		  <div class="swiper-container commonSwiper01__container">
		    <div class="swiper-wrapper commonSwiper01__wpage">
		    	<c:forEach items="${imgAds}" var="item" varStatus="status">
		    		<div class="commonSwiper01__page swiper-slide">
					    <a href="${item.link}" target="_blank" class="commonSwiper01__item tongjiBtn_js" tongjiName="banner" title="${item.title}">
					    	<img data-src="${item.img}"  class="swiper-lazy">
					    	<%-- <span class="commonSwiper01__item__t">${item.title}</span> --%>
					    	<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
					  	</a>
					</div>
		    	</c:forEach>
		    </div>
		    <%-- <div class="commonSwiper01__pager"></div> --%>
		  </div>
	</div>
	<!--焦点图 end-->
	<div class="commonpaddingContainer">
	<!--话题列表 start-->
	<ul class="indexPromoteList">
		<c:forEach items="${promoteData}" var="item" varStatus="status">
			<li class="promoteItem01 ${item.isAd?'promoteItem01--gg':''} promoteItem01--${fn:length(item.imgs)}">
				<p class="promoteItem01__t">${item.title}</p>
				<c:if test="${fn:length(item.imgs) > 0}">
					<div class="promoteItem01__thumb">
					<c:forEach items="${item.imgs}" var="img" varStatus="status">
						<span class="wimg"> <img src="${img}" alt=""  /></span>
					</c:forEach>
				</div>
				</c:if>
				<c:if test="${item.isTopic}">
						<div class="promoteItem01__ctrls">
							<div class="promoteItem01__zan selfInitModule" data-method="init" data-mod="zan" data-config='{"id":${item.topicId}}'>
								<span class="promoteItem01__zan__num">${item.zanNumb}</span>
							</div>
							<div class="promoteItem01__comment">
								<span class="promoteItem01__comment__num">${item.commentNum}</span>
							</div>
						</div>
				</c:if>
		</li>
		</c:forEach>
	</ul>
	<!--话题列表 end-->
	</div>
	</div>


	<div class="common_navBarRoot">

	</div>
	<div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>
