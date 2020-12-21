<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<jsp:include page="/WEB-INF/pages/nfe/inc/header.jsp"/>
	<body class="hold-transition sidebar-mini layout-fixed">
		<div class="wrapper">
			<jsp:include page="/WEB-INF/pages/nfe/inc/topnavigation.jsp"/>
			<jsp:include page="/WEB-INF/pages/nfe/inc/sidenavigation.jsp"/>
			<div id="main_content_div">
				<jsp:include page="/WEB-INF/pages/${current_page}.jsp"/>
			</div>
			<jsp:include page="/WEB-INF/pages/nfe/inc/footer.jsp"/>
		</div>	
	</body>
</html>