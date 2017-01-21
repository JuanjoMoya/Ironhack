// Write your Pizza Builder JavaScript in this file.


$(".btn-pepperonni").click(function(){  
  $(".pep").toggleClass("hidden");
  if ($(".pep").hasClass("hidden")){
    $(".btn-pepperonni").removeClass("active");
    $(".pepperoni-price").addClass("hidden");
  }
  else{
    $(".btn-pepperonni").addClass("active");
    $(".pepperoni-price").removeClass("hidden");
  }
});


$(".btn-mushrooms").click(function(){
  $(".mushroom").toggleClass("hidden");
  if ($(".mushroom").hasClass("hidden")){
    $(".btn-mushrooms").removeClass("active");
    $(".mushroom-price").addClass("hidden")
  }
  else{
    $(".btn-mushrooms").addClass("active");
    $(".mushroom-price").removeClass("hidden");
  }
});



$(".btn-green-peppers").click(function(){
  $(".green-pepper").toggleClass("hidden");
  if ($(".green-pepper").hasClass("hidden")){
    $(".btn-green-peppers").removeClass("active");
    $(".pepper-price").addClass("hidden");
  }
  else{
    $(".btn-green-peppers").addClass("active")
    $(".pepper-price").removeClass("hidden");
  }
});

$(".btn-crust").click(function(){
  $(".crust").toggleClass("crust-gluten-free");
  if ($(".crust").hasClass("crust-gluten-free")){
    $(".btn-crust").addClass("active");
    $(".crust-price").removeClass("hidden");
  }
  else{
    $(".btn-crust").removeClass("active");
    $(".crust-price").addClass("hidden");
  }
});

$(".btn-sauce ").click(function(){
  $(".sauce").toggleClass("sauce-white");
  if ($(".sauce").hasClass("sauce-white")){
    $(".btn-sauce").addClass("active");
    $(".sauce-price").removeClass("hidden");
  }else {
    $(".btn-sauce").removeClass("active");
    $(".sauce-price").addClass("hidden");
  }
});



var pepperoniPrice = function(){
  if ($(".pep").hasClass("hidden")){
  return 0;
  }
  else{
    return 1;
  }
}

var mushroomsPrice = function(){
  if ($(".mushroom").hasClass("hidden")){
  return 0;
  }
  else{
    return 1;
  }
}

var peppersPrice = function(){
  if ($(".green-pepper").hasClass("hidden")){
  return 0;
  }
  else{
    return 1;
  }
}

var saucePrice = function(){
  if ($(".sauce").hasClass("sauce-white")){
  return 3;
  }
  else{
    return 0;
  }
}

var crustPrice = function(){
  if ($(".crust").hasClass("crust-gluten-free")){
  return 5;
  }
  else{
    return 0;
  }
}

var currentPrice = function(){
  var cheesePrice = 10;
  var finalPrice = cheesePrice + pepperoniPrice() + mushroomsPrice() + peppersPrice() + saucePrice() + crustPrice();
  return finalPrice;
}

$(".btn").click(function(){
  $("#final-price").text("$" + currentPrice())
});
