function romanize(number){
  var matches = {
    1: "I",
    2: "II",
    3: "III",
    4: "IV",
    5: "V",
    6: "VI",
    7: "VII",
    8: "VIII",
    9: "IX",
    10: "X",
    50: "L",
    100: "C",
    500: "D",
    1000: "M"
  }
}

var num = ;
var conver = num.toString();
var leng = conver.length - 1
var numberBreakdown = {}
var place = ["1's","10's","100's","1000's","10,000's","100,000's"];

for (var i=leng;i>0;i--) {
    numberBreakdown[i] = {place(i):num.charAt(i)};
};

// for assigning Roman characters
var units = numberBreakdown.keys;
var placesInUnits = units.length-1;
var digitsArray = [];
for (var i = placesInUnits;i>0;i--) {
    var value = numberBreakdown[units[i]];
    digitsArray.push(units[i]);
};

// Akash's solution - recursive function - else base case
// return a function - if else if else base case

