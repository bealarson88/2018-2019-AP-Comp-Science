public class Door extends BoardItem{
  Door(int rowAt, int colAt){
    super(rowAt, colAt);   
    className = "door";
  }
  
  
  public void show(int xAt, int yAt, int cellSize){
   pushMatrix();
   translate(xAt,yAt);
   scale(.1);
   PImage img;
   img = loadImage("door.jpg");
   image(img, 0,0);
   popMatrix();
      
  }
}
