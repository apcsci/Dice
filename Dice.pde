void setup(){
  noLoop();
  size(500,500);
}
void draw(){
  background(255,255,255);
   int sum = 0;
   for(int y = 3; y <= 500; y = y + 25) {
     for(int x = 3; x <= 450; x = x + 25) {
       Die bob = new Die(x,y);
       bob.show();
       if (bob.diceRoll == 1) 
         sum = sum + 1; 
       else if (bob.diceRoll == 2) 
         sum = sum + 2;
       else if (bob.diceRoll == 3)
          sum = sum + 3;
       else if (bob.diceRoll == 4)
         sum = sum + 4;
       else if (bob.diceRoll == 5)
         sum = sum + 5;
       else 
         sum = sum + 6;
     }
   }
   textSize(20);
   text("Sum = " + sum, 200,480);
}
void mousePressed(){
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, recSize, myDots, diceRoll;
  Die(int x, int y) {
    myX = x;
    myY = y;
    recSize = 20;
    myDots = 3;
  }
  void roll(){
     diceRoll = (int)(Math.random()*6) + 1;
  }
  void show(){
    roll();
    fill((int)(Math.random()*36) + 40, (int)(Math.random()*36) + 160, (int)(Math.random()*36) + 170);
    rect(myX,myY,recSize,recSize);
    if (diceRoll == 1) {
      fill(0,0,0);
      ellipse(myX + 10, myY + 10,myDots,myDots);
    }
    else if (diceRoll == 2) {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3,myDots,myDots);
      ellipse(myX + 17, myY + 17,myDots,myDots);
    }
    else if (diceRoll == 3) {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3,myDots,myDots);
      ellipse(myX + 17, myY + 17,myDots,myDots);
      ellipse(myX + 10, myY + 10,myDots,myDots);
    }
    else if (diceRoll == 4) {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3,myDots,myDots);
      ellipse(myX + 3, myY + 17,myDots,myDots);
      ellipse(myX + 17, myY + 3,myDots,myDots);
      ellipse(myX + 17, myY + 17,myDots,myDots);
    }
    else if (diceRoll == 5) {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3,myDots,myDots);
      ellipse(myX + 3, myY + 17,myDots,myDots);
      ellipse(myX + 17, myY + 3,myDots,myDots);
      ellipse(myX + 17, myY + 17,myDots,myDots);
      ellipse(myX + 10, myY + 10,myDots,myDots);
    }
    else {
      fill(0,0,0);
      ellipse(myX + 3, myY + 3,myDots,myDots);
      ellipse(myX + 3, myY + 17,myDots,myDots);
      ellipse(myX + 17, myY + 3,myDots,myDots);
      ellipse(myX + 17, myY + 17,myDots,myDots);
      ellipse(myX + 3, myY + 10,myDots,myDots);
      ellipse(myX + 17, myY + 10,myDots,myDots);
    }
  }
}
