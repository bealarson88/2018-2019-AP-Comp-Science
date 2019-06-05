//initialize variables for reference
Die Die1;
Die Die2;
Die Die3;
Die Die4;
Die Die5;
Die Die6;
Die Die7;
Die Die8;
Die Die9;
color bColor;
int counter;

//give positions for objects
void setup(){
  size(500,500);
  smooth();
  Die1 = new Die(50,50);
  Die2 = new Die(200,50);
  Die3 = new Die(350,50);
  
  Die4 = new Die(50,200);
  Die5 = new Die(200,200);
  Die6 = new Die(350,200);
  
  Die7 = new Die(50,350);
  Die8 = new Die(200,350);
  Die9 = new Die(350,350);
  
  noLoop();
}
void draw(){
  //call objects to appear
  background(bColor);
  smooth();
 
  Die1.show();
  Die2.show();
  Die3.show();
  Die4.show();
  Die5.show();
  Die6.show();
  Die6.show();
  Die7.show();
  Die8.show();
  Die9.show();
  textSize(20);
  text("Total number of dots: " + counter, 50,50);
  
}

void mousePressed(){
  counter = 0;
  redraw();
  Die1.roll();
  Die2.roll();
  Die3.roll();
  Die4.roll();
  Die5.roll();
  Die6.roll();
  Die7.roll();
  Die8.roll();
  Die9.roll();
  bColor = color(random(255), random(255), random(255));
}

class Die {
  int rollDice;
  int x_pos;
  int y_pos;
	
	Die(int x, int y){
    x_pos = x;
    y_pos = y;

	}
	void roll(){
    rollDice = (int)((Math.random() * 6) + 1);
	}
	
	void show(){ 
    fill(255);
    pushMatrix();
    translate(x_pos,y_pos);
    rect(50,50,90,90,20);
  
  //dots 
    //middle
    if(rollDice == 1 || rollDice == 3 || rollDice == 5){
      fill(0);
      ellipse(95,95,10,10);
    }
    //top left
    if(rollDice == 2 || rollDice == 3 || rollDice == 4 || rollDice == 5 || rollDice == 6){
      fill(0);
      ellipse(70,70,10,10);
    }
    //bottom right
    if(rollDice == 2 || rollDice == 3 || rollDice == 4 || rollDice == 5 || rollDice == 6){
      fill(0);
      ellipse(120,120,10,10);
    }
    //bottom left
    if(rollDice == 4 || rollDice == 5 || rollDice == 6){
      fill(0);
      ellipse(70,120,10,10);
    }
    //top right
    if(rollDice == 4 || rollDice == 5 || rollDice == 6){
      fill(0);
      ellipse(120,70,10,10);
    }
    //middles on six
    if(rollDice == 6){
      fill(0);
      ellipse(70,95,10,10);
      ellipse(120,95,10,10);
    }
    if(rollDice == 1)
      counter = counter + 1;
    if(rollDice == 2)
      counter = counter + 2;
    if(rollDice == 3)
      counter = counter + 3;
    if(rollDice == 4)
      counter = counter + 4;
    if(rollDice == 5)
      counter = counter + 5;
    if(rollDice == 6)
      counter = counter + 6;
 
    popMatrix();
  }
		//your code here
	}
