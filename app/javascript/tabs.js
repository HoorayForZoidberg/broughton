$('#myTab a').each(function(){
  $(this).click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  });
})
