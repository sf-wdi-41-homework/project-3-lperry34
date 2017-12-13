//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs


$(document).on('turbolinks:load', function() {

    $('.navbar-toggle').on("click", function(e){
      $(".navbar-collapse").toggleClass("in");
    })

    $('.demo').on("click", function(e){
      $('.email').val("john@email.com")
      $('.password').val("hellothere")
    })

    $('.closebtn').on("click", function(e){
      $('.waiting').html("");
    })

});



function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
