<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>유저 마이 페이지</title>
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
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="/user">Studio Lime</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    메뉴
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#qna">문의 현황</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#qna2">이용 문의</a></li>
                        <li class="nav-item mx-0 mx-lg-1 py-3 px-0 px-lg-3 text-white"><i class="far fa-user-circle"></i> ${id }</li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded" href="/user_mypage">
                                <i class="fas fa-file-alt"></i> 내 페이지
                            </a></li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="portfolio-item mx-auto nav-link py-3 px-0 px-lg-3 rounded" id="log_in_id" data-bs-toggle="modal" data-bs-target="#log_out_modal" href="#">
                                <i class="fa fa-sign-out-alt"></i> 로그아웃
                            </a>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Q&A Section-->
        <br><br>
        <section class="mt-5 page-section portfolio bg-primary text-white" id="qna">
            <div class="container" id="container1">
                <h2 class="page-section-heading text-center text-uppercase text-white mb-0">문의 현황</h2>
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div><br><br>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <h3>번호</h3>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <h3>유형</h5>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <h3>회원</h3>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-5 text-center">
                        <h3 style="display:inline-block;">문의 사항</h3>&nbsp;&nbsp;<h6 style="display:inline-block;">[제목을 클릭하여 확인]</h6>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <h3>답변</h3>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <h3>상태</h3>
                    </div>
                </div>
                <c:forEach items="${question }" var="q">
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <h5 class="text-white">No.${q.no }</h5>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                    	<c:choose>
                    		<c:when test="${q.type.equals('1') }">
                    			<h5 class="text-white">촬영</h5>
                    		</c:when>
                    		<c:when test="${q.type.equals('2') }">
                    			<h5 class="text-white">강의</h5>
                    		</c:when>
                    		<c:when test="${q.type.equals('3') }">
                    			<h5 class="text-white">편집</h5>
                    		</c:when>
                    		<c:otherwise>
                    			<h5 class="text-white">메모리</h5>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <c:choose>
                    		<c:when test="${not empty q.id }">
                    			<h5 class="text-white">회원</h5>
                    		</c:when>
                    		<c:otherwise>
                    			<h5 class="text-white">비회원</h5>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-5 text-center">
                        <h5><a class="text-white portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#${q.qmodal }" href="#">${q.title }</a></h5>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                        <c:choose>
                    		<c:when test="${q.answerConfirm.equals('yes')}">
                    			<h5><a class="text-white portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#${q.amodal }" href="#">답변 확인</a></h5>
                    		</c:when>
                    		<c:otherwise>
                    			<h5 class="text-white">미등록</h5>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                    <div class="col-md-6 col-lg-1 mb-5 text-center">
                    	<c:choose>
                    		<c:when test="${q.answerConfirm.equals('no')}">
                    			<h5 class="text-white">진행중</h5>
                    		</c:when>
                    		<c:otherwise>
                    			<h5 class="text-white">완료&nbsp;<i class="far fa-check-circle"></i></h5>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
                </c:forEach>
            </div>
        </section>
        <section class="page-section" id="qna2">
            <div class="container">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">이용 문의</h2>
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form id="contactForm" action="question/mypage" method="post">
                            <div class="mb-3">
                                <h4 class="text-secondary mb-0">문의 유형</h4><br>
                                <input type="radio" class="btn-check" name="type" id="video_id" value="1">
                                <label class="btn btn-outline-primary" for="video_id">&nbsp;&nbsp;촬영&nbsp;&nbsp;</label>
                                &nbsp;&nbsp;
                                <input type="radio" class="btn-check" name="type" id="class_id" value="2">
                                <label class="btn btn-outline-primary" for="class_id">&nbsp;&nbsp;강의&nbsp;&nbsp;</label>
                                &nbsp;&nbsp;
                                <input type="radio" class="btn-check" name="type" id="effect_id" value="3">
                                <label class="btn btn-outline-primary" for="effect_id">&nbsp;&nbsp;편집&nbsp;&nbsp;</label>
                                &nbsp;&nbsp;
                                <input type="radio" class="btn-check" name="type" id="memory_id" value="4">
                                <label class="btn btn-outline-primary" for="memory_id">메모리</label>
                                <input type="hidden" name="member" value="yes">
                            </div>
                            <div class="mb-3">
                                <div class="form-floating mb-3">
                                    <input class="form-control" name="title" id="title" type="text" placeholder=" ">
                                    <label for="title">문의 제목</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" name="qtext" id="message" placeholder=" " style="height: 10rem"></textarea>
                                    <label for="message">문의 내용</label>
                                </div>
                                <input type="hidden" name="atext" value="">
                                <input type="hidden" name="id" value="${id }">
                                <input type="hidden" name="no" value="">
                                <input type="hidden" name="answerConfirm" value="no">
                                <input type="hidden" name="qmodal" value="qmodal">
                                <input type="hidden" name="amodal" value="amodal">
                                <div class="divider-custom">
                                    <input class="btn btn-primary btn-xl" id="ct_btn" type="submit" value="제출">
                                </div>
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
                                   		<a href="logout">
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
        <!-- Q Modal 1-->
        <c:forEach items="${question }" var="q2">
        <div class="portfolio-modal modal fade" id="${q2.qmodal }" tabindex="-1" aria-labelledby="${q2.qmodal }" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <h5 class="portfolio-modal-title text-secondary mb-0">${q2.title }</h5>
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Q Modal - Text-->
                                    <form>
                                        <div>
                                            <h5>회원 여부</h5>
                                            <c:choose>
                                            	<c:when test="${not empty q2.id }">
                                            	<input type="radio" class="btn-check" name="member" id="yes_member" checked>
	                                            <label class="btn btn-outline-primary" for="yes_member">&nbsp;&nbsp;회원&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="member" id="no_member" disabled>
	                                            <label class="btn btn-outline-primary" for="no_member">비회원</label>
                                            	</c:when>
                                            	<c:otherwise>
                                            	<input type="radio" class="btn-check" name="member" id="yes_member" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_member">&nbsp;&nbsp;회원&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="member" id="no_member" checked>
	                                            <label class="btn btn-outline-primary" for="no_member">비회원</label>
                                            	</c:otherwise>
                                            </c:choose>
                                        </div><br>
                                        <div>
                                            <h5>문의 유형</h5>
                                            <c:choose>
                                            	<c:when test="${fn:contains(q2.type, '1') }">
                                            	<input type="radio" class="btn-check" name="id_existed" id="yes_id" checked>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;촬영&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" disabled>
	                                            <label class="btn btn-outline-primary" for="no_id">&nbsp;&nbsp;강의&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="yes_id" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;편집&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" disabled>
	                                            <label class="btn btn-outline-primary" for="no_id">메모리</label>
                                            	</c:when>
                                            	<c:when test="${fn:contains(q2.type, '2') }">
                                            	<input type="radio" class="btn-check" name="id_existed" id="yes_id" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;촬영&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" checked>
	                                            <label class="btn btn-outline-primary" for="no_id">&nbsp;&nbsp;강의&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="yes_id" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;편집&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" disabled>
	                                            <label class="btn btn-outline-primary" for="no_id">메모리</label>
                                            	</c:when>
                                            	<c:when test="${fn:contains(q2.type, '3') }">
                                            	<input type="radio" class="btn-check" name="id_existed" id="yes_id" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;촬영&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" disabled>
	                                            <label class="btn btn-outline-primary" for="no_id">&nbsp;&nbsp;강의&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="yes_id" checked>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;편집&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" disabled>
	                                            <label class="btn btn-outline-primary" for="no_id">메모리</label>
                                            	</c:when>
                                            	<c:otherwise>
                                            	<input type="radio" class="btn-check" name="id_existed" id="yes_id" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;촬영&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" disabled>
	                                            <label class="btn btn-outline-primary" for="no_id">&nbsp;&nbsp;강의&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="yes_id" disabled>
	                                            <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;편집&nbsp;&nbsp;</label>
	                                            &nbsp;&nbsp;
	                                            <input type="radio" class="btn-check" name="id_existed" id="no_id" checked>
	                                            <label class="btn btn-outline-primary" for="no_id">메모리</label>
                                            	</c:otherwise>
                                            </c:choose>
                                        </div>
                                        <c:if test="${not empty q2.id }">
	                                        <div class="form-floating mb-3">
	                                            <label>아이디</label><br>
	                                            &nbsp;<input class="form-control bg-white" name="ct_user_id" id="ct_user_id_id" type="text" value="${q2.id }" disabled>
	                                        </div>
                                        </c:if>
                                        <div class="form-floating mb-3">
                                            <label for="name">성함</label><br>
                                            &nbsp;<input class="form-control bg-white" name="ct_name" id="ct_name_id" type="text" value="${q2.name }" disabled> 
                                        </div>
                                        <div class="form-floating mb-3">
                                            <label for="ct_em_id">이메일</label><br>
                                            &nbsp;<input class="form-control bg-white" name="ct_em" id="ct_em_id" type="text" value="${q2.email }" disabled>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <label for="ct_ph_id">전화번호</label><br>
                                            &nbsp;<input class="form-control bg-white" name="ct_ph" id="ct_ph_id" type="text" value="${q2.phone }" disabled>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <label for="message">문의내용</label><br>
                                            &nbsp;<textarea class="form-control bg-white" id="message" type="text" style="height: 10rem" disabled>${q2.qtext }</textarea>
                                        </div>
                                    </form>
                                    <button class="btn btn-primary" href="#${q2.qmodal }" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        닫기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
        <!-- A Modal 1-->
        <c:forEach items="${question }" var="q3">
        <div class="portfolio-modal modal fade" id="${q3.amodal }" tabindex="-1" aria-labelledby="${q3.amodal }" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <h5 class="portfolio-modal-title text-secondary mb-0">문의 답변</h5>
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- A Modal - Text-->
                                    <form>
                                    	<div class="form-floating mb-3">	
                                    		<label for="ia_name1">문의 번호</label><br>
                                    		&nbsp;<input class="form-control bg-white" name="no" id="ia_name1" type="text" value="No.${q3.no}" disabled>
		                                </div>       
		                                <div id="answer1Div" class="form-floating mb-3">
		                                	<label for="answer1">답변내용</label><br>
		                                	&nbsp;<textarea class="form-control bg-white" name="atext" id="answer1" style="height: 10rem" disabled>${q3.atext }</textarea>
		                                </div>
		                                <input type="button" class="btn btn-primary" href="#${q3.amodal }" data-bs-dismiss="modal" value="닫기">
		                           </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/user_mp.scripts.js"></script>
    </body>
</html>