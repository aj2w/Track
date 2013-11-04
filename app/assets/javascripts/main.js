window.onload = function(){

  $('.title').click(function(){
    window.location.href = "/";
  });

  $('.line-info').popover();

  if ($('.alert').text().length) {
    $('.alert').addClass('alert-danger');
  }

  if ($('.notice').text().length) {
    $('.notice').addClass('alert-info');
  }

};
