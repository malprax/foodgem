


$(document).on('click','.img-responsive' ,function(){
  $('#food_name').val(jQuery(this).attr('data-value'));
  $('.new_food').submit();
});