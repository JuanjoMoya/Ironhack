// en situaciones de asincronía utilizar recursividad, nunca utilizar loops (no funcionan)
function blastOff (n) {
  if (n >= 0) {
    console.log(n);
    n--;
    setTimeout(function(){blastOff(n)}, 1000);
  } else {
    console.log('blast off!');
  }
}

blastOff(10);
