var button = document.querySelector('.js-button');

var sumame = function() {
  //var elementoA;
  var elementoA = document.getElementById('a');
  //var elementoB;
  var elementoB = document.getElementById('b');

  var elementoBoton = document.getElementsByClassName('js-button');
  var elementoInput = document.getElementsByTagName('p');
  var elementoAB = document.querySelectorAll('text');

	//var valorA;
  var valorA = parseInt(elementoA.value);

	//var valorB;
  var valorB = parseInt(elementoB.value);

  var valorX = $('.js-button');
  var valorY = jQuery('.js-button');

	// mdn value input

 	var suma = valorA + valorB;
  alert("El resultado de la suma es: " + suma);
}

button.addEventListener("click", sumame);
