<%@ page contentType="text/html; charset=euc-kr"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${resultPage.currentPage > resultPage.pageUnit }">
	<a href="javascript:fncGetList('${resultPage.beginUnitPage - 1 }')">������</a>
</c:if>
<%-- <%
for (int i = resultPage.getBeginUnitPage(); i <= resultPage.getEndUnitPage(); i++) {
%> --%>
<c:forEach var="i" begin="${resultPage.beginUnitPage }"
	end="${resultPage.endUnitPage }" step="1">
	<a href="javascript:fncGetList('${i }')">${i }</a>
</c:forEach>

<c:if test="${resultPage.endUnitPage<resultPage.maxPage }">
	<a href="javascript:fncGetList('${resultPage.endUnitPage + 1 }')">���Ģ�</a>
</c:if>
