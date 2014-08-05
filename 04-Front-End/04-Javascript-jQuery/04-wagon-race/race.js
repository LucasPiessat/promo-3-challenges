$(function(){

  $(document).keyup(function() {
    if ( event.which == 65 ) {
      console.log('65');
      $("#player1_race").append("<td></td>");
      $("#player1_race td").removeClass("active");
      $("#player1_race td").last().addClass("active");
    }
    else if ( event.which == 80 ) {
      console.log('80');
      $("#player2_race td").last().removeClass("active");
      $("#player2_race").append("<td class='active'></td>");
    };
  });
});








// $(function(){
//   $( "img" ).click(function() {
//     $("body").append("<div class='black'></div>");
//     var src = $(this).attr("src");
//     var img = $('<img/>').attr({src: src});
//     $("body").append($("<div class='jackie'></div>").append(img));
//   });
//   $(document).on("click", ".jackie", function() {
//     $(".jackie").remove();
//     $(".black").remove();
//   });
// });
