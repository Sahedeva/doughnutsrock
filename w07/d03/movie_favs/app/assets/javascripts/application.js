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

  $.ajax({
    url: "https://twitter.com/i/timeline?composed_count=0&include_available_features=1&include_entities=1&include_new_items_bar=true&interval=10000&last_note_ts=1444232758&latent_count=0&min_position=651869076495601664"
  });

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

<<<<<<< HEAD
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
=======

  // $("#search-term").autocomplete({
  //   minLength: 3,
  //   position: { my: "left top", at: "left bottom" },
  //   source: function (request, response) {
  //     var titles = [];
  //     $.ajax({
  //       url: "http://www.omdbapi.com",
  //       data: {
  //         s: request.term
  //       },
  //       dataType: "json",
  //       method: "GET",
  //       success: function(data, textStatus, jqXHR) {
  //         for (var i = 0; i < data['Search'].length; i++) {
  //           titles.push(data['Search'][i]['Title']);
  //         }
  //         response(titles);
>>>>>>> b1275f65e5ce6f5ab33c151bd326e47ae886666d
  //       }
  //     });
  //   }
  // });

});