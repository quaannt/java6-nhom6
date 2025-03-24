<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Trang Chủ - My Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Styles -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/main.css">
    <!-- Angular -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="app" ng-controller="MainController">

    <%@include file="layout/header.jsp" %>

    <main class="container my-4">
        <h1 class="text-center">Chào mừng đến với My Shop</h1>
        <p class="text-center">Trang web bán mỹ phẩm chính hãng, giá tốt</p>

        <section class="products row">
            <div class="col-md-4" ng-repeat="product in products">
                <div class="card mb-3">
                    <img ng-src="{{product.image}}" class="card-img-top" alt="{{product.name}}">
                    <div class="card-body">
                        <h5 class="card-title">{{product.name}}</h5>
                        <p class="card-text">{{product.description}}</p>
                        <p class="text-danger fw-bold">{{product.price | currency}}</p>
                        <button class="btn btn-primary" ng-click="addToCart(product)">Thêm vào giỏ</button>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <%@include file="layout/footer.jsp" %>

    <!-- Scripts -->
    <script src="/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/assets/js/main.js"></script>
</body>

</html>
