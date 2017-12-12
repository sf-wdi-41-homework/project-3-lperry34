//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs


$(document).on('turbolinks:load', function() {
    $checks = $(":checkbox");
    $checks.on('change', function() {
        var string = $checks.filter(":checked").map(function(i,v){
            return this.value;
        }).get().join(" ");
          $('.searchbar').val(string);
    }).trigger('change');



    $('.choices').on("click", function(e){
      $('.waiting').html("");
    })

    if($('.mobile-posts').html().length < 5){
      $('.wait-img').attr('src', 'http://www.businessjournalng.com/wp-content/uploads/2015/05/People-reading-newspapers.jpg');
  }else{
    $('.waiting').html("");
  }

});


function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
