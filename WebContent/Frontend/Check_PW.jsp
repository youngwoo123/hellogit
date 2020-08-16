<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>THE SELECTION</title>
    <link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/Check_PW.css" />
    <%@ include file="inc/same_css.jsp"%>  
</head>
<body>
	<!-- 헤더 -->
    <div id="header">
        <ul>
            <li class="back"><a href="javascript:history.back()"><img src="image/back.png"></a></li>
            <li class="search"><a href="#"><img src="image/search.png"></a></li>
            <div class="searchbox">
                <input placeholder="search..." type="text" />
                <a href=""><img src="image/search.png"></a>
            </div>
            <li class="title"><h1>비밀번호 재확인</h1></li>
            <li class="cart"><a href="ShoppingCart.html"><img src="image/shopping_cart.png"></a></li>
        </ul>
    </div>

    <div id="gray_area">고객님의 정보보호를 위하여 비밀번호를 다시 한 번 확인합니다.</div>

    <form id="container" method="post">
        <div id="id_wrap"><span id="id">cyl******</span></div>
        <div id="input_box">
            <input type="password" id="pw" placeholder="비밀번호를 입력해주세요.">
        </div>
        <p id="enter_pw_msg">비밀번호를 입력하세요.</p>
        <div id="hidden_msg_wrap">
            <p id="wrong_pw_msg">비밀번호가 일치하지 않습니다.</p>
            <a href="Find_PW.html"><span>비밀번호 찾기</span></a>
        </div>

        <div id="button_wrap">
            <button id="cancel" onclick="window.open('Main.html')">취소</button>
            <!-- <a href="Main.html" id="cancel"><span>취소</span></a> -->
            <button type="submit" id="ok">확인</button>
            <!-- <a href="#" id="ok"><span>확인</span></a> -->
        </div>
    </form>
	
	<!-- 푸터 -->
    <%@ include file="inc/footer.jsp"%>    
	
	<!-- bottom_bar -->
    <%@ include file="inc/bottom_bar.jsp"%>
	
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function() {
        $(".search").click(function() {
                    $(".title").toggle();
                    $(".searchbox").toggle();
                });

        $("#bottom_bar li:first-child").click(function(e) {
                e.preventDefault();
                $("#category_bar").slideToggle(100);
            });

        $("#pw").on({
            focus: function() {
                $("#pw").attr("placeholder", "");
            },
            blur: function() {
                $("#pw").attr("placeholder", "비밀번호를 입력해주세요.");
            }
        });

        $("#ok").click(function(e) {
            e.preventDefault();
            if ($("#pw").val() == "") {
                $("#enter_pw_msg").show();
                $("#pw").focus();
                $("#hidden_msg_wrap").hide();
            } else {
                $("#enter_pw_msg").hide();
                $("#hidden_msg_wrap").show();
            }
        });

        });
    </script>
	
</body>
</html>