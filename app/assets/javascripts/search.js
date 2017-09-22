$(document).on('turbolinks:load', function(){
    $(document).on('keyup', '#inc_search', function(input){
      $('.qa').hide();
      $('.qa:contains(' + $(this).val() + ')').show();
  });
});

