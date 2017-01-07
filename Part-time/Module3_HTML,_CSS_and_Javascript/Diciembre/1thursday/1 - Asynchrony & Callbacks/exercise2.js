// función asíncrona (se ejecuta en paralelo e interrumpe cuando termina)
function shout () {
  console.log('Ahhhhh!');
}

setTimeout(shout, 1000);

console.log('hola');
