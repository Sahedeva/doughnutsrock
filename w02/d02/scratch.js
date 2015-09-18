// var name = "Mike";

// function hello() {
//   name = "Sean";
//   console.log("Hello, " + name);

//   function goodbye() {
//     console.log("Goodbye, " + name);
//   }

//   goodbye();
// }

// console.log("before hello ", name)
// hello();
// console.log(name);

function hello(name) {
  console.log("Hello, " + name);
}

console.log("Bye, " + name);

hello("Sean");





// 1
// var greet = function(name) {
//   return "Hello, " + name;
// }

// console.log( greet("Sean") );

// 2
// function sayGoodbye(name) {
//   return "Bye, " + name;
// }

// var bye = sayGoodbye;

// console.log( bye("Sean") );
// console.log( sayGoodbye("Mike") );

// // 3
// function getDressed(season) {
//   if (season === "summer") {
//     return function(name) {
//       console.log("It's hot out " + name + ", wear shorts!");
//     }
//   }
//   else {
//     return function(name) {
//       console.log("It's freezing " + name + ", wear a parka!");
//     }
//   }
// }

// var dressingFunc = getDressed("winter");
// for (var i = 0; i < names.length; i++) {
//   dressingFunc(names[i])
// };
// dressingFunc("Sean");

// // 4
// var toBeDone = [
//   function() {
//     console.log("I'll go first")
//   },
//   function() {
//     console.log("Me second")
//   },
//   function() {
//     console.log("Me third")
//   },
// ];

// // Forwards
// for (var i = 0; i < toBeDone.length; i++) {
//   toBeDone[i]
// };

// // Backwards
// for (var i = toBeDone.length - 1; i >= 0; i--) {
//   toBeDone[i]();
// };