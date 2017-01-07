var foo = "bar";

function scope1() {
  var foo = "lele";

  console.log(foo);
  // "lele"

  scope2();
  // "bar"
}

function scope2() {
  console.log(foo);
  // "bar"
}

// scope 0 === scope global === window
console.log(foo);
// "bar

scope1();
// "lele" y "bar"(de ejecución scope2 dentro de scope1)
