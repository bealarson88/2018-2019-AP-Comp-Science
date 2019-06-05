Bacteria[] bact;

void setup(){
  size(600,600);
  background(255, 90);
  noStroke();
  bact = new Bacteria[100];
  
  for(int i = 0; i < bact.length; i++){
    int x = (int)(width*(Math.random()));
    int y = (int)(height*(Math.random()));
    int r = (int)(30*Math.random()) + 15;
    bact[i] = new Bacteria(x,y,r);
  }
}

void draw(){  
  fill(#A02D2D, 50);
  rect(0,0,width,height);
  for(int i = 0; i < bact.length; i++){
    if(mouseX > bact[i].x){
      bact[i].x = bact[i].x + 1;
    } else if(mouseX < bact[i].x){
      bact[i].x = bact[i].x - 1;
    }
    if(mouseY > bact[i].y){
      bact[i].y = bact[i].y + 1;
    } else if(mouseY < bact[i].y){
      bact[i].y = bact[i].y - 1;
    }
    bact[i].show();
  }

}

class Bacteria{
  float x;
  float y;
  float radius;
  
  public Bacteria(float x_pos, float y_pos, float rad){
    x = x_pos;
    y = y_pos;
    radius = rad;
  }
 void show(){ 
   pushMatrix();
   translate(x,y);
   fill(random(255), random(255), random(255));
   ellipse(10,10,radius,radius);
   popMatrix();
 
 }

}
   
