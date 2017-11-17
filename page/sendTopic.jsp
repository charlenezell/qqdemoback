<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./filesgenerated/___forInclude_sendTopic.jsp"%>

<c:set var="mainLayout__title">发帖子页</c:set>
<c:set var="mainLayout__topStyle">
	${pageInjectStyle}
</c:set>
<c:set var="mainLayout__content">
	<div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>
