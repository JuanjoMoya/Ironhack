// en situaciones de asincronía utilizar recursividad, nunca utilizar loops (no funcionan)
// function blastOff (n) {
//   if (n >= 0) {
//     console.log(n);
//     n--;
//     setTimeout(function(){blastOff(n)}, 1000);
//   } else {
//     console.log('blast off!');
//   }
// }
//
// blastOff(10);







// var pry = require('pryjs');

var Viking = function(name, health, strength) {
  this.name = name;
  this.health = health;
  this.strength = strength;
  Viking.prototype.damage = function() {
    health --;
    console.log("Soy el vikingo " + this.name + " tengo " + this.health + " puntos de salud y " + this.strength + " de fuerza.");
  }
}





var Saxon = function() {
  this.health = function() {
    return Math.random() * (10 - 1) + 1;
  }
  this.strength = function() {
    return Math.random() * (10 - 1) + 1;
  }
}




var Lucha = function(vikings_array, saxons_array) {

  this.presentacion = function () {

    // console.log("La lucha va a empezar.\n\nLos vikingos atacan una aldea sajona.\n\n");
    // console.log("A por los sajones!!!\n");
    var count = 5;
    function cuentaatras() {
      if (count >= 0) {
        if (count > 2) {
          if (count === 5) {
            console.log("\n\nLa lucha va a empezar.\n\n");
          } else if (count === 4) {
            console.log("Los vikingos atacan una aldea sajona.\n\n");
          } else {
            console.log("A por los sajones!!!\n\n");
          }
        }
        if (count >= 0 && count < 3) {
        console.log("Presentamos al vikingo " + vikings_array[count].name + " con una salud de " + vikings_array[count].health + " y una fuerza de " + vikings_array[count].strength + "\n\n");
        }
        count --;
        setTimeout(cuentaatras, 2000);
      } else {
        lucha1.batalla();
      }
    };
    cuentaatras();
  }


  this.batalla = function () {

    function alataque() {
      if (vikings_array.lenght > 0 && saxons_array.lenght > 0) {

        function luchando() {
          console.log("El vikingo " + viking_array[0] + " está luchado con un sajon.");
          

        };
        luchando();

      } else {

        var total_vikings = vikings_array.lenght;
        var total_saxons = saxons_array.lenght;

        function final(count, winners) {
          if (count > 0) {
            if (count === 2) {
              console.log("La batalla a terminado!!!\n\n");
            } else {
              console.log("Han ganado los " + winners + "!!!\n\n");
            }
            count --;
            // setTimeout(final(count, winners), 2000);
            setTimeout(function(){final(count, winners)}, 2000);
          }
        };


// NO SÉ POR QUÉ AL PREGUNTAR POR LA LENGHT DEL ARRAY ME RETORNA 0
// ¿TIENE ALGO QUE VER CON ARRAY PROTOTYPE?
        // if (vikings_array.lenght > 0) {
        if (total_vikings > 0) {
          final(2, "vikingos");
        } else {
          final(2, "sajones");
        }

      }
    };

    alataque();

  }

}



var viking1 = new Viking("Vicky", 10, 10);
var viking2 = new Viking("Ragnar", 20, 20);
// eval(pry.it);
var viking3 = new Viking("Loky", 15, 15);
var vikings = [];
vikings.push(viking1);
vikings.push(viking2);
vikings.push(viking3);

var saxon1 = new Saxon();
var saxon2 = new Saxon();
var saxon3 = new Saxon();
var saxons = [];
// saxons.push(saxon1);
// saxons.push(saxon2);
// saxons.push(saxon3);

var lucha1 = new Lucha(vikings, saxons);
lucha1.presentacion();
// lucha1.batalla();
