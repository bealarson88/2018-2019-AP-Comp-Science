//purple spikes class

public class Spikes extends BoardItem{
  
  Spikes(int rowAt, int colAt){
    super(rowAt, colAt); 
    className = "Spikes";
  }
  
  public void show(int xAt, int yAt, int cellSize){  
    pushMatrix();
    translate(xAt,yAt);
    noStroke();
    fill(#770B79);    
    triangle(cellSize/3, cellSize, cellSize/2, 2*cellSize/3, 2*cellSize/3, cellSize);
    triangle(0,cellSize,cellSize/4,2*cellSize/3, cellSize/3,cellSize);
    triangle(2*cellSize/3, cellSize, 3*cellSize/4, 2*cellSize/3, cellSize, cellSize);
    popMatrix();    
    //println("spikes: xAt, yAt" + xAt + yAt);   

  }
    
}
