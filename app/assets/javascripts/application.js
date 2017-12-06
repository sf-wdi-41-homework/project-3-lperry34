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
        $('.confirm').text("Your Ingredients:   " + $('.searchbar').val())
    }).trigger('change');

$('.search-site').on('submit', function(e){
    e.preventDefault();

  })
});
