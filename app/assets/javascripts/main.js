window.onload = function(){
  $('.title').click(function(){
    window.location.href = "/";
  });

  $('.line-info').popover();

  if ($('.alert').length) {
    $('.alert').addClass('alert-danger');
  }

};