
var button = document.querySelector('.js-button');

var pulsame = function() {
  // var list = [1, 2, 3, 4, 5];
  var ul = document.createElement('ul');
  // var ul = $('ul');
  var li = document.createElement('li');
  var li2 = document.createElement('li');
  // var li2 = $('<li>');
  var li3 = document.createElement('li');
  var t = document.createTextNode('Soy un list item');
  var t2 = document.createTextNode('Soy un list item2');
  var h1 = document.createElement('h1');
  //appedtChild
  li.appendChild(t);
  li2.appendChild(t2);
  li2.html()
  li3.innerHTML = "Soy un list item3";
  h1.innerHTML = "Mi lista";

  ul.appendChild(li);
  ul.appendChild(li2);
  ul.appendChild(li3);
  document.body.appendChild(ul);
  var parent = ul.parentNode;
  parent.insertBefore(h1, ul);

}

button.addEventListener("click", pulsame);
