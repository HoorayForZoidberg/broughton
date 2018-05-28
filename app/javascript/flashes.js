// auto-dismiss flashes after 3 seconds
$('document').ready(function() {
  setTimeout(function() {
    $('.alert-dismissible').slideUp();
  }, 3000);
});
