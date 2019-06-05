PVector position;
PVector velocity;
float r = 6;
float speed = 0.5;
int growth = 50;

  void setup(){
    size(1500,1500);
    background(#A02D2D, 40);
    smooth();
    
    position = new PVector(width/2, 0);
    velocity = new PVector(-1,1);
    velocity.mult(speed);
}

  void draw(){
    fill(#A02D2D, 50);
    rect(0,0,width,height);
    drawDinosaur(width, height);

}

  void drawDinosaur(int x, int y){
    fill(#A02D2D, 10);
    rect(0,0,width,height);
    pushMatrix();
    translate(100,900);
    fill(#A02D2D);
    // ground
    beginShape();
    fill(#763A12);
    ellipse(100,100,3000,700);
    endShape(CLOSE);
    //left foot
    beginShape();
    fill(#159825);
    vertex(-10,0);
    vertex(20,-40);
    vertex(70,0);
    vertex(-10,0);
    endShape(CLOSE);
    //left leg
    beginShape();
    vertex(-10,0);
    vertex(-40,-70);
    vertex(30,-70);
    vertex(20,-40);
    endShape(CLOSE);
    //left foot
    beginShape();
    vertex(-40,-70);
    vertex(-10,-120);
    vertex(40,-80);
    vertex(30,-70);
    endShape(CLOSE);
    //body
    beginShape();
    vertex(-10,-120);
    vertex(40,-180);
    vertex(80,-200);
    vertex(130,-220);
    vertex(190, -200);
    vertex(280,-170);
    vertex(250, -120);
    vertex(200,-80);
    vertex(160,-60);
    vertex(80,-60);
    vertex(40,-80);
    endShape(CLOSE);
    //right leg upper
    beginShape();
    vertex(250,-120);
    vertex(280,-70);
    vertex(210,-70);
    vertex(200,-80);
    endShape(CLOSE);
    //right leg middle
    beginShape();
    vertex(280,-70);
    vertex(270,-40);
    vertex(240, 0);
    vertex(210,-70);
    endShape(CLOSE);
    //right foot
    beginShape();
    vertex(270,-40);
    vertex(320,0);
    vertex(240,0);
    endShape(CLOSE);
    //tail lower
    beginShape();
    vertex(-10,-120);
    vertex(-20,-140);
    vertex(20,-180);
    vertex(40,-180);
    endShape(CLOSE);
    // tail upper
    beginShape();
    vertex(-20,-140);
    vertex(-40,-320);
    vertex(20,-180);
    endShape(CLOSE);
    //neck
    //left neck
    beginShape();
    vertex(230,-185);
    vertex(240,-210);
    vertex(245,-220);
    vertex(249,-230);
    vertex(250,-240);
    vertex(260,-250);
    vertex(270,-270);
    vertex(280,-290);
    vertex(290,-330);
    //head
    vertex(300,-370);
    vertex(320,-380);
    vertex(390,-350);
    vertex(390,-340);
    vertex(320,-320);
    //right neck
    vertex(310,-300);
    vertex(300,-280);
    vertex(290,-260);
    vertex(280,-240);
    vertex(270,-230);
    vertex(275,-200);
    vertex(280,-170);
    endShape(CLOSE);
    //eyeball!
    beginShape();
    fill(#F7FFF8);
    ellipse(340, -365,30,30);
    fill(0);
    ellipse(345,-370,5,5);
    endShape(CLOSE);
    
    // meteor
    noStroke();
    fill(#64371C, 90);
    ellipse(position.x+ 50, position.y-500, r*3, r*3);
    position.add(velocity);
    
    noStroke();
    fill(#64371C, 80);
    ellipse(position.x+ 100, position.y-600, r*4.5, r*4.5);
    position.add(velocity);
    
    noStroke();
    fill(#64371C, 90);
    ellipse(position.x + 400, position.y - 1200, r*5, r*5);
    position.add(velocity);
    
    noStroke();
    fill(#64371C);
    ellipse(position.x - 100, position.y-900, r*5, r*5);
    position.add(velocity);
    
    noStroke();
    fill(#64371C);
    ellipse(position.x + 800, position.y-950, r*3, r*3);
    position.add(velocity);
  
    noStroke();
    fill(#64371C);
    ellipse(position.x + 900, position.y-850, r*6, r*6);
    position.add(velocity);
    
    noStroke();
    fill(#64371C);
    ellipse(position.x + 100, position.y - 700, r * 10, r * 10);
    position.add(velocity);
   
    popMatrix();
  }
