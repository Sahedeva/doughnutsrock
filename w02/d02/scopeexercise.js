
// 
function apple() {
  var n = 5;

  function a() {
    var n = 6;
    console.log("this is a's output "+n);


  function b() {
    console.log(n);
  }
}
  a();
  b();
}

apple();