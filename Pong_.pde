int xPosition;
int yPosition;
int ys = 2;
int xs = 3;
int rectx = 20;
int recty = 50;


void setup() {
  size( 500, 500);
  background(0);
  xPosition = width/2;
  yPosition = height/2;
}


void draw() {
  background(0);
  fill(255);
  noStroke();
  rectMode(CENTER);
  if(mouseX <= xPosition+25 && mouseX >= xPosition-25 && mouseY <= yPosition+25 && mouseY >= yPosition-25){
    ys = ys * -1;
    xs = xs * -1;
    } 
  if(rectx <= xPosition+30 && rectx >= xPosition-30 && recty <= yPosition+45 && recty >= yPosition-45){
    ys = ys * -1;
    xs = xs * -1;
    } 



  ellipse(xPosition, yPosition, 50, 50);

  if (yPosition >= height) {
    ys = ys * -1;
  } else if (yPosition <= 0) {
    ys = ys * -1;
  }
  yPosition = yPosition + ys;
  
  if (xPosition >= width) {
    xs = xs * -1;
  } else if (xPosition <= 0) {
    xs = xs * -1;
  }
  xPosition = xPosition + xs;
  
    if (keyPressed == true){
      if (key == 's' || key == 'S'){
        recty = recty+10;
       }
      if (key == 'w' || key == 'W'){
        recty = recty-10;
       }
    }
    rect(rectx, recty, 10, 80);
}