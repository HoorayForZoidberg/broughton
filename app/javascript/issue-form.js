$(document).ready(function(){
  $(".issue_is_resolved").each(function(){
    $(this).change(function(){
      $(this).next().toggleClass("d-none");
    });
  })
})
