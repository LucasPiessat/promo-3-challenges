$(function() {
  $("#message-wrapper").hide().delay(200).slideDown(1000);
  $("#message-wrapper").on('click', function() {
    $(this).hide()
  });
});