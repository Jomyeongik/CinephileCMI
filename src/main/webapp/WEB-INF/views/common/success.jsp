<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>서비스 결과 성공</title>
	</head>
	<body>
		<script>
			const result = '${msg}';
			const url = '${url}';
			alert(result);
			window.location.href = url;
		</script>
	</body>
</html>