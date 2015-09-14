// Context in a regular Javascript object
var myObj = {

  firstName: "Sean",

  greet: function() {
    return "Hi, my name is " + this.firstName + ", what's yours?"
  }

}

// Context in jQuery
$("button").on("click", function() {
  if ( $(this).hasClass("x-square") ) {
    alert("You chose X");
  }
  else {
    alert("You chose O");
  }
});