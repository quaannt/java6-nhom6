<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title th:replace="${title}"></title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Plugins CSS -->
<link rel="stylesheet" href="/assets/css/plugins.css">
<!-- Bootstap CSS -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<!-- angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl"
	class="template-index belle home5-cosmetic">

	<div class="pageWrapper">
		<%@include file="../layout/_header.jsp"%>

		<!--Body Content-->
		<div id="page-content">
			<!--Home slider-->
			<!--Collection Banner-->
			<div class="collection-header">
				<div class="collection-hero">
					<div class="collection-hero__image">
						<img class="blur-up lazyload"
							data-src="/assets/images/banner.jpeg"
							src="/assets/images/banner.jpeg" alt="Women" title="Women" />
					</div>
					<div class="collection-hero__title-wrapper">
						<h1 class="collection-hero__title page-width">LIST BRAND</h1>
					</div>
				</div>
			</div>
			<!--End Collection Banner-->
			<!--End Home slider-->

			<!--Image Banners-->
			<div class="section imgBanners pb-0">
				<div class="imgBnrOuter">
					<div class="container-fluid">
						<br>
						<br>
						<br>
						<div class="row">
						<c:forEach var="b" items="${brands}">
								<div class="col-md-3 mt-3 image-banner-3">
									<div class="inner topright">
										<a href="/product/list?bid=${b.id}"> <img
											data-src="/images/brand/${b.image}"
											src="/images/brand/${b.image}" alt="Heeled Boots"
											title="Heeled Boots" class="blur-up lazyload" />
											<div class="ttl">
												<h5>${b.name}</h5>
											</div>
										</a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--End Image Banners-->
	</div>
	<!--End Body Content-->

	<!--Footer-->
	<%@include file="../layout/_footer.jsp"%>
	<!--End Footer-->

	<!--Scoll Top-->
	<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
	<!--End Scoll Top-->

	<!-- Including Jquery -->
	<script src="/assets/js/vendor/jquery-3.3.1.min.js"></script>
	<script src="/assets/js/vendor/modernizr-3.6.0.min.js"></script>
	<script src="/assets/js/vendor/jquery.cookie.js"></script>
	<script src="/assets/js/vendor/wow.min.js"></script>
	<!-- Incing Jascript -->
	<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/plugins.js"></script>
	<script src="/assets/js/popper.min.js"></script>
	<script src="/assets/js/lazysizes.js"></script>
	<script src="/assets/js/main.js"></script>
	<!-- Shopping cart -->
	<script src="/assets/js/shopping-cart.js"></script>
	<!--For Newsletter Popup-->
	<script>
		jQuery(document).mouseup(
				function(e) {
					var container = jQuery('#popup-container');
					if (!container.is(e.target)
							&& container.has(e.target).length === 0) {
						container.fadeOut();
						jQuery('#modalOverly').fadeIn(200);
						jQuery('#modalOverly').hide();
					}
				});
	</script>
	<!--End For Newsletter Popup-->
	</div>
</body>


</html>