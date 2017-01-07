// # POO en Ruby, con método privado
//
// class Vehiculo
//   def initialize(modelo, numRuedas)
//     @modelo = modelo
//     @numRuedas = numRuedas
//   end
//
//   def describete
//     mostrarEnSalpicadero "Soy un #{@modelo} y tengo #{@numRuedas} ruedas."
//   end
//
//   private
//   def mostrarEnSalpicadero(mensaje)
//     puts mensaje
//   end
// end

var Vehiculo = (function() {
  function mostrarEnSalpicadero(mensaje) {
    console.log(mensaje);
  };

  return function(modelo, numRuedas) {
    // Esto es un scope diferente. Hemos creado un closure
    // que tiene acceso a mostrarEnSalpicadero.
    this.modelo = modelo;
    this.numRuedas = numRuedas;

    this.describete = function() {
      mostrarEnSalpicadero("Soy un " + this.modelo + " y tengo " + this.numRuedas + " ruedas.");
    }
  }
})();

var v1 = new Vehiculo("Toyota", 4);
v1.describete();
// Este es el scope global. En este scope no tenemos acceso al
// scope interno de Vehículo (no tenemos acceso a mostrarEnSalpicadero),
// sólo al closure.
