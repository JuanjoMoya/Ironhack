

window.onload = function() {



// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.


  var saveButton = document.getElementById('save-button');

  saveButton.addEventListener('click', addToDoItem, false);



  var doneButton = document.getElementById('done-button');

  doneButton.addEventListener('click', markAsDone, false);






  function addToDoItem() {

    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field

  

    // save the value of todo-input field 
    var toSave = document.getElementById('todo-input');    



    // check if there is no blanks in the todo-input field
    var inputField = document.createTextNode(toSave.value);
     
    if (inputField > '') {

      // create a <li> node 
      var node = document.createElement("LI");



      // create a text node
      var textnode = document.createTextNode(toSave.value);



      // append the text to <li>
      node.appendChild(textnode);



      // append <li> to the last position in todo-list-items
      var firstLine = document.querySelector('li:nth-of-type(1)');

      firstLine.parentNode.insertBefore(node, firstLine.lastElementChild);



      // finally we clear the todo-input field
      toSave.value = ' ';

    }



  }







  function markAsDone() {

    doneButton.classList.add('liked');

    doneButton.innerHTML = "Liked!";

    document.querySelector('h1').style.color = "red";




    // First we check if there is any li element to move
    // from To-Do list to Done list

    var allUl = document.getElementsByTagName('ul');

    var numLi = allUl[0].getElementsByTagName('li').length;

    if (numLi > 0) {

      // First we remove the first
      // list item from the To-Do list
      var firstLinemov = document.querySelector('li:nth-of-type(1)');

      firstLinemov.parentNode.removeChild(firstLinemov);



      // Second we add the removed item to the Done list
      var allUl = document.getElementsByTagName('ul');

      var lastUl = allUl[allUl.length - 1];

      lastUl.appendChild(firstLinemov);



      // Finally we add the correct class to get the strikethrough.
      var allLi = document.getElementsByTagName('li');
      var lastLi = allLi[allLi.length - 1];
      lastLi.classList.add('done');


    }



  }

  

}



