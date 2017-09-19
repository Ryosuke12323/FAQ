$(document).on("turbolinks:load", function(){
  $(".question").on("click", function(){
    if($(this).hasClass("active")){
      $(this).removeClass("active")
      $(this).next().slideUp(150);
    }else{
      $(this).parent().find(".active").next().fadeOut("fast");
      $(this).addClass("active")
      $(this).next().slideDown(150);
    }
 })
})
