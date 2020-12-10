$(function(){
  $('.contents > div').hide();
 
  $('.card-display__box a').click(function () {
    $('.contents > div').hide().filter(this.hash).fadeIn();
 
    $('.card-display__box a').removeClass('active');
    $(this).addClass('active');
 
    return false;
  }).filter(':eq(0)').click();
});