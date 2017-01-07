


titulo.innerHTML = "Otro titulo"

var subtitulo = document.createElement("h2");

subtitulo.innerHTML = "Subtitulo";
titulo.appendChild(subtitulo);


// jQuery
var titulo = $('.js-titulo');

$titulo.text("Otro titulo");
$titulo.html("<em>Otro titulo"</em>); //en cursiva (sólo con $*.html)

var $subtitulo = $('<h2>Subtitulo</h2>');
$titulo.append($subtitulo);
$titulo.append('<h2>Subtitulo</h2>');
$titulo.before($subtitulo);



var button = document.querySelector('.js-button');

var pulsame = function() {
  var ul = $('ul'); // querySelector ul
  var li = $('<li>'); //crea elemento li
  li.text("Item 3");
  ul.append(li);

  ul.before("<h1>Mi lista</h1>");

  ul.prepend('<li>Item 1</li>');
  ul.after("Fin de lista");




  // var li = document.createElement('li');
  // var li2 = document.createElement('li');
  // var li3 = document.createElement('li');
  // var t = document.createTextNode('Soy un list item');
  // var t2 = document.createTextNode('Soy un list item2');
  // var h1 = document.createElement('h1');
  //
  // li.appendChild(t);
  // li2.appendChild(t2);
  // li2.html()
  // li3.innerHTML = "Soy un list item3";
  // h1.innerHTML = "Mi lista";
  //
  // ul.appendChild(li);
  // ul.appendChild(li2);
  // ul.appendChild(li3);
  // document.body.appendChild(ul);
  // var parent = ul.parentNode;
  // parent.insertBefore(h1, ul);

}

button.addEventListener("click", pulsame);
