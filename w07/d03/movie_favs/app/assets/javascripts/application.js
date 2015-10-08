// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui

$(function() {

  $("#search").on("click", function(evt) {

    $.ajax({
      url: "http://www.omdbapi.com",
      data: {
        s: $("#search-term").val()
      },
      dataType: "json",
      method: "GET",
      success: function(data, textStatus, jqXHR) {
        $("#results").html('');
        for (var i = 0; i < data['Search'].length; i++) {
          $("#results").append("<li>"+ data['Search'][i]['Title'] + ", " + data['Search'][i]['Year']+data['Search'][i]['imdbID']+"</li><button id='fav'>Favorite</button>")
        }
         $("#fav").on("click", function(){
      var movie_name = $(this).val();
      console.log(movie_name);


   });
      }
    });

  

  });

  // $("#search-term").autocomplete({
  //     minLength: 3,
  //     source: function (request, response) {
  //       var titles = [];
  //       $.ajax({
  //         url: "http://www.omdbapi.com",
  //         data: {
  //           s: request.term
  //     },
  //     dataType: "json",
  //     method: "GET",
  //     success: function(data, textStatus, jqXHR) {
  //       for (var i = 0; i < data['Search'].length; i++) {
  //         titles.push(data['Search'][i]['Title']);
  //       }
  //       response(titles);
  //       }
  //     });
  //   }
  // });

});