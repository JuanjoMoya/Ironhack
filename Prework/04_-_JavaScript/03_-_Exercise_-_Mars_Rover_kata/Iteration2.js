var myRover = {
  position: [0,0], 
  direction: 'N'
};



function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]++
      break;
    case 'E':
      rover.position[1]++
      break;
    case 'S':
      rover.position[0]--
      break;
    case 'W':
      rover.position[1]--
      break;
  };
}



function goBack(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]--
      break;
    case 'E':
      rover.position[1]--
      break;
    case 'S':
      rover.position[0]++
      break;
    case 'W':
      rover.position[1]++
      break;
  };
}




function turnLeft(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'W'
      break;
    case 'E':
      rover.direction = 'N'
      break;
    case 'S':
      rover.direction = 'E'
      break;
    case 'W':
      rover.direction = 'S'
      break;
  };
}



function turnRight(rover) {
  switch(rover.direction) {
    case 'N':
      rover.direction = 'E'
      break;
    case 'E':
      rover.direction = 'S'
      break;
    case 'S':
      rover.direction = 'W'
      break;
    case 'W':
      rover.direction = 'N'
      break;
  };
}





function executeCommands(commands) {
  for (var index = 0, length = commands.length; index < length; index++) {
  
    //Control grid limit
    
    if (commands[index] === 'f') {
      switch(myRover.direction) {

        case 'N':
          if (myRover.position[0] === 10) {
            if (myRover.position[1] === 10) {
              myRover.direction = 'W'	
	          }
	          else {
              myRover.direction = 'E'
            } 
          }
          break;

        case 'E':
          if (myRover.position[1] === 10) {
            if (myRover.position[0] === 10) {
              myRover.direction = 'S'	
            }
	          else {
              myRover.direction = 'N'
            } 
          }
          break;

        case 'S':
          if (myRover.position[0] === 0) {
            if (myRover.position[1] === 0) {
              myRover.direction = 'E'	
	          }
	          else {
              myRover.direction = 'W'
	          } 
          } 
          break;

        case 'W':
          if (myRover.position[1] === 0) {
            if (myRover.position[0] === 0) {
              myRover.direction = 'N'	
            }
            else {
              myRover.direction = 'S'
            } 
          }
          break;
      };
    }


    
    if (commands[index] === 'b') {
      switch(myRover.direction) {

        case 'N':
          if (myRover.position[0] === 0) {
            if (myRover.position[1] === 0) {
              myRover.direction = 'W'	
            }
            else {
              myRover.direction = 'E'
            } 
          }
          break;

        case 'E':
          if (myRover.position[1] === 0) {
            if (myRover.position[0] === 0) {
              myRover.direction = 'S'	
            }
            else {
              myRover.direction = 'N'
            } 
          }
          break;

        case 'S':
          if (myRover.position[0] === 10) {
            if (myRover.position[1] === 10) {
              myRover.direction = 'E'	
            }
            else {
              myRover.direction = 'W'
            } 
          } 
          break;

        case 'W':
          if (myRover.position[1] === 10) {
            if (myRover.position[0] === 10) {
              myRover.direction = 'N'	
            }
            else {
              myRover.direction = 'S'
            } 
          }
          break;
      };
    }






    switch(commands[index]) {
      case 'f':
        goForward(myRover);
        break;
      case 'b':
        goBack(myRover);
        break;
      case 'r':
        turnRight(myRover);
        break;
      case 'l':
        turnLeft(myRover);
        break;
    };



  
  }

      console.log("New Rover Position: [" + myRover.position[0] + ", " + myRover.position[1] + "]")
      console.log("New Rover Direction: " + myRover.direction)

}


executeCommands(['f', 'f', 'f', 'r', 'f', 'f', 'l', 'f', 'f', 'f', 'b', 'b']);


