class Jumbo {
  float x;
  float y;
  float z;
  
  Jumbo() {
    x = random(-width/8,width/8);
    y = random(-height/8,height/8);
    z = random(width/8);
  }
  
  void update(){
    z-=5;
    if (z <= .0)
      reset();
  }
  
  void reset() {
    x = random(-5000, 5000);
    y = random(-5000, 5000);
    z = 2000.0;
  }
  
  void draw() {
    float offsetX = 100.0*(x/z);
    float offsetY = 100.0*(y/z);
    float scaleZ = 0.0001*(2000.0-z);

    pushMatrix();
    translate(offsetX, offsetY);
    scale(scaleZ);
    fill(255);
    ellipse(0,0,500,500);
    popMatrix();
  } 
}
  
