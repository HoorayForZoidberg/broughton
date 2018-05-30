$(document).ready(function(){
  $(".clickable").each(function(){
    $(this).click(function(){
      $(".display-change", $(this).parents().eq(1)).toggleClass("d-none");
    });
  });
})
