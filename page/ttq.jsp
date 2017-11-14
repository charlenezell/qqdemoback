<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./filesgenerated/___forInclude_ttq.jsp"%>
<%-- TODO:

1. 这个页面的设置需要在电脑版加设置功能

 --%>
<c:set var="mainLayout__title">圈子详情页</c:set>
<c:set var="mainLayout__topStyle">
	${pageInjectStyle}
</c:set>
<c:set var="mainLayout__content">
	<div class="ttqDetailPanel" style="background-image:url('${ttqbackgroundImg}')">
		<div class="ttqDetailPanel__wimg"><img src="${iconUrl}" alt=""></div>
		<div class="ttqDetailPanel__t">${ttqName}</div>
		<div class="ttqDetailPanel__desc">
			<span class="ttqDetailPanel__descItem">
				<span class="ttqDetailPanel__descItem__k">${memberName}</span><span class="ttqDetailPanel__descItem__v">${memberNum}</span>
			</span>
			<span class="ttqDetailPanel__descItem">
				<span class="ttqDetailPanel__descItem__k">今日话题</span><span class="ttqDetailPanel__descItem__v">${todayTopicCount}</span>
			</span>
			<span class="ttqDetailPanel__descItem">
				<span class="ttqDetailPanel__descItem__k">昨日话题</span><span class="ttqDetailPanel__descItem__v">${yesterdayTopicCount}</span>
			</span>
		</div>
	</div>
	<div class="tabView01 whiteBackground bottomNav__maincontent">
		<span class="tabView01__tabs">
			<span class="tabView01__tab ${blockId==0?'tabView01__tab--on':''}">
				<i class="tabView01__tabname">全部</i>
			</span>
			<c:forEach items="${ttqCategory.ttqBlockList}" var="item" varStatus="status">
				<span class="tabView01__tab ${blockId==item.blockId?'tabView01__tab--on':''}">
					<i class="tabView01__tabname">${item.blockName}</i>
				</span>
			</c:forEach>
		</span>
		<div class="tabView01__ctrls">

		</div>
		<div class="tabView01__contents">
			<div class="commonpaddingContainer  bottomControlbar--contentPadding">
			<c:forEach items="${highPiority}" var="item" varStatus="status">
				<a class="highPiorityItem">
					<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="${item.isSiteHightPiority?'#c_commonIcons_highestp':'#c_commonIcons_highp'}"></use></svg><span class="highPiorityItem__t">${item.title}</span>
				</a>
			</c:forEach>
			<div class="topicList">
			<c:forEach items="${topics}" var="item" varStatus="status">
				<a class="topicItem01 topicItem01--${fn:length(item.imgs)}">
					<p class="topicItem01__t">${item.title}${item.isJing?'<span class="topicItem01__icon__jing">精</span>':''}</p>
					<c:if test="${fn:length(item.imgs) > 0}">
						<div class="topicItem01__thumb">
						<c:forEach items="${item.imgs}" var="img" varStatus="status">
							<span class="wimg"> <img src="${img}" alt=""  /></span>
						</c:forEach>
					</div>
					</c:if>
					<p class="topicItem01__desc">${item.desc}</p>
					<div class="topicItem01__ctrls">
						<div class="topicItem01__userName">${item.userName}</div>
						<div class="topicItem01__postTime">${item.time}</div>
						<div class="topicItem01__zan selfInitModule" data-method="init" data-mod="zan" data-config='{"id":${item.id}}'>
							<svg class="commonIcons commonIcons--28"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_thumb"></use></svg>
							<span class="topicItem01__zan__num">${item.zan}</span>
						</div>
						<div class="topicItem01__comment">
							<svg class="commonIcons commonIcons--28"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_comment"></use></svg>
							<span class="topicItem01__comment__num">${item.commentNumb}</span>
						</div>
					</div>
				</a>
			</c:forEach>
			</div>
			</div>
			<div class="tabView01__contents__ctrls"></div>
		</div>
	</div>
	<div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>
