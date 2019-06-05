int startX;
int startY;
int endX;
int endY;

void setup()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  
  size(800,500);
  strokeWeight(5);
  background(0);
  
}
void draw()
{
  stroke((int)(Math.random() * 255));
    strokeWeight(4);
    
  while(endX < 800){
    endX = startX + (int)(9 * Math.random());
    endY = (startY - 9 + (int)(18 * Math.random()));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }

}
void mousePressed()
{
  startX = 0;
  endX = 0;
  startY = 150;
  endY = 150;

}
