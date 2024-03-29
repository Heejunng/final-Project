<!doctype html>  
<html lang="ko">  
<head>  
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

	/* 전체 레이어/테이블 레이아웃 */
	div#wrap {
		width: 100%;
		height: calc(100vh - 70px);
		display: flex;
		align-items: center;
		justify-content: center;
		/* background-color: orange; */
	}

	/*상단바*/
	div#prs_header {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 40px;
		background-color: #522808;
		padding: 10px 0 20px;
	}

	/* 전체 상자 */
	div#wrap_box {
		width: 850px;
		height: 570px;
		border-top: 15px solid #4f2a08;
		/* border: 3px solid #ccc; */
		background-color: #E7E3DE;
		/* display:flex;
		align-items:center;
		justify-content:center; */
		font-size: 1.2em;
		font-family: Nanum Gothic;
		color: #4A2B10;
		margin-top: 100px;
	}
	
	/* 로고+입력 영역 */
	div#wrap_logo_input_box {
		width: 100%;
		/* background: purple; */
	}

	/* 로고 영역 */
	div#logo{
		width: 250px;
		height: 300px;
		padding: 160px 0 20px 60px;
		float: left;
		/* background-color: red; */
	}

	/* 버튼 영역 */
	div#btn_wrap{
		width: 100%;
		height: 30px;
		display: flex;
		align-items: center;
		justify-content: center;
		/* background-color: green; */
	}

	/* 입력 영역 */
	div#input_wrap {
		float: left;
		width: 500px;
		height: 300px;
		padding: 60px 20px 20px 20px;
		/* background-color: yellow; */
	}

	/* 이름 영역 */
	div#input_wrap div[id^=label_] {
		width: 130px;
		float: left;
		/* background: cyan; */
		height: 48px;
		text-align: right;
		padding: 12px 0 10px 0;
		font-weight: bold;
	}
	
	/* 입력 영역 속성 */
	div#input_wrap div[id^=field_] {
		width: 350px;
		float: left;
		height: 60px;
		text-indent: 10px;
		text-align: left;
		padding: 5px 0 10px 0;
		/* background: blue; */
	}


	
	/* 폼필드(각종 입력 필드)들 외곽선 효과 */
	input[type='text'], input[type='password'] {
		border: 1px solid #ccc;
		font-size: 1.2em;
		padding: 5px;
	}

	 
	/* 완료 버튼  */
	input[id^=cpw][id$=btn] {    
		font-size: 1em;
		font-weight: bold;
		color: #fff;
		width: 420px;
		height: 50px;
		background-color: #522808;
		border: 3px solid #522808;
		border-radius: 10px;
		margin: 5px 0 5px 270px;
		letter-spacing: 2px;
	   
		transition: all .2s ease;
	}
	 
	/*  완료 버튼: 롤 오버 효과 */
	input[id^=cpw][id$=btn]:hover {
		font-size: 1em;
		font-weight: bold;
		width: 420px;
		height: 50px;
		background-color: #B59263;
		border: 3px solid #B59263;
		border-radius: 10px;
		margin: 5px 0 5px 270px;
		letter-spacing: 2px;
	}
	
	figcaption {
		position: absolute;
		top: 120px;
		left: 415px;
		font-size: 1.2em;
	}
	
</style>  

</head>
<body>
<!-- 상단바 시작 -->
<div id="prs_header">&nbsp;&nbsp;
	<img src="https://github.com/Heejunng/final-Project/blob/master/img/header_logo.png?raw=true" width="191px" height="55px">
</div>
<!-- 상단바 끝 -->

<!-- 제목 시작 -->
<figcaption><b>비밀번호 변경</figcaption>
<!-- 제목 끝 -->

<!-- 비번 바꾸기 양식 시작 -->
<div id="wrap">

	<!-- 양식 상자 시작 -->
	<div id="wrap_box">
    	
		<!-- 상단(로고+입력) 영역 시작 -->
		<div id="wrap_logo_input_box">
		
			<!-- 로고 영역 시작 -->
			<div id="logo">
				<img src = "img/hogwartslogo.png" width="230px" height="200px">
			</div>
			<!-- 로고 영역 끝 -->			
						
			<!-- 입력 영역 시작 -->
			<div id="input_wrap">
			
				<!-- 학번 시작 -->
				<div id="label_id">
					<label for="cpw_id"> 학번</label>
				</div>
				
				<div id="field_id">
					<input type="text"
						   id="cpw_id"
						   name="cpw_id"  
						   maxlength="20"
						   pattern="[a-zA-Z]{1}\w{7,19}"
						   ></input>
				</div>
				<!-- 학번 끝 -->
				
				<!-- 이름 시작 -->
				<div id="label_name">
					<label for="cpw_name"> 이름</label>
				</div>
				
				<div id="field_name">
					<input type="text"
						   id="cpw_name"
						   name="cpw_name"  
						   maxlength="20"
						   pattern="[a-zA-Z]{1}\w{7,19}"
						   ></input>
				</div>
				<!-- 이름 끝 -->
				
				<!-- 현재 비번 시작 -->
				<div id="label_pw">
					<label for="cpw_pw"> 현재 비밀번호</label>
				</div>
				
				<div id="field_pw">
					<input type="password"
						   id="cpw_pw"  
						   name="cpw_pw"
						   maxlength="20"
						   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}"  
						   ></input>
				</div>
				<!-- 현재 비번 끝 -->
				 
				<!-- 새 비번 시작 -->
				<div id="label_npw">
					<label for="cpw_npw"> 새 비밀번호</label>
				</div>
				
				<div id="field_npw">
					<input type="password"
						   id="cpw_npw"  
						   name="cpw_npw"
						   maxlength="20"
						   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}"  
						   ></input>
				</div>
				<!-- 새 비번 끝 -->
				
				<!-- 새 비번 확인 시작 -->
				<div id="label_npw">
					<label for="cpw_cf"> 비밀번호 확인</label>
				</div>
				
				<div id="field_cf">
					<input type="password"
						   id="cpw_cf"  
						   name="cpw_cf"
						   maxlength="20"
						   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}"  
						   ></input>
				</div>
				<!-- 새 비번 확인 끝 -->
			</div>
			<!-- 입력 영역 끝 -->
		</div>
		<!-- 상단(로고+입력) 영역 끝 -->
		
		<!-- 완료 버튼 시작 -->
		<div id="btn_wrap">
			<input type="submit"
				   id="cpw_submit_btn"
				   name="cpw_submit_btn"
				   value="변 경"></input>
		</div>
		<!-- 완료 버튼 끝 -->
		
	</div>
	<!-- 양식 상자 끝 -->
	
</div>
<!-- 비번 바꾸기 양식 끝 -->

</body>
</html>
