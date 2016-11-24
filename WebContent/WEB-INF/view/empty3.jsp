<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
<c:when test="${rst ne null }">
[
{
"ask":"${rst }"
}
]
</c:when>
<c:when test="${list.size()-1 ne -1 }">
[
<c:forEach var="i" begin="0" end="${list.size()-1 }">
{
<c:if test="${i ne 0 }">,</c:if>
"like":"${list[i].get('L_SELECTLIKER') }"
}
</c:forEach>
]
</c:when>
</c:choose>