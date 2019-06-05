public class Sticky extends BoardItem {
  int lives;
  Sticky(int rowAt, int colAt){
    super(rowAt, colAt);
    lives = 3;
    className = "guy";
  } 
  
  //for if sticky loses a life
  void hit(Sticky guy){
    lives--;
    guy.setRow(0);
    guy.setCol(0);
  }
  
  //game over
  void stickWin(){
    textSize(150);
    fill(#FEFF1A);
    text("YOU WON!", 500,500);
    //textSize(20);
    //text("Press 'r' to restart", 500,600);
  }
  
  //restarts game
  //delete maybe
  void reset(Sticky guy){
    lives = 3;
    guy.setRow(0);
    guy.setCol(0);
  }
  
  
  public void show(int xAt, int yAt, int cellSize){
    pushMatrix();
    translate(xAt, yAt);
    stroke(1);
    //legs
    line(cellSize/3, cellSize, cellSize/2, 2*cellSize/3);
    line(2*cellSize/3,cellSize,cellSize/2, 2*cellSize/3);
    
    //body
    line(cellSize/2, 2*cellSize/3, cellSize/2, cellSize/4);
    
    //head
    fill(0);
    ellipse(cellSize/2, cellSize/4, .3*cellSize, .3*cellSize);
    
    //arms
    line(cellSize/4, cellSize/2, 3*cellSize/4, cellSize/2);
    popMatrix();   
    
    
 //deals with lives
    if(lives >= 1){
      fill(0);
      textSize(50);
      fill(#FEFF1A);
      text("Lives: " + lives, 500,-20);
    }else{
      fill(#F20505);
      pushMatrix();
      textSize(200);
      fill(#FA0505);
      text("GAME OVER", 150, 150);
      fill(0);
      rect(cellSize*100, cellSize*100, cellSize*100, cellSize*100);
      popMatrix();
    }
    

  }

}
