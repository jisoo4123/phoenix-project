<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 전체 폼 컨테이너 스타일 */
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }
	


    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }

	/* 입력 필드 기본 스타일 */
	input[type="text"], input[type="password"], input[type="email"] {
		width: 100%;
		padding: 10px;
		margin-bottom: 16px;
		border: 1px solid #ccc;
		border-radius: 4px;
	}
	
	/* 버튼 스타일 */
	button[type="submit"] {
		width: 50%;
		padding: 10px;
		background-color: #007bff;
		color: white;
		border: none;
		border-radius: 4px;
		cursor: pointer;
	}
	
	button[type="submit"]:hover {
		background-color: #0056b3;
	}
	.navbar{
		margin-bottom : 30px;
	}
	.mb3{
		margin-bottom : 30px;
	}
	
	/* 추가 스타일은 여기에 추가 */
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Modern Business - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
<style>
.error-message{
color : tomato;
}
</style>
<title>로그인</title>
<body>
<body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">Start Bootstrap</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/About.bo">About페이지(편집부탁)</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/Contact.bo">Contact페이지(편집부탁)</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/Map.bo">위치</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/Pricing.bo">중고거래</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/Login.bo">로그인(동준작업중)</a></li>                            
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/Join.bo">회원가입</a></li>                          <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                    <li><a class="dropdown-item" href="blog-home.jsp">Blog Home</a></li>
                                    <li><a class="dropdown-item" href="blog-post.jsp">Blog Post</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Portfolio</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                                    <li><a class="dropdown-item" href="portfolio-overview.jsp">Portfolio Overview</a></li>
                                    <li><a class="dropdown-item" href="portfolio-item.jsp">Portfolio Item</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div id="addressForm">
<c:if test="${not empty param.flag}">
	<c:if test="${not param.flag}">
		<script>
    			alert("로그인 실패");   
  		</script>  
	</c:if>
</c:if>

<form action = "${pageContext.request.contextPath }/user/UserLoginOK.us" method="post">
	<div class="input-form-backgroud row">
		<div class="input-form col-md-12 mx-auto">
			<h4 class="mb-3">로그인</h4>
			<form class="validation-form" novalidate>
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
					<form class="validation-form" novalidate>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="id">아이디</label> <input type="text"
									class="form-control" id="id" placeholder="" value="" required name = "userId">
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" id="password" placeholder="" value="" required name = "userPw">
								<div class="invalid-feedback">비밀번호를 입력하세요</div>
							</div>
						</div>

						<div class="mb-4"></div>
						<button class="btn btn-primary btn-lg btn-block" type="submit">로그인</button>
					</form>
				</div>
			</div>

</form>
	
</body>
</html>