// -------- opcion sincrona
var pizza = iWantPizza(43); // 30 min parados

//  ------- opcion asincrona
var avisame = function(pizzaEnviada) {
  var pizza = pizzaEnviada;
}

iWantPizzaAsync(avisame);
// podemos seguir ejecutando, no estamos parados

// -------  en la pizzeria...
function iWantPizzaAsync(callback) {
  var pizzaHecha;
  // 30 min parados
  // cuando acabo "llamo" (ejecuto) el callback que me han dicho
  callback(pizzaHecha);
}
