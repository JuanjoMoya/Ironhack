var Animal = function(name, noise, patas) {
  this.name = name;
  this.patas = patas;
  this.noise = noise;
  Animal.prototype.presentate = function() {
    console.log("Soy un " + this.name + " tengo " + this.patas + " patas y hago " + this.noise);
  }
}

var perro = new Animal("perro", "guau", 4);
perro.presentate();
