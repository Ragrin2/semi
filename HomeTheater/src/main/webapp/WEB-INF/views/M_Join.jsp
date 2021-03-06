<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css"
          type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css"
          type="text/css">
    <link rel="stylesheet" href="resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css"
          type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css"
          type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css"
          type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header__logo">
                    <a href="index"> <img src="resources/img/logo5-1.png"
                                          alt="">
                    </a>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="header__nav">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="index">????????????</a></li>
                            <!-- ????????? ?????? ??????????????? -->
                            <li><a href="#">????????????<span class="arrow_carrot-down"></span></a>
                                <ul class="dropdown">
                                    <li><a href="index?filter=1">?????????</a></li>
                                    <!-- href : ??? ??????????????? ????????? ???????????? ??????????????? -->
                                    <li><a href="index?filter=2">?????????</a></li>
                                    <li><a href="index?filter=3">?????? ?????????</a></li>
                                </ul>
                            </li>
                            <li><a href="B_board">?????????</a></li>
                            <c:if test="${sessionScope.loginId eq 'admin'}">
                                <li><a href="C_addForm">????????? ??????</a></li>
                                <li><a href="M_list">????????????</a></li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="header__menu mobile-menu">
                    <c:choose>
                        <c:when test="${empty sessionScope.loginId}">
                            <ul>
                                <li><a href="#" class="search-switch"><span class="icon_search"></span></a></li>

                                <li><a href="#"><span class="icon_profile"><span
                                        class="arrow_carrot-down"></span></span></a>
                                    <ul class="dropdown">
                                        <li><a href="M_loginForm">?????????</a></li>
                                        <li><a href="M_joinForm">????????????</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </c:when>
                        <c:otherwise>
                            <ul>
                                <li><a href="#" class="search-switch"><span class="icon_search"></span></a></li>

                                <li><a href="#"><span class="icon_profile"><span
                                        class="arrow_carrot-down"></span></span></a>
                                    <ul class="dropdown">
                                        <li><a href="M_loginForm">????????????</a></li>
                                        <li><a href="M_view?MId=${sessionScope.loginId}">???????????????</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </c:otherwise>
                    </c:choose>

                </div>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>
<!-- Header End -->

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="normal__breadcrumb__text">
                    <h2>Sign Up</h2>
                    <p>Welcome</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Normal Breadcrumb End -->
<form action="M_join" method="POST" name="joinForm">
    <!-- Signup Section Begin -->
    <section class="signup spad">

        <div class="container">

            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">

                        <h3>Sign Up</h3>
                        <!-- ????????? -->

                        <div class="input__item">
                            <input class="input__item" type="text" placeholder="ID"
                                   name="MId" id="MId" onkeyup="idOverlap()"> <span id="icon"
                                                                                    class="icon_profile"></span> <br/>
                            <span id="confirmId"></span>
                        </div>

                        <!-- ???????????? -->
                        <div class="input__item">
                            <input type="password" placeholder="Password"
                                   name="MPw" id="MPw" onkeyup="pwRegExp()"> <span
                                class="icon_lock"></span> <br/> <span id="pwRegExp"></span>
                        </div>

                        <!-- ???????????? ?????? -->
                        <div class="input__item">
                            <input type="password" placeholder="Password Check" id="checkPw"
                                   onkeyup="pwOverlap()"> <span class="icon_lock"></span>
                            <br/> <span id="confirmPw"></span>
                        </div>

                        <br/>


                        <h5>
                            Already have an account? <a href="M_loginForm">Log In!</a>
                        </h5>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__form">

                        <br/>
                        <br/>

                        <!-- ?????? -->
                        <div class="input__item">
                            <input type="text" name="MName" placeholder="Your Name"> <span
                                class="icon_profile"></span>
                        </div>

                        <!-- ????????? -->
                        <div class="input__item">
                            <input type="text" name="MPhone" placeholder="Phone" id="MPhone" onkeyup="phoneOverlap()">
                            <span
                                    class="icon_profile"></span> <br/> <span id="confirmPhone"></span>
                        </div>

                        <!-- ????????? -->
                        <div class="input__item">
                            <input type="email" name="MEmail" id="MEmail"
                                   placeholder="Email address"> <span class="icon_mail"></span>
                            <span id="emailConfirmText"> <input type="button"
                                                                style="height: 30px; padding: 0px 5px 0px;"
                                                                class="btn btn-danger" value="??????"
                                                                onclick="confirmEmail()"></span>
                        </div>

                        <div class="input__item" id="emailConfirmText"></div>
                        <br/>
                        <br/>

                        <input type="button" class="site-btn" value="??????" onclick="mJoin()">


                    </div>

                </div>

            </div>

        </div>

    </section>
