$(document).on("turbolinks:load", function() {
  $("#myBtn").on("click", function(e){
    e.preventDefault();
    $("#myModal").show();
  });

  $(".close").on("click", function(){
    $("#myModal").hide();
  });

  $("#myModal").on("click", function(){
    $("#myModal").hide();
  });
})
