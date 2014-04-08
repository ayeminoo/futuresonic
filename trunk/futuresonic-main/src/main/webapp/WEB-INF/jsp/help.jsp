<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><head>
    <%@ include file="head.jsp" %>
    <script type="text/javascript" src="<c:url value="/script/scripts.js"/>"></script>
</head>
<body class="mainframe bgcolor1">

<c:choose>
    <c:when test="${empty model.buildDate}">
        <fmt:message key="common.unknown" var="buildDateString"/>
    </c:when>
    <c:otherwise>
        <fmt:formatDate value="${model.buildDate}" dateStyle="long" var="buildDateString"/>
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${empty model.localVersion}">
        <fmt:message key="common.unknown" var="versionString"/>
    </c:when>
    <c:otherwise>
        <c:set var="versionString" value="${model.localVersion}"/>
    </c:otherwise>
</c:choose>

<h1>
    <img src="<spring:theme code="helpImage"/>" alt="">
    <fmt:message key="help.title"><fmt:param value="${model.brand}"/></fmt:message>
</h1>

<c:if test="${model.newVersionAvailable}">
    <p class="warning"><fmt:message key="help.upgrade"><fmt:param value="${model.brand}"/><fmt:param value="${model.latestVersion}"/></fmt:message>
	<img src="icons/default/new.png" width="48" hight="48" title="New Version"/>
	</p>
</c:if>

<table width="75%" class="ruleTable indent">
    <tr><td class="ruleTableHeader"><fmt:message key="help.version.title"/></td><td class="ruleTableCell">${versionString}</td></tr>
    <tr><td class="ruleTableHeader"><fmt:message key="help.server.title"/></td><td class="ruleTableCell">${model.serverInfo} (<sub:formatBytes bytes="${model.usedMemory}"/> / <sub:formatBytes bytes="${model.totalMemory}"/>)</td></tr>
    <tr><td class="ruleTableHeader"><fmt:message key="help.license.title"/></td><td class="ruleTableCell">
        <a href="http://www.gnu.org/copyleft/gpl.html" target="_blank"><img style="float:right;margin-left: 10px" alt="GPL 3.0" src="<c:url value="/icons/default/gpl.png"/>"></a>
        <fmt:message key="help.license.text"><fmt:param value="${model.brand}"/></fmt:message></td></tr>
    <tr><td class="ruleTableHeader"><fmt:message key="help.contact.title"/></td><td class="ruleTableCell"><fmt:message key="help.contact.text"><fmt:param value="${model.brand}"/></fmt:message></td></tr>
<!--    <tr><td class="ruleTableHeader"><fmt:message key="help.homepage.title"/></td><td class="ruleTableCell"><a target="_blank" href="http://www.subsonic.org/">subsonic.org</a><img style="float:right;margin-left: 10px" alt="Subsonic" src="<c:url value="/icons/default/subsonic_banner.png"/>"></td></tr>-->
<!--<tr><td class="ruleTableHeader"><fmt:message key="help.forum.title"/></td><td class="ruleTableCell"><a target="_blank" href="http://forum.subsonic.org/">forum.subsonic.org (Main)</a><img style="float:right;margin-left: 10px" alt="Subsonic" src="<c:url value="/icons/subsonic_banner.png"/>"></td></tr>-->
<!--<tr><td class="ruleTableHeader"><fmt:message key="help.subsonic_forum.title"/></td><td class="ruleTableCell"><a target="_blank" href="http://forum.subsonic.org/forum/viewforum.php?f=15">forum.subsonic.org (FutureSonic)</a><img style="float:right;margin-left: 10px" alt="Subsonic" src="<c:url value="/icons/subsonic_banner.png"/>"></td></tr>-->
    <tr><td class="ruleTableHeader"><fmt:message key="help.futuresonic_homepage.title"/></td><td class="ruleTableCell"><a target="_blank" href="http://sonic.lt">futuresonic</a><img style="float:right;margin-left: 10px" alt="FutureSonic" src="<c:url value="/icons/default/futuresonic_banner.png"/>"></td></tr>
<!--    <tr><td class="ruleTableHeader"><fmt:message key="help.futuresonic_forum.title"/></td><td class="ruleTableCell"><a target="_blank" href="http://forum.futuresonic.googlecode.com/">forum.futuresonic.googlecode.com</a> <img style="float:right;margin-left: 10px" alt="FutureSonic" src="<c:url value="/icons/default/futuresonic_banner.png"/>"></td></tr>-->
<!--<tr><td class="ruleTableHeader"><fmt:message key="help.futuresonic_contact.title"/></td><td class="ruleTableCell"><a target="_blank" href="http://forum.subsonic.org/forum/memberlist.php?mode=viewprofile&u=8974">forum.subsonic.org/forum/memberlist.php</a><img style="float:right;margin-left: 10px" alt="Subsonic" src="<c:url value="/icons/subsonic_banner.png"/>"></td></tr> -->

    <tr><td class="ruleTableHeader">Source</td><td class="ruleTableCell"><a target="_blank" href="https://code.google.com/p/futuresonic/source/checkout">google code</a><img style="float:right;margin-left: 10px" alt="Google Code" src="<c:url value="/icons/default/google.png"/>"></td></tr>
	<tr><td class="ruleTableHeader">Browser</td><td class="ruleTableCell"><a target="_blank" href="http://www.mozilla.org/firefox/new/">www.mozilla.org</a> <img style="float:right;margin-left: 10px" alt="Firefox" src="<c:url value="/icons/default/firefox_banner.png"/>"> </td></tr>
	<tr><td class="ruleTableHeader">Browser</td><td class="ruleTableCell"><a target="_blank" href="https://www.google.com/intl/de/chrome/browser/">www.google.com</a> <img style="float:right;margin-left: 10px" alt="Chrome" src="<c:url value="/icons/default/chrome_banner.png"/>"> </td></tr>
	<tr><td class="ruleTableHeader">Donate</td><td class="ruleTableCell">
		<table width="25%">
		<tr>
		<td>FutureSonic</td>
		<td><a href="<c:url value="/futuresonic.view"/>"><img src="<spring:theme code="paypalImage"/>" alt=""></a></td>
<!--		
		<td>Subsonic</td>
		<td><a href="<c:url value="/premium.view"/>"><img src="<spring:theme code="paypalImage"/>" alt=""></a></td>
-->		
		</tr></table>
		</td></tr>
	</table>
</body></html>