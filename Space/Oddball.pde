
class Oddball extends Normal{
  int xPos;
  
  Oddball(){
    xPos = -300;
  }
  
  void draw(){
    fill(#0DFA6D);
    ellipse(xPos, 15,70,70);
    xPos = xPos+1;
    if(xPos>width){
      xPos = -350;
    }    
  }
}
