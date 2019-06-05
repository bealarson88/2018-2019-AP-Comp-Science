public class Key extends BoardItem{
  Key(int rowAt, int colAt){
    super(rowAt, colAt); 
    className = "Key";
  }
  void keyHit(Key key1){
    key1.setRow(0);
    key1.setCol(0);
  }

  public void show(int xAt, int yAt, int cellSize){
   pushMatrix();
   translate(xAt,yAt);
   beginShape();
   scale(.75);
   fill(#CCD31A);
   rect(9,10,3,13);
   ellipse(10,10,10,10);
   rect(12,20,5,2);
   rect(12,17,5,2);
   fill(255);
   ellipse(10,10,5,5);
   endShape(CLOSE);
   popMatrix();
   
    
  }
}
