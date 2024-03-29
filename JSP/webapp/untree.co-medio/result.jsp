<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Medio
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<meta name="author" content="Untree.co">
	<link rel="icon" href="images/favicon.ico">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap5" />

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Roboto:wght@300;400&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/feather/style.css">

	<link rel="stylesheet" href="css/tiny-slider.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/glightbox.min.css">
	<link rel="stylesheet" href="css/style2.css">

	<title>ACENSE</title>
	<style>
	.v-h-full {
    height: auto;
    min-height: 700px;
}
		.prd_list{
  margin-top:80px;
  text-align: center;
}
.list{
  word-wrap: break-word;
  word-break: keep-all;
  line-height: 1;
  color: black;
  text-align: center;
  -webkit-text-size-adjust: none;
  box-sizing: border-box;
  padding: 0;
  display: inline-block;
  margin-left: 80px;
  margin-top: 15px;
  height: 50%;
  
}
		#list{
			text-decoration: underline;
		}
		.img-fluid {
  height: 80%; 
	
}

.paging{
	font-size: 15px;
    line-height: 1.5;
    color: #333;
    -webkit-font-smoothing: antialiased;
    -webkit-text-size-adjust: none;
    text-align: center;
    padding: 30px 0;
}
.now{
	text-align: center;
    -webkit-font-smoothing: antialiased;
    -webkit-text-size-adjust: none;
    text-decoration: none;
    vertical-align: middle;
    display: inline-block;
    height: 30px;
    width: 30px;
    line-height: 30px;
    font-size: 11px;
    font-family: inherit;
    padding: 0;
    font-weight: bold;
    color: #fff;
    border-color: #000;
}
.last{
	width: 107%;
}
	</style>
</head>
<body>

<%@ include file="./header.jsp"%>


	<div class="hero v-h-full overlay">
		<div class="img-bg rellax">
			<img src="images/main.png" alt="Image" class="img-fluidmains">
		</div>
		<div class="container">
			<div class="row align-items-center v-h-full">

				<div class="col-lg-10 col-xxl-6">
					<h1 class="heading-2 text-white mb-5" data-aos="fade-up">RESULT</h1>
				</div>

			</div>
		</div>

	</div>
			<!-- section -->

		<!-- e : prd_list -->
		<div class="section3">
			<div class="container">
				<div class="row justify-content-center mb-5">
					<div class="col-lg-6 text-center" data-aos="fade-up" data-aos-delay="100">
						<span class="subheading mb-2 d-inline-block"></span>
						<h2 class="mb-4"></h2>
					</div>
				</div>
	
				<div class="row last">
					<div class="container-fluid">
						<div class="row">
						
						<c:if test="${datas.size()==0}">
							<div>
								<h5 class="heading-2 text-white mb-5" style="color:black !important; font-size: 40px;">NO PRODUCT</h5>
							</div>
						</c:if>
						<!-- 검색결과(시작) -->
						<c:forEach var="v" items="${datas}" begin="0" end="${datas.size()}" varStatus="status">
							<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
								<a href="productDetail.do?pNum=${v.pNum}" class="media-1">
									<img src= "${v.pImg}" alt="${v.pName}" class="img-fluid">
									<div class="media-1-content">
										<h2>${v.pName}</h2>
										<span class="category">${v.pPrice}₩</span>
									</div>
								</a>
							</div>
						</c:forEach>
						<!-- 검색결과(끝) -->
						
						</div>
					</div>
				</div>
			</div>
		</div>

		
	</div>
</div>

<!-- e : prd_list -->


	<!-- /section -->

	<!— Preloader —>
	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="visually-hidden">Loading…</span>
		</div>
	</div>


	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/tiny-slider.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/navbar.js"></script>
	<script src="js/glightbox.min.js"></script>
	<script src="js/rellax.min.js"></script>
	<script src="js/custom.js"></script>

	<%@ include file="./footer.jsp"%>
</body>
</html>
