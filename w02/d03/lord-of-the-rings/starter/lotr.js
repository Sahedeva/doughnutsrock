$(function(){


	var hobbits = [
	"Frodo Baggins",
	"Samwise 'Sam' Gamgee",
	"Meriadoc \"Merry\" Brandybuck",
	"Peregrin 'Pippin' Took"
	];

	var buddies = [
	"Gandalf the Grey",
	"Legolas",
	"Gimli",
	"Strider",
	"Boromir"
	];

	var baddies = [
	"Sauron",
	"Saruman", 
	"The Uruk-hai", 
	"Orcs"
	];

	var lands = ["The Shire", "Rivendell", "Mordor"];


	function makeMiddleEarth(lands) {
	    // create a section tag with an id of middle-earth
	    var middleEarth = $('<section>');
	    middleEarth.attr('id',"middle-earth");
		// add each land as an article tag
	    $.each(lands, function(index, middleLand){
			var article = $('<article>');
			var h1	= $('<h1>' + middleLand+ '</h1>');
			article.append(h1);
			middleEarth.append(article);
		});
	    $('body').append(middleEarth);
	}
	makeMiddleEarth(lands);
});
    
    // inside each article tag include an h1 with the name of the land      


