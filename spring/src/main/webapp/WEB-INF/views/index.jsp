<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://myfaces.apache.org/tomahawk" prefix="t"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<f:view>
<t:dataList value="#{indexBean.categories}" var="category">
	<h:dataTable value="#{category.forums}" var="forum" style="width:90%">
		<h:column>
			<f:facet name="header">
				<h:outputText value="#{category.name}" />
			</f:facet>
			<h:outputLink value="faces/forum.jsp">
				<f:param name="id" value="#{forum.id}" />
				<h:outputText value="#{forum.name}" />
			</h:outputLink>
			<br />
			<h:outputText value="#{forum.description}" />
		</h:column>
		<h:column>
			<f:facet name="header">
				<h:outputText value="Sujets" />
			</f:facet>
			<h:outputText value="#{forum.totalTopics}" />
		</h:column>
		<h:column>
			<f:facet name="header">
				<h:outputText value="Messages" />
			</f:facet>
			<h:outputText value="#{forum.totalPosts}" />
		</h:column>
	</h:dataTable>
</t:dataList>
</f:view>
</body>
</html>