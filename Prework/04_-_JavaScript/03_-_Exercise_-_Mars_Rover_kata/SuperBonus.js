var myRover = {
  position: [0,0], 
  direction: 'N'
};


var secondRover = {
  position: [2,0], 
  direction: 'N'
};

var name1 = myRover;

var name2 = myRover;

var obstacle1 = {
  position: [2,8] 
};


var obstacle2 = {
  position: [1,5] 
};


var obstacle3 = {
  position: [9,2] 
};


var finish_mov = 'N';



function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      if (rover.position[0] + 1 === obstacle1.position[0] && rover.position[1] === obstacle1.position[1]|| rover.position[0] + 1 === obstacle2.position[0] && rover.position[1] === obstacle2.position[1] || rover.position[0] + 1 === obstacle3.position[0] && rover.position[1] === obstacle3.position[1] || rover.position[0] + 1 === name2.position[0] && rover.position[1] === name2.position[1]) {
        finish_mov = 'Y';
        num_position = rover.position[0] + 1;
        console.log("There is an obstacle in Rover next position: [" + num_position + ", " + rover.position[1] + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[0]++
      }
      break;

    case 'E':
      if (rover.position[1] + 1 === obstacle1.position[1] && rover.position[0] === obstacle1.position[0]|| rover.position[1] + 1 === obstacle2.position[1] && rover.position[0] === obstacle2.position[0] || rover.position[1] + 1 === obstacle3.position[1] && rover.position[0] === obstacle3.position[0] || rover.position[1] + 1 === name2.position[1] && rover.position[0] === name2.position[0]) {
        finish_mov = 'Y';
        num_position = rover.position[1] + 1;
        console.log("There is an obstacle in Rover next position: [" + rover.position[0] + ", " + num_position + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[1]++
        break;
      }

    case 'S':
      if (rover.position[0] - 1 === obstacle1.position[0] && rover.position[1] === obstacle1.position[1]|| rover.position[0] - 1 === obstacle2.position[0] && rover.position[1] === obstacle2.position[1] || rover.position[0] - 1 === obstacle3.position[0] && rover.position[1] === obstacle3.position[1] || rover.position[0] - 1 === name2.position[0] && rover.position[1] === name2.position[1]) {
        finish_mov = 'Y';
        num_position = rover.position[0] - 1;
        console.log("There is an obstacle in Rover next position: [" + num_position + ", " + rover.position[1] + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[0]--
        break;
      }

    case 'W':
      if (rover.position[1] - 1 === obstacle1.position[1] && rover.position[0] === obstacle1.position[0]|| rover.position[1] - 1 === obstacle2.position[1] && rover.position[0] === obstacle2.position[0] || rover.position[1] - 1 === obstacle3.position[1] && rover.position[0] === obstacle3.position[0] || rover.position[1] - 1 === name2.position[1] && rover.position[0] === name2.position[0]) {
        finish_mov = 'Y';
        num_position = rover.position[1] - 1;
        console.log("There is an obstacle in Rover next position: [" + rover.position[0] + ", " + num_position + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[1]--
        break;
      }
  };
}



function goBack(rover) {
  switch(rover.direction) {
    case 'N':
      if (rover.position[0] - 1 === obstacle1.position[0] && rover.position[1] === obstacle1.position[1]|| rover.position[0] - 1 === obstacle2.position[0] && rover.position[1] === obstacle2.position[1] || rover.position[0] - 1 === obstacle3.position[0] && rover.position[1] === obstacle3.position[1] || rover.position[0] - 1 === name2.position[0] && rover.position[1] === name2.position[1]) {
        finish_mov = 'Y';
        num_position = rover.position[0] - 1;
        console.log("There is an obstacle in Rover next position: [" + num_position + ", " + rover.position[1] + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[0]--
        break;
      }

    case 'E':
      if (rover.position[1] - 1 === obstacle1.position[1] && rover.position[0] === obstacle1.position[0]|| rover.position[1] - 1 === obstacle2.position[1] && rover.position[0] === obstacle2.position[0] || rover.position[1] - 1 === obstacle3.position[1] && rover.position[0] === obstacle3.position[0] || rover.position[1] - 1 === name2.position[1] && rover.position[0] === name2.position[0]) {
        finish_mov = 'Y';
        num_position = rover.position[1] - 1;
        console.log("There is an obstacle in Rover next position: [" + rover.position[0] + ", " + num_position + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[1]--
        break;
      }

    case 'S':
      if (rover.position[0] + 1 === obstacle1.position[0] && rover.position[1] === obstacle1.position[1]|| rover.position[0] + 1 === obstacle2.position[0] && rover.position[1] === obstacle2.position[1] || rover.position[0] + 1 === obstacle3.position[0] && rover.position[1] === obstacle3.position[1] || rover.position[0] + 1 === name2.position[0] && rover.position[1] === name2.position[1]) {
        finish_mov = 'Y';
        num_position = rover.position[0] + 1;
        console.log("There is an obstacle in Rover next position: [" + num_position + ", " + rover.position[1] + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[0]++
        break;
      }

    case 'W':
      if (rover.position[1] + 1 === obstacle1.position[1] && rover.position[0] === obstacle1.position[0]|| rover.position[1] + 1 === obstacle2.position[1] && rover.position[0] === obstacle2.position[0] || rover.position[1] + 1 === obstacle3.position[1] && rover.position[0] === obstacle3.position[0] || rover.position[1] + 1 === name2.position[1] && rover.position[0] === name2.position[0]) {
        finish_mov = 'Y';
        num_position = rover.position[1] + 1;
        console.log("There is an obstacle in Rover next position: [" + rover.position[0] + ", " + num_position + "]. Rover is stopped waiting for instructions. Current Rover Position: [" + rover.position[0] + ", " + rover.position[1] + "]. Current Rover Direction: " + name1.direction)
      }
      else {
        rover.position[1]++
        break;
      }
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





function executeCommands(num_rover, commands) {
  finish_mov = 'N';

  for (var index = 0, length = commands.length; index < length; index++) {
  
    //Control what rover we are ordering commands
    if (num_rover === 1) {
      name1 = myRover;
      name2 = secondRover;
    }
    else {
      name1 = secondRover;
      name2 = myRover;
    }    


    //Control exit from for
    if (finish_mov === 'N') {    

      //Control grid limit
    
      if (commands[index] === 'f') {
        switch(name1.direction) {

          case 'N':
            if (name1.position[0] === 10) {
              if (name1.position[1] === 10) {
                name1.direction = 'W'	
	           }
	            else {
                name1.direction = 'E'
              } 
            }
            break;

          case 'E':
            if (name1.position[1] === 10) {
              if (name1.position[0] === 10) {
                name1.direction = 'S'	
              }
	            else {
                name1.direction = 'N'
              } 
            }
            break;

          case 'S':
            if (name1.position[0] === 0) {
              if (name1.position[1] === 0) {
                name1.direction = 'E'	
	            }
  	          else {
                name1.direction = 'W'
	            } 
            } 
            break;

          case 'W':
            if (name1.position[1] === 0) {
              if (name1.position[0] === 0) {
                name1.direction = 'N'	
              }
              else {
                name1.direction = 'S'
              } 
            }
            break;
        };
      }


    
      if (commands[index] === 'b') {
        switch(name1.direction) {

          case 'N':
            if (name1.position[0] === 0) {
              if (name1.position[1] === 0) {
                name1.direction = 'W'	
              }
              else {
                name1.direction = 'E'
              } 
            }
            break;

          case 'E':
            if (name1.position[1] === 0) {
              if (name1.position[0] === 0) {
                name1.direction = 'S'	
              }
              else {
                name1.direction = 'N'
              } 
            }
            break;

          case 'S':
            if (name1.position[0] === 10) {
              if (name1.position[1] === 10) {
                name1.direction = 'E'	
              }
              else {
                name1.direction = 'W'
              } 
            } 
            break;

          case 'W':
            if (name1.position[1] === 10) {
              if (name1.position[0] === 10) {
                name1.direction = 'N'	
              }
              else {
                name1.direction = 'S'
              } 
            }
            break;
        };
      }






      switch(commands[index]) {
        case 'f':
          goForward(name1);
          break;
        case 'b':
          goBack(name1);
          break;
        case 'r':
          turnRight(name1);
          break;
        case 'l':
          turnLeft(name1);
          break;
      };


    }


  }


  // Me gustaría controlar que si no han habído problemas de obstáculos se mostrara siempre la nuevo posición y dirección del rover.
  // He intentado controlarlo a través de la variable finish_mov pero, a pesar de modificarca con el valor 'S' cuando encuentro un
  // obstáculo cuando pregunto por ella al llegar a este punto tiene valor 'N'. No he conseguido ver porqué no se conserva la 'S' como su valor.
  // Por este motivo he asteriscado esta parte, porque no funciona y no sé porqué.
  //if (finish_mov = 'N') { 
  //  console.log("New Rover Position: [" + name1.position[0] + ", " + name1.position[1] + "]")
  //  console.log("New Rover Direction: " + name1.direction)
  //}

 
}


executeCommands(1, ['f', 'f', 'f', 'f', 'f', 'f', 'f', 'f']);

executeCommands(2, ['f', 'f', 'f', 'f', 'f', 'f', 'f', 'f']);



