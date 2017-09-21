$(document).on("turbolinks:load", function(){
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
