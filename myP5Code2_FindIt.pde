var dogbXPos = [];
var dogbYPos = [];
var dogb = "🦴";
var DogbTotal = 200;

var doggyXPos = [];
var doggyYPos = [];
var doggy = "🐶";
var doggyTotal = 4;
var doggyFound = 0;

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
}

var display = function(){
  background(100,100,100);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < doggyXPos.length; i ++){
    text(doggy, doggyXPos[i], doggyYPos[i]);
  }

  for(var i = 0; i < dogbXPos.length; i ++){
    text(dogb, dogbXPos[i], dogbYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + doggy + "s   |   " + doggy + " " + doggyFound + "/" + doggyTotal, 0, 425);

  if(doggyFound == doggyTotal){
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


  for(var i = 0; i < DogbTotal; i++){
    dogbXPos.push(random(0,600));
    dogbYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    doggyXPos.push(random(0,600));
    doggyYPos.push(random(0,400));
  }
}