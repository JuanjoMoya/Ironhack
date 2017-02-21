$('document').ready(function() {

    function showCharacters(response) {
        console.log(response);
        var charactersArray = response;

        charactersArray.forEach(function(theCaracter) {
            var html = `<li> Name: ${theCaracter.name} - Weapon: ${theCaracter.weapon} - Occupation: ${theCaracter.occupation} - Debt: ${theCaracter.debt} </li>`;
            $('.js-characters-list').append(html);
        });
    }

    function handleError(error) {
        console.log("Error");
        console.log(error.responseText);
    }

    function loadCharacter() {
        console.log("Dale");
        var request = $.get("https://ironhack-characters.herokuapp.com/characters");
        request.done(showCharacters);
        request.fail(handleError);
    }

    function addCharacter() {
        request = $.post("https://ironhack-characters.herokuapp.com/characters", {
            name: $('#name').val(),
            occupation: $('#occupation').val(),
            weapon: $('#weapon').val(),
            debt: $('#debt').val()
        });
        request.done(loadCharacter);
        request.fail(handleError);
    }

    $(".js-characters").click(function() {
        loadCharacter();
    });

    $(".js-createCharacter").on("click", function() {
    // $("form").on("submit", function(event) {
        // event.preventDefault();
        addCharacter();
        loadCharacter();
        $("input").val("");
    });
});
