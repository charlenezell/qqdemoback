<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./filesgenerated/___forInclude_myHome.jsp"%>
<c:set var="mainLayout__title">我的圈圈页</c:set>
<c:set var="mainLayout__topStyle">
	${pageInjectStyle}
</c:set>
<c:set var="mainLayout__content">
	<div class="topNav__nav"><a href="/ttq?12" class="topNav__navItem"><span class="topNav__navItem__icon">&lt;</span>奥奇传说圈</a></div>
	<div class="topNav__ctrls">
			
					</div>
    <div class="ttqDetailPanel" style="background-image:url('${ttqbackgroundImg}')">
		<div class="ttqDetailPanel__wimg"><img src="${iconUrl}" alt=""></div>
		<div class="ttqDetailPanel__t">
            <span  class="level">Lv.23</span>
            <span  class="username">杯莫停在这</span><span  class="duodupid">(1234567890)</span>
            <span  class="sexIcon">
				<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_woman"></use></svg>
			</span>
        </div>
		<div class="ttqDetailPanel__desc">
			<span class="ttqDetailPanel__descItem">
				<span class="ttqDetailPanel__descItem__k">粉丝&nbsp;1698</span>
			</span>
             <span  class="level">|</span>
			<span class="ttqDetailPanel__descItem">
				<span class="ttqDetailPanel__descItem__k">关注&nbsp;1698</span>
			</span>
		</div>
        <div class="ttqDetailPanel__descTxt">
			hi，这里是小火车，小火车爱玩奥奇传说。
        </div>
	</div>
	<%--在线统计 start--%>
    <div class="commonpaddingContainer onlineCal">
		<div class="cont_hd clearfix">
			<span class="l">今日在线</span>
			<span class="r">我的圈币:456</span>
		</div>
		<div class="onlineCountWrap clearfix">	
			<div class="onlineIcon l"></div>
			<div class="onlineWrap pr">
				<div class="onlineTipsWrap">
					<span class="tip tip1"></span>
					<span class="tip tip2"></span>
					<span class="tip tip3"></span>
					<span class="tip tip4"></span>
				</div>
				<div class="onlineShowWrap pr">
					<div id="onlineProgressBar" class="pa" style="width: 0px;">
					</div>
					<div class="line line1 pa"></div>
					<div class="line line2 pa"></div>
					<div class="line line3 pa"></div>
					<div class="line line4 pa"></div>
					<div id="onlineSecond_js" class="pa" style="width: 34px;">01:49</div>
				</div>
				<div class="onlineTimeWrap pr">
					<span class="time time1">0″</span>
					<span class="time time2">10″</span>
					<span class="time time3">30″</span>
					<span class="time time4">50″</span>
					<span class="time time5">90″</span>
				</div>
			</div>
			<a href="javascript:void(0)" class="cannotgetQb r" id="getQb_js">领取圈币</a>
		</div>
    </div>
	<%--在线统计 end--%>
	<%--我的话题--%>
    <div class="commonpaddingContainer myTopic">
		<div class="cont_hd clearfix">
			<span class="l">我的话题</span>
		</div>
		<a href="###" class="myLinkItem clearfix">
			<span  class="icon">
				<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_topic"></use></svg>
			</span>
			<span class="txt">我的话题</span>
			<span class="r arrow">&gt;</span>
		</a>
		<a href="###" class="myLinkItem clearfix">
			<span  class="icon">
				<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_comment2"></use></svg>
			</span>
			<span class="txt">我的回复</span>
			<span class="r arrow">&gt;</span>
		</a>
		<a href="###" class="myLinkItem clearfix">
				<span  class="icon">
					<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_jing"></use></svg>
				</span>
				<span class="txt">我的精华</span>
				<span class="r arrow">&gt;</span>
			</a>
			<a href="###" class="myLinkItem clearfix">
				<span  class="icon">
					<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_collection"></use></svg>
				</span>
				<span class="txt">我的收藏</span>
				<span class="r arrow">&gt;</span>
			</a>
	</div>
	<%--我的好友--%>
    <div class="commonpaddingContainer myTopic">
		<div class="cont_hd clearfix">
			<span class="l">我的好友</span>
		</div>
		<a href="###" class="myLinkItem clearfix">
			<span  class="icon">
				<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_myFriend"></use></svg>
			</span>
			<span class="txt">我的好友</span>
			<span class="r arrow">&gt;</span>
		</a>
		<a href="###" class="myLinkItem clearfix">
			<span  class="icon">
				<svg class="commonIcons commonIcons--40"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_liuyan"></use></svg>
			</span>
			<span class="txt">我的留言板</span>
			<span class="r arrow">&gt;</span>
		</a>
	</div>
	<div class="someSetUp tC">
			<a href="###" class="btn">退出登录</a>
			<span class="line">|</span>        
			<a href="###" class="btn">意见反馈</a>
			<span class="line">|</span>
			<a href="http://qq.100bt.com/" class="btn">电脑版</a>
	</div>
	<div class="common_navBarRoot"></div>
    <div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>