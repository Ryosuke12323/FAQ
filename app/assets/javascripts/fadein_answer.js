$(document).on("turbolinks:load", function(){
  $(".question").hover(
    function() {
          $(this).css("color", "#A9A9A9");
      },
      function() {
          $(this).css("color", "#000");
      }
  );
  $(".question").on("click", function(){
    if($(this).hasClass("active")){
      $(this).removeClass("active")
      $(this).next().slideUp(150);
    }else{
      $(this).parent().parent().find(".active").next().slideUp(150);
      $(this).addClass("active")
      $(this).next().slideDown(150);
    }
 })
})
