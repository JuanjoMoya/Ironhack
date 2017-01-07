function averageColon(string) {
  var arrayNumbers = string.split(':');
  var total = arrayNumbers.reduce(function(a, b){
    return parseInt(a) + parseInt(b);
   });
  console.log(total / arrayNumbers.length);
}

var numbers = '80:70:90:100';
averageColon(numbers);
