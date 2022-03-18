<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>메인 페이지</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
                <a class="navbar-brand" href="#page-top">Studio Lime</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    메뉴
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#service">주요서비스</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#info">상세안내</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">이용문의</a></li>
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
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <img class="masthead-avatar mb-5" src="${pageContext.request.contextPath}/resources/assets/img/avataaars.svg" alt="..." />
                <h1 class="masthead-heading text-uppercase mb-0">Studio Lime</h1>
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <p class="masthead-subheading font-weight-light mb-0">Director - Edu Professor - Pr/Ae/Ps</p>
            </div>
        </header>
        <!-- Service Section-->
        <section class="page-section portfolio" id="service">
            <div class="container">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">주요 서비스</h2>
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources//assets/img/service/studio.png" alt="..." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/service/view.png" alt="..." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/service/print.png" alt="..." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/service/effect.png" alt="..." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/service/index.png" alt="..." />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/assets/img/service/memory.png" alt="..." />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Info Section-->
        <section class="page-section bg-primary text-white mb-0" id="info">
            <div class="container">
                <h2 class="page-section-heading text-center text-uppercase text-white">상세안내</h2>
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ms-auto"><p class="lead">저희 STUDIO LIME은 국내 모든 교육업계의 포멧에 영상을 최적화하여 맞춤형 제공하여 강의자의 소속 플랫폼에 제한없는 촬영 서비스를 제공합니다.</p></div>
                    <div class="col-lg-4 me-auto"><p class="lead">저희 STUDIO LIME은 M사, E사, S사, E사, N사 등에서 근무한 이력이 있는 전문 촬영 PD를 배치하여 강의자의 교육 분야에 제한없는 촬영 서비스를 제공합니다.</p></div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ms-auto"><p class="lead">저희 STUDIO LIME은 강의 종류에 제한없이 맞춤형 컨설팅을 제공하여 강의자의 온라인 강의 경력에 관계없이 높은 수준의 온라인 강의를 제작합니다.</p></div>
                    <div class="col-lg-4 me-auto"><p class="lead">저희 STUDIO LIME은 강의자의 자료를 바탕으로하여 영상 모니터링을 통해 강의 인덱스를 제공합니다. 또한 강의 내용에 오류가 있는 경우 편집점을 통해 재촬영의 리스크를 최소화 합니다.</p></div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ms-auto"><p class="lead">저희 STUDIO LIME은 강의자의 영상미를 고려하여 맞춤형 스튜디오를 제공하며, 강의에 필요한 프로젝터/전자칠판 등 강의 보조 시설을 제공합니다.</p></div>
                    <div class="col-lg-4 me-auto"><p class="lead">저희 STUDIO LIME은 특수 스튜디오를 통해 원격 강의 촬영 서비스를 제공하며, 강의자의 요구에 따라 현장 출장 촬영 서비스를 제공합니다.</p></div>
                </div>
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="${pageContext.request.contextPath}/resources/assets/tempPdf.pdf" download>
                        <i class="fas fa-download me-2"></i>
                        서비스 메뉴얼
                    </a>
                </div>
            </div>
        </section>
        <!-- Contact Section-->
        <section class="page-section " id="contact">
            <div class="container">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">이용 문의</h2>
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <form id="contactForm" action="question" method="post">
                            <div class="mb-3">
                                <h4 class="text-secondary mb-0">회원이신가요?</h4><br>
                                <input type="radio" class="btn-check" name="member" id="yes_id" value="yes">
                                <label class="btn btn-outline-primary" for="yes_id">&nbsp;&nbsp;회원&nbsp;&nbsp;입니다&nbsp;&nbsp;</label>
                                &nbsp;&nbsp;
                                <input type="radio" class="btn-check" name="member" id="no_id" value="no">
                                <label class="btn btn-outline-primary" for="no_id">비회원 입니다</label>
                            </div>
                            <br>
                            <div id="contact_input1" style="display: none">
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
                                <div class="form-floating mb-3">
                                    <input class="form-control" name="name" id="ct_name_id" type="text" placeholder=" ">
                                    <label for="name">성함</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" name="email" id="ct_em_id" type="text" placeholder=" ">
                                    <label for="ct_em_id">이메일(example@abc.com)</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input class="form-control" name="phone" id="ct_ph_id" type="text" placeholder=" ">
                                    <label for="ct_ph_id">전화번호(010-1234-5678)</label>
                                </div>
                            </div>
                            <div id="contact_input2" style="display: none">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="ct_user_id_id" type="text" placeholder=" ">
                                    <label for="ct_user_id">아이디</label>
                                </div>
                            </div>
                            <div id="contact_input3">
                                <div class="form-floating mb-3">
                                    <input class="form-control" name="title" id="ct_title" type="text" placeholder=" ">
                                    <label for="ct_title">문의제목</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" name="qtext" id="ct_message" placeholder=" " style="height: 10rem"></textarea>
                                    <label for="ct_message">문의내용</label>
                                </div>
                                <input type="hidden" name="atext" value="">
                                <input type="hidden" name="id" value="">
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
            <div class="container"><small>Copyright &copy; KKP Full-Stack Project 2022</div>
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
                                        <form id="loginForm">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="id" id="lg_user_id_id" type="text" placeholder=" ">
                                                <label for="lg_user_id_id">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="password" id="lg_pw_id" type="password" placeholder=" ">
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
                                        <form id="signinForm" action="join" method="post">
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
        <!-- Service Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Service Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">촬영 스튜디오 제공</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Service Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="${pageContext.request.contextPath}/resources/assets/img/service_modal/stuido_modal.JPG" alt="..." />
                                    <!-- Service Modal - Text-->
                                    <h4 class="mb-4">전 스튜디오 빔프로젝터&스크린 보유, 전자칠판 스튜디오 보유</h4>
                                    <h4 class="mb-4">전 스튜디오 방음 시설 확보로 강의 외부 소음 완벽 차단</h4>
                                    <button class="btn btn-primary" href="#portfolioModal1" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Service Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">강의 맞춤형 조명</h2>
                                    <!-- Service Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Service Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="${pageContext.request.contextPath}/resources/assets/img/service_modal/view_modal.JPG" alt="..." />
                                    <!-- Service Modal - Text-->
                                    <h4 class="mb-4">강의 종류에 적합한 조명 및 촬영 환경 제공</ㅗ>
                                    <h4 class="mb-4">초중등, 고등(수능), 공무원(경찰), 회계/세무, 임용, 토익 강의 전문</h4>
                                    <button class="btn btn-primary" href="#portfolioModal2" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Service Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">강의 서포팅 & 컨설팅</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Service Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="${pageContext.request.contextPath}/resources/assets/img/service_modal/print_modal.JPG" alt="..." />
                                    <!-- Service Modal - Text-->
                                    <h4 class="mb-4">강의 촬영을 보조할 각종 시설 완비(스튜디오 이용시 무제한 이용)</h4>
                                    <h4 class="mb-4">각종 강의 관련 서포팅 & 컨설팅 전문 직원 상시 근무</h4>
                                    <button class="btn btn-primary" href="#portfolioModal3" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Modal 4-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Service Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">종합 영상 편집 제공</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Service Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="${pageContext.request.contextPath}/resources/assets/img/service_modal/effect_modal.JPG" alt="..." />
                                    <!-- Service Modal - Text-->
                                    <h4 class="mb-4">영상 편집, 인트로, 아웃트로 및 강의 정정 편집 등 맞춤형 제공</h4>
                                    <h4 class="mb-4">프리미어 프로, 에프터 이팩트, 시네마4D, 파이널컷프로</h4>
                                    <button class="btn btn-primary" href="#portfolioModal4" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Service Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">강의 인덱스 & 모니터링 서비스</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Service Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="${pageContext.request.contextPath}/resources/assets/img/service_modal/index_modal.JPG" alt="..." />
                                    <!-- Service Modal - Text-->
                                    <h4 class="mb-4">각종 강의별 인덱스 제공</h4>
                                    <h4 class="mb-4">모니터링을 통한 편집점, 강의 정정 사항 등 맞춤형 서비스 제공</h4>
                                    <button class="btn btn-primary" href="#portfolioModal5" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Service Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">강의 포멧 변환 서비스</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Service Modal - Image-->
                                    <img class="img-fluid rounded mb-5" src="${pageContext.request.contextPath}/resources/assets/img/service_modal/memory_modal.JPG" alt="..." />
                                    <!-- Service Modal - Text-->
                                    <h4 class="mb-4">국내 모든 강의 플랫폼에 적용가능한 강의 포멧 변경 서비스</h4>
                                    <h4 class="mb-4">MP4, MOV, WMV, MKV 등 영상 포멧 맞춤형 제공</h4>
                                    <button class="btn btn-primary" href="#portfolioModal6" data-bs-dismiss="modal">
                                        <i class="fas fa-times fa-fw"></i>
                                        돌아가기
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/index_scripts.js"></script>
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
        				url:"http://localhost:8090/login",
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
        							if(data.type=="normal"){
        	        					window.location.href="/user";
                					} else{
                						window.location.href="/admin";
                					}
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