<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="inc/same_css.jsp"%>
    <link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/common_contents.css" />
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
            <li class="title"><h1>베스트</h1></li>
            <li class="cart"><a href="ShoppingCart.jsp"><img src="image/shopping_cart.png"></a></li>
        </ul>
    </div>

    <div id="content">
        <div id="menu_bar">
            <ul>
                <li><a href="Best.jsp">베스트</a></li>
                <li><a href="New.jsp">신상품</a></li>
                <li><a href="Recommend.jsp">추천상품</a></li>
                <li><a href="Top.jsp">탑</a></li>
                <li><a href="Dress.jsp">드레스</a></li>
                <li><a href="Pants.jsp">팬츠</a></li>
                <li><a href="Outer.jsp">아우터</a></li>
                <li><a href="Acc.jsp">잡화</a></li>
            </ul>
        </div>
        <div id="filter">
            <span><img src="image/filtering.png"> 필터링</span>
            <button>가격순</button>
            <button>신상품순</button>
            <button>추천상품순</button>
        </div>
        <div id="product" class="clear">
            <ul id="grid">

            </ul>
        </div>
        <button id="btn">more +</button>
    </div>

    <!-- footer -->
    <%@ include file="inc/footer.jsp"%>

    <!-- top 버튼 -->
    <div id="side">
        <a href="#" class="top"><img src="image/arrow_up.png"></a>
    </div>

    <!-- bottom_bar -->
    <%@ include file="inc/bottom_bar.jsp"%>

    <script type="text/x-handlebars-template" id="list-item-tmpl">
        {{#item}}
        <li>
            <div class="img">
                <a href="Detail.jsp">
                    <img src="{{img}}" class="img_g">
                </a>
            </div>
            <div class="info">
                <p class="brand"><strong>{{brand}}</strong></p>
                <p class="desc">{{desc}}</p>
                <p class="price"><span>\</span>{{commas price}}</p>
            </div>
        </li>
        {{/item}}
    </script>

    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="plugins/handlebars/handlebars-v4.0.11.js"></script>
    <script type="text/javascript">
    	Handlebars.registerHelper('commas', function(value) {
        	return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        });
    	
        function add_item() {
        	$.get("js/item.json", function(req) {
                var template = Handlebars.compile($("#list-item-tmpl").html());
                var html = template(req)
                var scroll = document.documentElement.scrollTop;
                $("#grid").append(html);
                window.scrollTo(0, scroll)
            });
        }

        $(function() {
            $(".search").click(function() {
                    $(".title").toggle();
                    $(".searchbox").toggle();
            });

            $("#bottom_bar li:first-child").click(function(e) {
                e.preventDefault();
                $("#category_bar").slideToggle(100);
            });

            $(".top").click(function() {
                $('html').animate({ scrollTop: 0 }, 400);
            });

            add_item();

            $("#btn").click(function() {  
                add_item();
            });
        });
    </script>
</body>
</html>