<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>지원 페이지</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <style type="text/css">
			 a:link { text-decoration: none;}
			 a:visited {text-decoration: none;}
		</style>
        <!-- <a href='https://.pngtree.com/so/촬영'>촬영 png에서 .pngtree.com/</a> -->
</head>
<body>
        <!-- Navigation-->
        <c:choose>
        	<c:when test="${type.equals('normal') }">
        		<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        	</c:when>
        	<c:when test="${empty type }">
        		<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        	</c:when>
        	<c:otherwise>
        		<nav class="navbar navbar-expand-lg bg-black text-uppercase fixed-top" id="mainNav">
        	</c:otherwise>
        </c:choose>
            <div class="container">
            	<c:choose>
            		<c:when test="${type.equals('normal') }">
            			<a class="navbar-brand" href="/user">Studio Lime</a>
            		</c:when>
            		<c:when test="${type.equals('admin') }">
            			<a class="navbar-brand" href="/admin">Studio Lime</a>
            		</c:when>
            		<c:otherwise>
		                <a class="navbar-brand" href="/">Studio Lime</a>
            		</c:otherwise>
            	</c:choose>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    메뉴
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                    	<c:if test="${empty id }">
	                        <li class="nav-item mx-0 mx-lg-1">
	                            <a class="portfolio-item mx-auto nav-link py-3 px-0 px-lg-3 rounded" id="sign_in_id" data-bs-toggle="modal" data-bs-target="#sign_in_modal" href="#">
	                                <i class="fa fa-sign-in-alt"></i> 회원가입
	                            </a>
	                        </li> 
	                        <li class="nav-item mx-0 mx-lg-1">
	                            <a class="portfolio-item mx-auto nav-link py-3 px-0 px-lg-3 rounded" id="log_in_id" data-bs-toggle="modal" data-bs-target="#log_in_modal" href="#">
	                                <i class="fa fa-sign-in-alt"></i> 로그인
	                            </a>
	                        </li>
                    	</c:if>
                    	<c:if test="${not empty id }">
                    	<li class="nav-item mx-0 mx-lg-1 py-3 px-0 px-lg-3 text-white"><i class="far fa-user-circle"></i> ${id }</li>
                    	<c:choose>
	            		<c:when test="${type.equals('normal') }">
	            		<li class="nav-item mx-0 mx-lg-1">	
	            			 <a class="nav-link py-3 px-0 px-lg-3 rounded" href="/user_mypage">
                                <i class="fas fa-file-alt"></i> 내 페이지
                            </a>
                        </li>
	            		</c:when>
	            		<c:when test="${type.equals('admin') }">
	            		<li class="nav-item mx-0 mx-lg-1">
	            			<a class="nav-link py-3 px-0 px-lg-3 rounded" href="/admin_mypage">
                                <i class="fas fa-file-alt"></i> 관리자 페이지
                            </a>
                        </li>
	            		</c:when>
	            		<c:otherwise>
			                <a class="navbar-brand" href="/">Studio Lime</a>
	            		</c:otherwise>
	            		</c:choose>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="portfolio-item mx-auto nav-link py-3 px-0 px-lg-3 rounded" id="log_in_id" data-bs-toggle="modal" data-bs-target="#log_out_modal" href="#">
                                <i class="fa fa-sign-out-alt"></i> 로그아웃
                            </a>
                        </li>  
                    	</c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <br><br>
        <section class="page-section">
            <div class="container">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">프리랜서 지원</h2>
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form id="freeForm" action="application" method="post">
                            <div class="mb-3">
                                <h5 class="text-secondary mb-0">지원 분야</h5><br>
                                <input type="radio" class="btn-check" name="type" id="video_id" value="video">
                                <label class="btn btn-outline-primary" for="video_id">촬영</label>
                                &nbsp;&nbsp;
                                <input type="radio" class="btn-check" name="type" id="class_id" value="lecture">
                                <label class="btn btn-outline-primary" for="class_id">강의</label>
                                &nbsp;&nbsp;
                                <input type="radio" class="btn-check" name="type" id="effect_id" value="edit">
                                <label class="btn btn-outline-primary" for="effect_id">편집</label>
                                &nbsp;&nbsp;
                            </div><br>
                            <div class="mb-3" id="video_select" style="display: none;">
                                <h5 class="text-secondary mb-0">사용 카메라(중복 선택, 기타 내용은 하단에 작성)</h5><br>
                                <input type="checkbox" class="btn-check" name="camera_type" id="sony" value="1">
                                <label class="btn btn-outline-primary" for="sony">SONY</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="camera_type" id="panasonic" value="2">
                                <label class="btn btn-outline-primary" for="panasonic">Panasonic</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="camera_type" id="canon" value="3">
                                <label class="btn btn-outline-primary" for="canon">Canon</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="camera_type" id="arri" value="4">
                                <label class="btn btn-outline-primary" for="arri">ARRI</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="camera_type" id="blackmagic" value="5">
                                <label class="btn btn-outline-primary" for="blackmagic">Blackmagic Design</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="camera_type" id="etc1" value="6">
                                <label class="btn btn-outline-primary" for="etc1">기타</label>
                                <br><br>
                            </div>
                            <div class="mb-3" id="class_select" style="display: none;">
                                <h5 class="text-secondary mb-0">경험 해본 촬영 종류(중복 선택, 기타 내용은 하단에 작성)</h5><br>
                                <input type="checkbox" class="btn-check" name="video_type" id="element" value="1">
                                <label class="btn btn-outline-primary" for="element">초중등</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="video_type" id="high" value="2">
                                <label class="btn btn-outline-primary" for="high">고등/수능</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="video_type" id="officer" value="3">
                                <label class="btn btn-outline-primary" for="officer">공무원/경찰</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="video_type" id="cpa" value="4">
                                <label class="btn btn-outline-primary" for="cpa">회계사/세무사</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="video_type" id="certify" value="5">
                                <label class="btn btn-outline-primary" for="certify">자격증</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="video_type" id="appoint" value="6">
                                <label class="btn btn-outline-primary" for="appoint">임용</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="video_type" id="etc2" value="7">
                                <label class="btn btn-outline-primary" for="etc2">기타</label>
                                &nbsp;&nbsp;
                            </div>
                            <div class="mb-3" id="effect_select" style="display: none;">
                                <h5 class="text-secondary mb-0">편집 포멧(중복 선택, 기타 내용은 하단에 작성)</h5><br>
                                <input type="checkbox" class="btn-check" name="effect_type" id="mp4" value="1">
                                <label class="btn btn-outline-primary" for="mp4">MP4</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="effect_type" id="mov" value="2">
                                <label class="btn btn-outline-primary" for="mov">MOV</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="effect_type" id="wmv" value="3">
                                <label class="btn btn-outline-primary" for="wmv">WMV</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="effect_type" id="mkv" value="4">
                                <label class="btn btn-outline-primary" for="mkv">MKV</label>
                                &nbsp;&nbsp;
                                <input type="checkbox" class="btn-check" name="effect_type" id="etc3" value="5">
                                <label class="btn btn-outline-primary" for="etc3">기타</label>
                                &nbsp;&nbsp;
                            </div>
                            <div class="mb-3">
                                <div class="form-floating mb-3">
                                    <input class="form-control" name="title" id="fr_title" type="text" placeholder=" ">
                                    <label for="fr_title">제목</label>
                                </div>
                                <c:choose>
                                	<c:when test="${empty id }">
                                		<div class="form-floating mb-3">
		                                    <input class="form-control" name="name" id="fr_name" type="text" placeholder=" ">
		                                    <label for="fr_name">지원자 이름</label>
		                                </div>
		                                <div class="form-floating mb-3">
		                                    <input class="form-control" name="email" id="apply_email" type="text" placeholder=" ">
		                                    <label for="fr_em">지원자 이메일(example@abc.com)</label>
		                                    <div style="display:inline-block; float:left; margin-top:5px;" >
	                                                <input class="btn btn-outline-primary" id="email_check2" type="button" value="중복 확인">
                                            </div>
                                            <br>
		                                </div>
		                                <div class="form-floating mb-3">
		                                    <input class="form-control" name="phone" id="fr_ph" type="text" placeholder=" ">
		                                    <label for="fr_ph">지원자 연락처(010-1234-5678)</label>
		                                </div>
                                	</c:when>
                                	<c:otherwise>
		                                    <input name="name" type="hidden" value="${mem.name }">
		                                    <input name="email" type="hidden" value="${mem.email }">
		                                    <input name="phone" type="hidden" value="${mem.phone }">
                                	</c:otherwise>
                                </c:choose>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" name="etc" id="etc" placeholder=" " style="height: 10rem"></textarea>
                                    <label for="etc">기타(선택사항에서 etc 체크 시 반드시 작성)</label>
                                </div>
                                <input type="hidden" name="confirm" value="no">
                                <input type="hidden" name="id" value="${id }">
                                <input type="hidden" name="no" value="">
                                <input type="hidden" name="doc" value="no">
                                <input type="hidden" name="modal" value="modal">
                                <c:choose>
                                	<c:when test="${empty id }">
                                		<div class="divider-custom">
                                    		<input class="btn btn-primary btn-xl" id="apply_submit1" type="submit" value="제출" disabled>
                                		</div>
                                		<div class="divider-custom">
                                    		<input class="btn btn-primary btn-xl" id="apply_submit2" type="submit" value="제출" style="display:none;">
                                		</div>
                                	</c:when>
                                	<c:otherwise>
                                		<div class="divider-custom">
                                    		<input class="btn btn-primary btn-xl" id="apply_submit1" type="submit" value="제출" style="display:none;">
                                		</div>
                                		<div class="divider-custom">
                                    		<input class="btn btn-primary btn-xl" id="apply_submit2" type="submit" value="제출">
                                		</div>
                                	</c:otherwise>
                               </c:choose> 
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4"><i class="fas fa-map-marker-alt"></i> 주소</h4>
                        <p class="lead mb-0">
                            서울특별시 강남구 언주로 508
                            <br />
                            14층(역삼동, 서울상록빌딩)
                        </p>
                    </div>
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4"><i class="far fa-comments"></i> SNS</h4>
                        <a class="btn btn-outline-light btn-social mx-1" href="https://facebook.com" target="_blank"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="https://twitter.com" target="_blank"><i class="fab fa-fw fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="https://www.instagram.com" target="_blank"><i class="fab fa-fw fa-instagram"></i></a>
                    </div>
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4"><i class="fas fa-user-tie"></i> 지원 문의</h4>
                        <p class="lead mb-0">
                            스튜디오 라임 프리랜서 상시 모집중<br>
                            <a href="/apply">이곳을 클릭하세요</a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright &copy; KKP Full-Stack Project 2022</small></div>
        </div>
        <!-- Modals-->
        <div class="portfolio-modal modal fade" id="log_in_modal" tabindex="-1" aria-labelledby="log_in_modal" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="container">
                                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">로그인</h2>
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-lg-8 col-xl-7">
                                        <form id="loginForm" action="login" method="post">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="id" id="lg_user_id_id" type="text" placeholder="Enter your id"/>
                                                <label for="lg_user_id_id">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="password" id="lg_pw_id" type="password" placeholder="Enter your password"/>
                                                <label for="lg_pw_id">비밀번호</label>
                                            </div>
                                            <input class="btn btn-primary btn-xl" type="submit" value="로그인">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="portfolio-modal modal fade" id="sign_in_modal" tabindex="-1" aria-labelledby="sign_in_modal" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="container">
                                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">회원가입</h2>
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-lg-8 col-xl-7">
                                        <form id="signinForm" action="join2" method="post">
                                            <div class="mb-3">
                                            	<input type="radio" class="btn-check" name="type" id="normal_user" value="normal" checked>
				                                <label class="btn btn-outline-primary" for="normal_user">일반 회원</label>
				                                &nbsp;&nbsp;
				                                <input type="radio" class="btn-check" name="type" id="admin_user" value="admin">
				                                <label class="btn btn-outline-primary" for="admin_user">관리자 회원</label>
				                                &nbsp;&nbsp;
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_id" name="id" type="text" placeholder=" ">
                                                <label for="user_id">아이디</label>
                                                <div style="display:inline-block; float:left; margin-top:5px;" >
	                                                <input class="btn btn-outline-primary" id="id_check" type="button" value="중복 확인">
                                                </div>
                                                <br>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_pw" name="password" type="password" placeholder=" ">
                                                <label for="user_pw">비밀번호</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_pw2" name="password2" type="password" placeholder=" ">
                                                <label for="user_pw2">비밀번호 확인</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_name" name="name" type="text" placeholder=" ">
                                                <label for="user_name">성함</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_email" name="email" type="text" placeholder=" ">
                                                <label for="user_email">이메일(example@abc.com)</label>
                                                <div style="display:inline-block; float:left; margin-top:5px;" >
	                                                <input class="btn btn-outline-primary" id="email_check" type="button" value="중복 확인">
                                                </div>
                                                <br>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_phone" name="phone" type="text" placeholder=" ">
                                                <label for="user_phone">전화번호(010-1234-5678)</label>
                                            </div>
                                            <input class="btn btn-primary btn-xl" id="join_submit" type="submit" value="가입" disabled>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="portfolio-modal modal fade" id="log_out_modal" tabindex="-1" aria-labelledby="log_out_modal" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="container">
                                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">로그아웃 하시겠습니까?</h2>
                                <div class="divider-custom">
                                    <div class="divider-custom-line"></div>
                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                    <div class="divider-custom-line"></div>
                                </div>
                                <div class="row justify-content-center">
                                    <div class="col-lg-8 col-xl-7">
                                    	<a href="logout_apply">
                                        	<button id="lo_btn" class="btn btn-primary btn-xl">로그아웃</button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/apply_scripts.js"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
        	$(function(){
        		let sweetalert=(icon,title,contents)=>{
        	        Swal.fire({
        	            icon: icon,
        	            title: title,
        	            text: contents,
        	            confirmButtonText: "확인"
        	        })
        	    };
        		$('#loginForm').submit(function(){
        			let input_id=$('#lg_user_id_id').val();
        	        let input_pw=$('#lg_pw_id').val();
        	        if(input_id==""){
        	            sweetalert("error", "아이디 오류", "아이디를 입력하세요");
        	            return false;
        	        } 
        	        if(input_pw==""){
        	        	sweetalert("error", "비밀번호 오류", "비밀번호를 입력하세요");
        	        	return false;
        	        }
        	        function objectifyForm(formArray){
        	        	var returnArray={};
        	        	for(var i=0;i<formArray.length;i++){
        	        		returnArray[formArray[i]['name']]=formArray[i]['value'];
        	        	}
        	        	return returnArray;
        	        }
        	        let formdata=objectifyForm($("#loginForm").serializeArray());
        	        $.ajax({
        				type:"POST",
        				async:true,
        				url:"http://localhost:8090/login_apply",
        				contentType:"application/json; charset=utf-8",
        				data:JSON.stringify(formdata),
        				success: function(data, textStatus){
        					Swal.fire({
        						title: "로그인 성공",
        						text: data.id+"님 환영합니다",
        						icon: "success",
        						confirmButtonText: "확인"
        					}).then((result)=>{
        						if(result){
        							window.location.href="/apply";
        						}
        					})
        				},
        				error: function(data, textStatus){
        					Swal.fire({
        						title: "로그인 실패",
        						text: data.responseText,
        						icon: "error",
        						confirmButtonText: "확인"
        					})
        				},
        				complete: function(data, textStatus){
        				}
        			});
        	        return false;
        		})
        		$('#id_check').click(function () {
        	    	if($('#user_id').val()==""){
        	    		Swal.fire({
    						title: "입력 오류",
    						text: "아이디를 입력하세요",
    						icon: "error",
    						confirmButtonText: "확인"
    					})
        				$('#join_submit').attr("disabled", true);
        				return false;
        			} 
        			$.ajax({
        				type:"post",
        				dataType:"text",
        				async:false,
        				url:"http://localhost:8090/idoverlap",
        				data:{id:$('#user_id').val()},
        				success: function(data, textStatus){
        					if(data=="true"){
        						Swal.fire({
            						title: "사용 불가능",
            						text: "사용 중인 아이디 입니다",
            						icon: "error",
            						confirmButtonText: "확인"
            					})
        						$('#join_submit').attr("disabled", true);
        					} else {
        						Swal.fire({
            						title: "사용 가능",
            						text: "사용 가능한 아이디 입니다",
            						icon: "success",
            						confirmButtonText: "확인"
            					})
        						$('#join_submit').attr("disabled", false);
        					}
        				}
        			});
        		});
        		$('#email_check').click(function () {
        	    	if($('#user_email').val()==""){
        	    		Swal.fire({
    						title: "입력 오류",
    						text: "이메일을 입력하세요",
    						icon: "error",
    						confirmButtonText: "확인"
    					})
        				$('#join_submit').attr("disabled", true);
        				return false;
        			} 
        			$.ajax({
        				type:"post",
        				dataType:"text",
        				async:false,
        				url:"http://localhost:8090/emailoverlap",
        				data:{email:$('#user_email').val()},
        				success: function(data, textStatus){
        					if(data=="true"){
        						Swal.fire({
            						title: "사용 불가능",
            						text: "사용 중인 이메일 입니다",
            						icon: "error",
            						confirmButtonText: "확인"
            					})
        						$('#join_submit').attr("disabled", true);
        					} else {
        						Swal.fire({
            						title: "사용 가능",
            						text: "사용 가능한 이메일 입니다",
            						icon: "success",
            						confirmButtonText: "확인"
            					})
        						$('#join_submit').attr("disabled", false);
        					}
        				}
        			});
        		});
        		$('#email_check2').click(function () {
        	    	if($('#apply_email').val()==""){
        	    		Swal.fire({
    						title: "입력 오류",
    						text: "이메일을 입력하세요",
    						icon: "error",
    						confirmButtonText: "확인"
    					})
        				$('#apply_submit1').attr("disabled", true);
        				return false;
        			} 
        			$.ajax({
        				type:"post",
        				dataType:"text",
        				async:false,
        				url:"http://localhost:8090/emailoverlap",
        				data:{email:$('#apply_email').val()},
        				success: function(data, textStatus){
        					if(data=="true"){
        						Swal.fire({
            						title: "사용 불가능",
            						text: "사용 중인 이메일 입니다",
            						icon: "error",
            						confirmButtonText: "확인"
            					})
        						$('#apply_submit1').attr("disabled", true);
        					} else {
        						Swal.fire({
            						title: "사용 가능",
            						text: "사용 가능한 이메일 입니다",
            						icon: "success",
            						confirmButtonText: "확인"
            					})
        						$('#apply_submit1').attr("disabled", false);
        					}
        				}
        			});
        		});
        		$('#sign_in_id').click(function(){
        			$('#join_submit').attr("disabled", true);
        			$('#signinForm')[0].reset();
        		})
        		$('#log_in_id').click(function(){
        			$('#loginForm')[0].reset();
        		})
        	});
        </script>
    </body>
</html>