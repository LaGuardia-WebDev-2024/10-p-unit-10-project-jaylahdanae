//BONE
var dogbXPos = [];
var dogbYPos = [];
var dogb = "🦴";
var DogbTotal = 200;

//The Dog
var doggyXPos = [];
var doggyYPos = [];
var doggy = "🐶";
var doggyTotal = 4;
var doggyFound = 0;

//Poodle
var poodleXPos = [];
var poodleXPos = [];
var poodle = "🐩";
var poodleTotal = 4;
var poodleFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
x = 0;
while(x < 600){
  text("🏐", x,20);
   text("🏐", x,400);
  x += 60;
}





}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < doggyXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, doggyXPos[i], doggyYPos[i])<15){
      doggyXPos.splice(i, 1);
      doggyYPos.splice(i, 1);
      doggyFound++;
    }
  }


  for(var i = 0; i < poodleXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, poodleXPos[i], poodleYPos[i])<15){
      poodleXPos.splice(i, 1);
      poodleYPos.splice(i, 1);
      poodleFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < doggyXPos.length; i ++){
    text(doggy, doggyXPos[i], doggyYPos[i]);
  }

  for(var i = 0; i < dogbXPos.length; i ++){
    text(dogb, dogbXPos[i], dogbYPos[i]);
  }

for(var i = 0; i < poodleXPos.length; i ++){
  text(poodle, poodleXPos[i], poodleYPos[i]);
}

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + doggy + "s & The" +  poodle+ "s |   " + doggy + " " + doggyFound + "/" + doggyTotal + poodle + " " + poodleFound + "/" + poodleTotal, 0, 425);

  if(doggyFound == doggyTotal && poodleFound == poodleTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  dogbXPos = [];
  dogbYPos = [];
  doggyXPos = [];
  doggyYPos = [];
  doggyFound = 0;
poodleXPos = [];
poodleYPos= [];
poodleFound = 0;
 
  for(var i = 0; i < DogbTotal; i++){
    dogbXPos.push(random(0,600));
    dogbYPos.push(random(0,400));
  }

  for(var i = 0; i < doggyTotal; i++){
    doggyXPos.push(random(0,600));
    doggyYPos.push(random(0,400));
  }

for(var i = 0; i < poodleTotal; i++){
  poodleXPos.push(random(0,600));
  poodleYPos.push(random(0,400));
}

}

