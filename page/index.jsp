<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./filesgenerated/___forInclude_index.jsp"%>
<c:set var="mainLayout__title">首页</c:set>
<c:set var="mainLayout__topStyle">${pageInjectStyle}</c:set>
<c:set var="mainLayout__content">

	<div class="index_topTabViewRoot">

	</div>
	<div class="index_mainList">
	主要内容
	</div>
	<div class="common_navBarRoot">

	</div>
	<div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>
