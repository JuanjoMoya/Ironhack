var button = document.querySelector('.js-button');

var sumame = function() {
  //var elementoA;
  var elementoA = document.getElementById('a');
  //var elementoB;
  var elementoB = document.getElementById('b');

	//var valorA;
  var valorA = parseInt(elementoA.value);

	//var valorB;
  var valorB = parseInt(elementoB.value);

	// mdn value input

 	var suma = valorA + valorB;
  alert("El resultado de la suma es: " + suma);
}

button.addEventListener("click", sumame);
