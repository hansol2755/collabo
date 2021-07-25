<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="../fragments/head.html" %>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <title>구매리스트</title>
    <style>
        .page {
            display: block;
            margin: 0 3px;
            float: left;
            border: 1px solid #e1e4eb;
            width: 28px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            background-color: #fff;
            font-size: 13px;
            color: #999999;
            text-decoration: none;
        }
    </style>
</head>
<body>

<%-- navbar --%>
<jsp:include page="../fragments/navbar.jsp" flush="false"/>
<main id="main" data-aos="fade-in">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">
            <h2>구매 페이지</h2>
            <p> </p>
        </div>
    </div><!-- End Breadcrumbs -->

        <%----%>
    <div style="width: 100%; position:absolute; left: 45%; ">
        <br>
        <br>
        <%-- 페이징 --%>

    </div>

    <div class="container">
        <div class="row mt-5">
            <div class="col-4">
                <ul>
                    <c:if test="${pageMaker.prev}">
                        <li class="page"><a href="/board/getPurchaseList?page=1">처음</a></li>
                        <li class="page"><a href="/board/getPurchaseList${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
                    </c:if>

                    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                        <li class="page"><a href="/board/getPurchaseList${pageMaker.makeQuery(idx)}">${idx}</a></li>
                    </c:forEach>

                    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li class="page"><a href="/board/getPurchaseList${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
                        <li class="page"><a href="/board/getPurchaseList?page=${pageMaker.tempEndPage }">맨끝</a></li>
                    </c:if>
                </ul>
            </div>
            <div class="col-4"></div>
            <div class="col-4">
                <!--검색-->
                <form action="/board/getPurchaseList">
                    <div class="p-1 bg-light rounded rounded-pill shadow-sm mb-4">
                        <div class="input-group">
                            <select name="searchCondition" hidden>
                                <option value="NAME" hidden>상품이름</option>
                            </select>
                            <input type="text" placeholder="상품 이름을 입력해주세요" aria-describedby="button-addon1" class="form-control border-0 bg-light"
                                   name="searchKeyword">
                            <div class="input-group-append">
                                <button id="button-addon1" type="submit" class="btn btn-link text-primary"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 검색을 위한 폼
    <div class="mt-4"></div>
    <div style="width:100%; position:absolute; left:40%; ">-->
        <!-- 검색을 위한 폼  -->
        <!-- 검색-->
        <!-- Custom rounded search bars with input group -->
    <!--
        <form action="/board/getPurchaseList">
            <table class="border-none">
                <tr>
                    <td>
                        <select name="searchCondition">
                            <option value="NAME">상품이름
                            <option value="DESCRIPTION">상품설명
                        </select>
                        <input type="text" name="searchKeyword">
                        <input type="submit" value="검색">
                    </td>
                </tr>
            </table>
        </form>
    </div>-->

    <div class="container">
        <!-- Course 이용한 데이터 표시 영역-->
        <!-- ======= Courses Section ======= -->
        <section id="courses" class="courses">
            <div class="container" data-aos="fade-up">
                <div class="row" data-aos="zoom-in" data-aos-delay="100">
                    <!--each item-->
                    <c:if test="${not empty boardList}">
                        <c:forEach var="board" items="${boardList}">
                            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                                <div class="course-item">
                                    <img src="/board/getpImg?url=${board.url }" class="img-fluid"
                                         alt="/board/getpImg?url=${board.url }"
                                         onclick="location.href='/product/productDetail/${board.id}'"
                                         style="width: 415px; height: 350px">
                                    <div class="course-content">
                                        <div class="d-flex justify-content-between align-items-center mb-3">
<%--                                            <h4>${board.id}</h4>--%>
                                            <p class="price"><fmt:formatNumber value="${board.price }"
                                                                               pattern="#,###,###"/>원</p>
                                        </div>
                                        <h3><a href="/product/productDetail/${board.id}">${board.name }</a></h3>
                                        <p><a href="/product/productDetail/${board.id}">${board.description }</a></p>
                                    </div>
                                </div>
                            </div>
                            <!-- End Course Item-->
                        </c:forEach>
                    </c:if>
                </div>
            </div>
        </section><!-- End Courses Section -->
    </div>
</main>
<%-- footer --%>
<jsp:include page="../fragments/footer.jsp" flush="false"/>

<!-- arrow -->
<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/assets/vendor/aos/aos.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>
<script src="/assets/vendor/purecounter/purecounter.js"></script>
<script src="/assets/vendor/swiper/js/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>

</body>
</html>
