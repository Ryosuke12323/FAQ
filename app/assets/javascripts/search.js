$(document).on('turbolinks:load', function(){
  $(document).on('keyup', '#inc_search', function(input){
    var categoryId = $('.selected')[0].id;
    $('.qa').hide();
    $('.qa.' + categoryId + ':contains(' + $(this).val() + ')').show();
  });
});

