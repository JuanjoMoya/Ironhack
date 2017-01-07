var foods = ['pizza', 'cookies', 'bread'];


// foods.forEach(function (food) {
//   console.log(food);
// })

// var capsFoods = foods.map(function (food) {
//   return food.toUpperCase();
// })
// console.log(capsFoods);

// var msg = foods.reduce(function (pre, food) {
//   return pre + ' AND ' + food
// })
// console.log(msg);

var best = foods.filter(function (food) {
  return food !== 'bread';
})
console.log(best);
