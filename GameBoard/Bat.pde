PImage[] img = new PImage[2];

public class Bat extends BoardItem{

  //float xBat = random(5);
  //float yBat = random(5);
  int tx = 0;
  int ty = 10000;
  
  Bat(int rowAt, int colAt){
    super(rowAt, colAt); 
    img[0] = loadImage("batGif.gif");
    img[1] = loadImage("batGif2.gif"); 
    className = "bat";
}
  
  public void show(int xAt, int yAt, int cellSize){

    int x = (int)map(noise(tx),0,1,0, width-100);
    int y = (int)map(noise(ty),0,1,0,height-100);
   
    pushMatrix();
    translate(xAt,yAt);
    scale(.15);
    frameRate(10);
    image(img[frameCount%2], 10,10);
    tx += 0.01;
    ty += 0.01;
    popMatrix();

    //println("batX: " + x + "batY: " + y);
   
   }
  
}
