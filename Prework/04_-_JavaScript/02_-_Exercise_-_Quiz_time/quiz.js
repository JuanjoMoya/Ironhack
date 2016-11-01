var user = {}
var responses = []
function question1() {
  var name = prompt('What is your name?')
  user.name = name
}

question1();



function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
    alert('Please answer either Yes or No');
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

question2();



function question3() {
  var secondQuestion = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive or ScriptyScript?');
  secondQuestion = secondQuestion.toLowerCase();
  switch (secondQuestion) {
   	
    case 'java':
    secondQuestion = false
    break

    case 'livescript':
    secondQuestion = true
    break
    
    case 'javalive':
    secondQuestion = false
    break

    case 'scriptyscript':
    secondQuestion = false
    break

    default:
    alert('Please answer: Java, LiveScript, JavaLive, or ScriptyScript');
    return question3();

  }

  responses.push(secondQuestion); // add the true or false value to the responses array

}

question3();



function question4() {
  var thirdQuestion = prompt('Who is a famous athlete: Gina Lollobrigida, Placido Domingo, Angela Merkel or Usain Bolt?');
  thirdQuestion = thirdQuestion.toLowerCase();
  switch (thirdQuestion) {
   	
    case 'gina lollobrigida':
    thirdQuestion = false
    break

    case 'placido domingo':
    thirdQuestion = false
    break
    
    case 'angela merkel':
    thirdQuestion = false
    break

    case 'usain bolt':
    thirdQuestion = true
    break

    default:
    alert('Please answer: Gina Lollobrigida, Placido Domingo, Angela Merkel or Usain Bolt');
    return question4();

  }

  responses.push(thirdQuestion); // add the true or false value to the responses array

}

question4();



function question5() {
  var fourthQuestion = prompt('What is an original spanish meal: Pizza, Hamburger, Couscous or Paella?');
  fourthQuestion = fourthQuestion.toLowerCase();
  switch (fourthQuestion) {
   	
    case 'pizza':
    fourthQuestion = false
    break

    case 'hamburger':
    fourthQuestion = false
    break
    
    case 'couscous':
    fourthQuestion = false
    break

    case 'paella':
    fourthQuestion = true
    break

    default:
    alert('Please answer: Pizza, Hamburger, Couscous or Paella');
    return question5();

  }

  responses.push(fourthQuestion); // add the true or false value to the responses array

}

question5();




function evaluate(responsesArray) {

	// declare two variables to store the totals
	var correctanswers = 0
	var incorrectanswers = 0

	// populate the “totals” variables from the “responsesArray”
	for (var index = 0, length = responsesArray.length; index < length; index++) {
		if (responsesArray[index] === true) {
			correctanswers += 1;
		}
		else {
			incorrectanswers += 1;
		}	
	}

	// save the “totals” variables inside the user object
	user.correctanswers = correctanswers
	user.incorrectanswers = incorrectanswers

	// call showResults
	showResults();
}

function showResults() {

	// display the user results
	alert('Your name is ' + user.name + ', the number of correct answers is ' + user.correctanswers + ' and the number of incorrect answers is ' + user.incorrectanswers);
	//console.log('Your name is ' + user.name + ', the number of correct answers is ' + user.correctanswers + ' and the number of incorrect answers is ' + user.incorrectanswers);


}

// call the function, passing it the responses array
evaluate(responses);


