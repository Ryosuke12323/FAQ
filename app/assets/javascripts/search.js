$(document).on('turbolinks:load', function(){
  $(document).on('keyup', '#inc_search', function(input){
    if( $('.selected')[0] ) {
    var categoryId = $('.selected')[0].id;
    $('.qa').hide();
    $('.qa.' + categoryId + ':contains(' + $(this).val() + ')').show();
    } else {
      $('.qa').hide();
      $('.qa:contains(' + $(this).val() + ')').show();
    }
  });
});