</form>
<!-- Signup Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="index"><img src="resources/img/logo5-1.png"
                                         alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="index">Homepage</a></li>
                        <li><a href="B_board">?????????</a></li>            <!-- ????????? ?????? ??????????????? -->
                        <li><c:if test="${empty sessionScope.loginId}">
                            <a href="M_loginForm">?????????</a>
                        </c:if> <!-- ????????? ???????????? -->
                            <c:if test="${!empty sessionScope.loginId}">
                                <a href="M_logout">????????????</a>
                            </c:if> <!-- ???????????? ???????????? --></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    ???????????????????????? &copy;
                    <script>document.write(new Date().getFullYear());   </script>
                    |
                    This Project is made with <i
                        class="fa fa-heart" aria-hidden="true"></i> by HomeTheater
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>

            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search model Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form action="C_search" class="search-model-form">
            <input type="text" name="keyword" placeholder="????????? ??????????????????">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/player.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/mixitup.min.js"></script>
<script src="resources/js/jquery.slicknav.js"></script>
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/main.js"></script>

</body>


<script type="text/javascript" src="resources/js/jquery3.6.0.js"></script>
<script type="text/javascript">

    // ????????? ????????????
    function idOverlap() {
        let idCheck = document.getElementById("MId").value;
        let confirmId = document.getElementById("confirmId");
        let idPass = false;

        $.ajax({
            type: "POST",
            url: "A_idoverlap",
            data: {"MId": idCheck},
            async: false,
            dataType: "text",
            success: function (data) {
                // ?????????
                if (data == "OK") {
                    confirmId.style.color = "#0000ff";
                    confirmId.innerHTML = "?????? ????????? ?????????";
                    idPass = true;


                } else {
                    confirmId.style.color = "#ff0000";
                    confirmId.innerHTML = "?????? ???????????? ?????????";
                    idPass = false;
                }
            },
            error: function () {
                // ?????????
                alert("idOverlap?????? ????????????!");
            }
        });

        return idPass;
    }

    // ???????????? ?????????
    function pwRegExp() {
        let MPw = document.getElementById("MPw").value;
        let pwRegExp = document.getElementById("pwRegExp");
        let pwPass = false;

        let num = MPw.search(/[0-9]/g);
        let eng = MPw.search(/[a-z]/ig);
        let spe = MPw.search(/[`~!@#$%^&*|\\\'\";:\/?]/gi);

        if (MPw.length < 8 || MPw.length > 15) {
            pwRegExp.style.color = "#ff0000";
            pwRegExp.innerHTML = "8?????? ~ 15?????? ????????? ??????????????????!";
        } else if (MPw.search(/\s/) != -1) {
            pwRegExp.style.color = "#ff0000";
            pwRegExp.innerHTML = "??????????????? ?????? ?????? ??????????????????!";
        } else if (num < 0 || eng < 0 || spe < 0) {
            pwRegExp.style.color = "#ff0000";
            pwRegExp.innerHTML = "??????, ??????, ??????????????? ???????????? ??????????????????!";
        } else {
            pwRegExp.style.color = "#0000ff";
            pwRegExp.innerHTML = "????????? ???????????? ?????????!";
            pwPass = true;
        }

        return pwPass;
    }

    // ???????????? ???????????? ??????
    function pwOverlap() {
        let MPw = document.getElementById("MPw").value;
        let pwRegExp = document.getElementById("pwRegExp");

        let checkPw = document.getElementById("checkPw").value;
        let confirmPw = document.getElementById("confirmPw");

        let pwPass = false;

        pwRegExp.innerHTML = "";

        if (MPw == checkPw) {
            confirmPw.style.color = "#0000ff";
            confirmPw.innerHTML = "??????????????? ???????????????!";
            pwPass = true;
        } else {
            confirmPw.style.color = "#ff0000";
            confirmPw.innerHTML = "??????????????? ??????????????????!";
        }
        return pwPass;
    }

    // ????????? ??????
    function confirmEmail() {
        let MEmail = document.getElementById("MEmail").value;
        let emailConfirmText = document.getElementById("emailConfirmText");


        $.ajax({
            type: "GET",
            url: "A_emailConfirm",
            data: {"MEmail": MEmail},
            dataType: "text",
            success: function (data) {
                alert("???????????? ???????????? ??????????????? ??????????????????!");
                emailConfirmText.innerHTML = "<input type='hidden' id='check2' value='" + data + "'>"
                    + "<br/><input type='text' placeholder='???????????? ??????' id='emailKey'>"
                    + " <input type='button' style='height: 30px; padding: 0px 5px 0px;' class='btn btn-danger' value='??????' onclick='keyCheck()'>"
                    + "<br/><span id='check1'></span>";
            },
            error: function () {
                alert("???????????? ????????? ??????????????????!");
            }
        });

    }

    // ???????????? ??????
    function keyCheck() {
        let emailKey = document.getElementById("emailKey").value;
        let check2 = document.getElementById("check2").value;
        let check1 = document.getElementById("check1");

        let emailPass = false;

        if (emailKey == check2) {
            check1.style.color = "#0000ff";
            check1.innerHTML = "??????????????? ???????????????!";
            emailPass = true;
        } else {
            check1.style.color = "#ff0000";
            check1.innerHTML = "??????????????? ???????????? ????????????!";
        }
        return emailPass;
    }

    // ???????????? ??????
    function mJoin() {
        console.log("????????? ?????? : " + idOverlap());
        console.log("???????????? ??????1 : " + pwRegExp());
        console.log("???????????? ??????2 : " + pwOverlap());
        console.log("????????? ??????2 : " + keyCheck());
        console.log("????????? ??????1 : " + phoneOverlap());

        if (!idOverlap()) {
            alert("????????? ??????????????? ??????????????????.");
        } else if (!pwRegExp()) {
            alert("??????????????? ????????? ?????? ??????????????????.");
        } else if (!pwOverlap()) {
            alert("??????????????? ???????????? ????????????.");
        } else if (!keyCheck()) {
            alert("????????? ????????? ??????????????????.");
        } else if (!phoneOverlap()) {
            alert("????????? ??????????????????. ???????????? ??????????????????.")
        } else {
            joinForm.submit();
        }


    }

    // ???????????? ?????????
    function phoneOverlap() {
        let phoneCheck = document.getElementById("MPhone").value;
        let confirmPhone = document.getElementById("confirmPhone");
        let phonePass = false;

        $.ajax({
            type: "POST",
            url: "A_phoneoverlap",
            data: {"MPhone": phoneCheck},
            async: false,
            dataType: "text",
            success: function (data) {
                // ?????????
                if (data == "OK") {
                    confirmPhone.style.color = "#0000ff";
                    confirmPhone.innerHTML = "?????? ????????? ?????????";
                    phonePass = true;
                } else {
                    confirmPhone.style.color = "#ff0000";
                    confirmPhone.innerHTML = "?????? ???????????? ?????????";
                    phonePass = false;
                }
            },
            error: function () {
                // ?????????
                alert("phoneOverlap?????? ????????????!");
            }
        });
        return phonePass;
    }


</script>


</html>