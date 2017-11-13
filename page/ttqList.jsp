<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./filesgenerated/___forInclude_ttqList.jsp"%>
<c:set var="mainLayout__title">圈子</c:set>
<c:set var="mainLayout__topStyle">
	${pageInjectStyle}
</c:set>
<c:set var="mainLayout__content">

	<!--顶部导航 start-->

	<div class="topNav clearfix topNav--background-grey">
		<div class="topNav__category topNav__category__tabs" data-tabid="1">
			<a href="###" class="item">我加入的</a>
			<a href="###" class="item">全部圈子</a>
		</div>
		<div class="topNav__ctrls">

		</div>
	</div>
	<!--顶部导航 end-->
	<div class="topNav__mainContent" >
	<%--
		███╗   ███╗██╗   ██╗   ██╗ ██████╗ ██╗███╗   ██╗
		████╗ ████║╚██╗ ██╔╝   ██║██╔═══██╗██║████╗  ██║
		██╔████╔██║ ╚████╔╝    ██║██║   ██║██║██╔██╗ ██║
		██║╚██╔╝██║  ╚██╔╝██   ██║██║   ██║██║██║╚██╗██║
		██║ ╚═╝ ██║   ██║ ╚█████╔╝╚██████╔╝██║██║ ╚████║
		╚═╝     ╚═╝   ╚═╝  ╚════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝
	 --%>
		<div class="myJoinedTTQPanel topNav__category__content bottomNav__maincontent"  data-tabid="1">
			<div class="myJoinedTTQ whiteBackground">
				<c:forEach items="${myJoinedTTQ}" var="ttq" varStatus="status">
				<a href="/ttq" class="ttqItem01" data-ttqid="${ttq.ttqId}">
					<div class="ttqItem01__wimg">
						<img src="${ttq.iconUrl}">
					</div>
					<span class="ttqItem01__t">${ttq.ttqName}</span>
				</a>
				</c:forEach>
			</div>
			<div class="grayTxtTips">
			你可能感兴趣的圈子
			</div>
				<div class="ttqSuggestion commonpaddingContainer">
					<c:forEach items="${myPromoteTTQ}" var="item" varStatus="status">
						<div class="ttqItem02 selfInitModule" data-method="init" data-mod="ttqItem02" data-config='{"ttqId":${item.ttqId}}'>
							<div class="ttqItem02__r1">
								<div class="ttqItem02__c2">
									<a href="/ttq" class="ttqItem02__icon"><img src="${item.iconUrl}" alt=""></a>
								</div>
								<div class="ttqItem02__c1">
									<div class="ttqItem02__info">
										<div class="ttqItem02__info__t">${item.ttqName}</div>
										<div class="ttqItem02__info__desc">
											<span class="ttqItem02__descItem">
												<span class="ttqItem02__descItem__k">成员:</span><span class="ttqItem02__descItem__v">${item.memberNumb}</span>
											</span>
											<span class="ttqItem02__descItem">
												<span class="ttqItem02__descItem__k">话题数:</span><span class="ttqItem02__descItem__v">${item.todayTopicCount}</span>
											</span>
										</div>
									</div>
									<span class="ttqItem02__joinBtn">加入</span>
								</div>
							</div>
							<ul class="ttqItem02__r2">
								<li class="ttqItem02__topicItem"><a href="">就看到了分散附近的快乐撒九分裤打脸萨九分裤打脸萨发掘的快乐撒</a></li>
								<li class="ttqItem02__topicItem"><a href="">就看到了分散附近的快乐撒九分裤打脸萨九分裤打脸萨发掘的快乐撒</a></li>							</ul>
						</div>
					</c:forEach>
				</div>
			</div>
	<%--

 	 █████╗ ██╗     ██╗
	██╔══██╗██║     ██║
	███████║██║     ██║
	██╔══██║██║     ██║
	██║  ██║███████╗███████╗
	╚═╝  ╚═╝╚══════╝╚══════╝

	 --%>
		<div class="tabView01 selfInitModule topNav__category__content whiteBackground bottomNav__maincontent" data-method="init" data-mod="tabView01"  data-tabid="1">
			<span class="tabView01__tabs">
				<c:forEach items="${ttqCategorys}" var="item" varStatus="status">
					<span class="tabView01__tab" data-typeid="${item.id}">
						<i class="tabView01__tabname">${item.name}</i>
					</span>
				</c:forEach>
			</span>
			<div class="tabView01__contents">
				<c:forEach items="${ttqCategorys}" var="item" varStatus="status">
					<div class="tabView01__content" data-typeid="${item.id}">
						<c:forEach items="${item.list}" var="ttq" varStatus="status">
							<a href="/ttq" class="ttqItem01" data-ttqid="${ttq.ttqId}">
								<div class="ttqItem01__wimg">
									<img src="${ttq.iconUrl}">
								</div>
								<span class="ttqItem01__t">${ttq.ttqName}</span>
							</a>
						</c:forEach>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="common_navBarRoot">

	</div>
	<div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>
