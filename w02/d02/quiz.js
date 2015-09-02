// QUESTION #1
// What gets printed into the console?
(function() {
  var n = 5;

  function a() {
    var n = 6;
  }

  function b() {
    console.log(n);
  }

  a();
  b();
})();



// QUESTION #2
// What is the returned result?
(function() {
  var n = 5;

  function a() {
    n = 6;
  }

  function b() {
    console.log(n);
  }

  a();
  b();
})();



// QUESTION #3
// What gets printed into the console?
var x = 10;

function foo(x) {
  x += 5;

  return function(y) {
    return x + y;
  };
}

var bar = foo(10);
var result = bar(23);
console.log(result);



// QUESTION #4
// What gets printed into the console?
var x = 6;
var y = 4;

function a(b) {
  return function(c) {
    return y + b + c;
  };
}

x = 2;
y = 5;
var fn = a(x);

x = 1;
y = 3;
console.log(fn(5));



// QUESTION #5
// What is the returned result?
(function() {

  function f() {
    return 1;
  }

  return f();

  function f() {
    return 2;
  }

})();
