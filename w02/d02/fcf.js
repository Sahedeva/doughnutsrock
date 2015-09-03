var sonicScrewdriver = function() {
	console.log ("Opens any door!");
}

sonicScrewdriver();

function loveCats() {
	console.log ("Meow! Purr!");
}

loveCats();

var catLove = loveCats;

catLove();

function anonmymous() {
	return function(name) {
		console.log (name + " this is another function");
	}
}

var anonm = anonmymous();

anonm("Bob");

var datastruct = [];

function hello() {
	return "Hello";
}

function space() {
	return " ";
}

function world() {
	return "world";
}

datastruct[0] = hello;
datastruct[1] = space;
datastruct[2] = world;
var string ="";
for (var i = 0; i < datastruct.length; i++) {
	string = string + datastruct[i]();
}

console.log (string);


