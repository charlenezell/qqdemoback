<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="./filesgenerated/___forInclude_topic.jsp"%>

<c:set var="mainLayout__title">帖子页</c:set>
<c:set var="mainLayout__topStyle">
	${pageInjectStyle}
</c:set>
<c:set var="mainLayout__content">
	<div class="topicDetailView topNav__mainContent whiteBackground" >
		<div class="topicDetailView__t"><div class="commonpaddingContainer">${topic.title}</div></div>
		<%-- repeat --%>
		<c:forEach items="${commentList}" var="item" varStatus="status">
		<div class="topicDetailView__floorItem" data-commentid="${item.commentId}">
			<div class="commonpaddingContainer">
				<div class="topicDetailView__userInfo" data-uid="${item.author.id}">
					<div class="topicDetailView__userInfo__wimg"><img src="${item.author.avatar}" alt=""></div>
					<div class="topicDetailView__userInfo__c2">
						<div class="topicDetailView__userInfo__n">${item.author.userName}</div>
						<div class="topicDetailView__userInfo__info">
							<span class="topicDetailView__userInfo__floortag ${item.floorNum==1?'topicDetailView__userInfo__floortag--first':''}"><c:choose>
								<c:when test="${item.floorNum==1}">
									楼主
								</c:when>
								<c:otherwise>
									第${item.floorNum}楼
								</c:otherwise>
							</c:choose></span>
							<span class="topicDetailView__userInfo__time">${item.commentTime}</span>
							<span class="topicDetailView__userInfo__jubaobtn">举报</span>
						</div>
					</div>
					<div class="topicDetailView__userInfo__c3">
						<div class="topicDetailView__replyBtn" data-uid="${item.author.id}" data-uname="${item.author.userName}">
							<svg class="commonIcons commonIcons--48"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#c_commonIcons_reply"></use></svg>回复
						</div>
					</div>
				</div>
				<div class="topicDetailView__content">
					${item.content}
				</div>
			</div>
			<c:if test="${fn:length(item.replyList)>0}">
				<div class="topicDetailView__replys">
					<%-- repeat --%>
					<c:forEach items="${item.replyList}" var="replyItem" varStatus="status">
					<div class="topicDetailView__reply" data-commentid="${replyItem.commentId}" style="${status.index>1?'display:none':''}">
						<div class="topicDetailView__reply__content">
							<span class="topicDetailView__reply__k">
									<c:choose>
										<c:when test="${replyItem.quotedCommentUId!=null}">
											<a href="${replyItem.author.id}">${replyItem.author.userName}</a>回复了<a href="${replyItem.quotedCommentUId}">${replyItem.quotedCommentUName}</a>:
										</c:when>
										<c:otherwise>
											<a href="${replyItem.author.id}">${replyItem.author.userName}</a>:
										</c:otherwise>
									</c:choose>
							</span>
							<span class="topicDetailView__reply__v">${replyItem.content}</span>
						</div>
						<div class="topicDetailView__reply__info">
							<span class="topicDetailView__reply__info__time">${replyItem.commentTime}</span>
							<span class="topicDetailView__reply__info__jubaobtn">举报</span>
						</div>
					</div>
				</c:forEach>
				<%-- repeat --%>
				<c:if test="${fn:length(item.replyList)>2}">
					<span class="topicDetailView__reply__moreBtn">还有${fn:length(item.replyList)-2}条回复，查看全部</span>
				</c:if>
				</div>
			</c:if>
		</div>
		</c:forEach>

		<%-- repeat --%>
		<div class="commonPager01">
			<c:choose>
				<c:when test="${pager.thisPagerIndex==1}">
				<div class="commonPager01__last">上一页</div>
				</c:when>
				<c:otherwise>
					<a href="/topic?page=${pager.thisPagerIndex-1}" class="commonPager01__last">上一页</a>
				</c:otherwise>
			</c:choose>
			<div class="commonPager01__select">
			<select>
				<c:forEach var="item" varStatus="status" begin="1" end="${pager.totalPager}">
						<option value="item">第${item}/${pager.totalPager}页</option>
						<option value="item">第${item}/${pager.totalPager}页</option>
						<option value="item">第${item}/${pager.totalPager}页</option>
						<option value="item">第${item}/${pager.totalPager}页</option>
				</c:forEach>
			</select>
			</div>
			<c:choose>
				<c:when test="${pager.thisPagerIndex==pager.totalPager}">
				<div class="commonPager01__next">下一页</div>
				</c:when>
				<c:otherwise>
					<a href="/topic?page=${pager.thisPagerIndex+1}" class="commonPager01__next">下一页</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<div class="reactRoot"></div>
	${pageInjectScript}
</c:set>
<%@ include file="./common/mainLayout.jsp"%>
