$(function(){

// Dramatis Personae

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

var lands = ["The Shire", "Rivendell", "Mordor"];

//1
function makeMiddleEarth(lands) {
  //create a section tag with an id of middle-earth
  var middleEarth = $('<section>');
  middleEarth.attr('id', "middle-earth");
  //add each land as an article tag
  $.each(lands, function(index, land) {
    var article = $('<article>');
    // inside each article tag include an h1 with the name of the land   
    var h1 = $('<h1>' + land + '</h1>')
    article.append(h1);
    middleEarth.append(article);
  });
  //append the land tags to the body of the document
  $('body').append(middleEarth);
}
//call the makeMiddleEarth Function
makeMiddleEarth(lands);

// 2
function makeHobbits(hobbits) {
  // display an undordered list of hobbits in the shire
  var hobbitsList = $('<ul>');
  // give each hobbit a class of hobbit
  $.each(hobbits, function(index, hobbit){
    var li = $('<li>' + hobbit + '</li>');
    li.addClass('hobbit');
    //append each hobbit to the unordered list
    hobbitsList.append(li);
  })
  //create a variable to represent the shire article tag
  var shire = $('article').first();
  //append the unordered list to the the shire
  shire.append(hobbitsList);
}
//call the function makeHobbits
makeHobbits(hobbits);

// 3
function keepItSecretKeepItSafe() {
    //create a div with an id of 'ring'
    var ring = $('<div>');
    ring.attr('id', 'ring');
    //add the ring as a child of the frodo list element
    var frodo = $('.hobbit').first();
    frodo.append(ring);
}
//call the function keepItSecretKeepItSafe
keepItSecretKeepItSafe();

// 4
function makeBuddies(buddies) {
  //create an aside tag
  var aside = $('<aside>');
  //display an unordered list of buddies in the aside tag
  var buddiesList = $('<ul>');
  buddiesList.addClass('buddies');
  //go through the buddies array and create a list item to be added to the unordered list
  $.each(buddies, function(index, buddy){
    var li = $('<li>' + buddy + '</li>');
    li.addClass('buddy');
    // if the buddy is gandalf make the background grey
    if( buddy === "Gandalf the Grey" ) {
      li.css('background', 'grey');
    }
    //append the buddies to the unordered list
    buddiesList.append(li);
  });
  //append the unordered list to the aside.
  aside.append(buddiesList);
  $('article:eq(1)').before(aside);
}
//call the makeBuddies function
makeBuddies(buddies);

// 5
function beautifulStranger() {
  //change Striders name to Aragorn
  var strider = $('.buddies li:nth-child(3)');
  strider.text('Aragorn');
}
//call the beautufulStrager function
beautifulStranger();


// 6
function forgeTheFellowShip() {
  //create a variable to house the rivendell article
  var rivendell = $('article:eq(1)');
  //create a div called the fellowship
  var theFellowship = $('<div>');
  theFellowship.attr('id', 'the-fellowship');
  //create an unordered list in the felloship div
  var fellowshipList = $('<ul>');
  theFellowship.append(fellowshipList);
  //add theFellowship div to the rivendell land
  rivendell.append(theFellowship);
  //add all of the hobbits to the fellowship list
  hobbitList = $('.hobbit');
  $.each(hobbitList, function(index, hobbit){
    fellowshipList.append(hobbit);
    console.log(hobbit.textContent + " has joined!");
  });
  //add each buddy to the fellowship list
  buddyList = $('.buddy');
  $.each(buddyList, function(index, buddy){
    fellowshipList.append(buddy);
    console.log(buddy.textContent + " has joined!");
  });
}
// call forgeTheFellowShip function
forgeTheFellowShip();

});