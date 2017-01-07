var Car = function(model, noise) {
  this.model = model;
  this.noise = noise;
};

// Car.prototype.number_of_wheels = 4;
// Car.prototype.makeNoise = function () {
//   console.log(this.noise);
// };

Car.prototype = {
  number_of_wheels: 4,
  makeNoise: function() {
    console.log(this.noise)
  }
}

var car1 = new Car("Seat", "Rooom!");
car1.makeNoise();
