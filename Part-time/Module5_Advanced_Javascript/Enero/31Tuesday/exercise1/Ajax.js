// $.ajax(
//   {
//     type: "GET",
//     url: "http://ironhack-characters.herokuapp.com/characters",
//     success: showCharacters,
//     error: handleError
//   }
// );


var request = $.get("http://ironhack-characters.herokuapp.com/characters")
request.done(showCharacters);
request.fail(handleError);

function showCharacters(response){


  // console.log("Success");
  // console.log(response);


  var charactersArray = response;

  charactersArray.forEach(function(theCharacter){
    var html = `<li> ${theCharacter.name} </li>`;
    $('.js-characters-list').append(html);
  })
}

function handleError(error){
  console.log("Error");
  console.log(error.responseText);
}

var newCharacter = {
  name: "Chewbacca",
  occupation: "Muscle",
  weapon: "Bowcaster",
  debt: 777
}

$.ajax({
  type: "POST",
  url: "http://ironhack-characters.herokuapp.com/characters",
  data: newCharacter,
  success: function(response){
    console.log(response);
  },
  error: handleError
});
