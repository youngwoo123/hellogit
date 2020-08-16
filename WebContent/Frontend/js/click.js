$("#bottom_bar li:first-child").click(function(e) {
    e.preventDefault();
    $("#category_bar").slideToggle(100);
});

$(".top").click(function(e) {
    e.preventDefault();
    $("#container").moveTo($(this).index() + 1);
});

$("#page_to_2").click(function(e) {
    e.preventDefault();
    $("#container").moveTo($(this).index());
});

$("#page_to_3").click(function(e) {
    e.preventDefault();
    $("#container").moveTo($(this).index() + 1);
});

$("#page_to_4").click(function(e) {
    e.preventDefault();
    $("#container").moveTo($(this).index() + 2);
});

$("#page_to_5").click(function(e) {
    e.preventDefault();
    $("#container").moveTo($(this).index() + 3);
});

$("#page_to_6").click(function(e) {
    e.preventDefault();
    $("#container").moveTo($(this).index() + 4);
});

$(".search").click(function() {
    $(".logo").toggle();
    $(".searchbox").toggle();
});