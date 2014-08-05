
$(function(){
  $( "img" ).click(function() {
    $("body").append("<div class='black'></div>");
    var src = $(this).attr("src");
    var img = $('<img/>').attr({src: src});
    $("body").append($("<div class='jackie'></div>").append(img));
  });
  $(document).on("click", ".jackie", function() {
    $(".jackie").remove();
    $(".black").remove();
  });
});



