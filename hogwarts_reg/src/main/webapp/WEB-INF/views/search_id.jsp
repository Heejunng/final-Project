<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>학번 찾기</title>

<!-- contextPath -->
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<script src="${contextPath}/js/prefixfree.min.js"></script>

<!-- CSS 외장화 -->
<link rel="stylesheet" href="${contextPath}/css/search_id.css">
<link rel="stylesheet" href="${contextPath}/css/nanumgothic.css">


</head>
<body>
	<!-- 학번 찾기 결과 메시지 -->
	<c:if test="${not empty msg}">
		<script>
		alert("${msg}");
		</script>
	</c:if>
	
	<!-- 상단바 시작 -->
 	<%@ include file="header_n.jsp" %>
	<!-- 상단바 끝 -->
	<figcaption><b>학번 찾기</figcaption>

	<!-- 상단바 제외한 입력 모든 부분 시작 -->
	<div id="sid_wrap">
	
	<!-- 좌측 부분 로고 시작 -->
	<div id="sid_box">
		<div id="logo">
			<img id="logo" src="${contextPath}/img/hogwartslogo.png">
		</div>
	<!-- 좌측 부분 로고 끝 -->
	
	<!-- 우측 부분 시작 -->
	<div id="sid_field_box">
	<form id="search_id_form" name="search_id_form" method="post" action="${contextPath}/accessinfo/SearchIdProc.do">
	<!-- 입력 필드 -->
	<div id="top_id_box"></div>
	
	<!-- 이름 필드 섹션 시작 -->
	<div id="name_box">
		<div id="label_name">
			<label for="sid_name">이름 </label>
		</div>
		<div id="field_name">
			<input type="text"
				   id="sidName"
				   name="sidName"
				   size="30"
				   maxlength="20"
				   pattern="[가-힣]{2,20}"
				   required 
				   title = "이름은 반드시 한글로만 입력해야 합니다."
				   class="form-control">
		</div>
	</div>
    <!-- 이름 필드 섹션 끝 -->
 
    <!-- 생년월일 필드 섹션 시작 -->
    <div id="birth_box"> 
		<div id="label_birth">
			<label for="birth">생년월일 </label>
		</div>
		<div id="field_birth">
			<input type="text"
				id="sidBirth"
				name="sidBirth"
				size="10"
				maxlength="10"
				placeholder="예) 1900-01-01"
				pattern="((19|2[0-9])[0-9]{2})-([1-9]|1[012])-([1-9]|[12][0-9]|3[01])"
				required 
				title = "YYYY-MM-DD 양식으로 입력하세요">
		</div>	   
	</div>
    <!-- 생년월일 필드 섹션 끝 -->
	
    <!-- 이메일 필드 섹션 시작 -->
    <div id="email_box"> 
		<div id="label_email">
			<label for="email">이메일 </label>
		</div>
		<div id="field_email">
			<input type="text"
				id="sidMail"  
				name="sidMail"
				maxlength="20"
				required
				title = "이메일은 영문과 숫자 조합 입니다"
				>
		<b>@</b>

		<!-- 이메일 제공자 시작-->
		<select id="sbMsv" name="sbMsv">
			<option>선택</option>
			<option>hogwarts.edu</option>
			<option>hanmail.net</option>
			<option>naver.com</option>
			<option>hotmail.com</option>
			<option>gmail.com</option>
			<option>nate.com</option>
			
		</select>
		<!-- 이메일 제공자 끝 -->
					

		</div>
	</div>
    <!-- 이메일 필드 섹션 끝 -->
 
    <!-- 버튼 영역 시작 -->
    <div id="submit_btn"> 
        <input type="submit"
            class="submit_btn"
            value="찾기">
    </div>
	<!-- 버튼 영역 끝 -->
</form>

    </div>
	<!-- 우측 부분 끝 -->
	</div>
	<!-- 입력 영역 끝 -->
	</div>
	<!-- 상단바 제외한 로그인 모든 부분 끝 -->

</body>
</html>