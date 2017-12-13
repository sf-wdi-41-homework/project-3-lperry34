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


});

function changeBack(e){
  document.getElementById("waiting").innerHTML = '<h2 id="news-bud">Lev News</h2>  <p id="paragraph">Lev News is the easiest way to read all your favorite news sources all in one place.</p>'
}

function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
