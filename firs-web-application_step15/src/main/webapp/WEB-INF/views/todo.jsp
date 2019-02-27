<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Yahoo!!</title>

<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	
</head>
<body>
<H1>Welcome ${name}</H2>
<div>
Your Todos are
<ol>
<c:forEach items="${todos}" var="todo">
   <li>${todo.name} &nbsp; &nbsp;<a href="/delete-todo.do?todo=${todo.name}">delete</a></li>
</c:forEach>
</ol>

<p>
	<font color="red">${errorMessage}</font>
</p>

<form action="/todo.do" method="post">
	<input type="text" name="todo" />
	<input type="submit" value="Add" />
</form>

</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</body>
</html>