Board myBoard;
Sticky guy;
Key mazeKey;
Door door;
Spikes spikes;
Spikes spikes2;
Spikes s3;
Spikes s4;
Spikes s5;
Spikes s6;
Spikes s7;
Bat bat;
Bat bat2;
Bat bat3;
Bat bat4;
int z = #069B11;

int [][] maze = 
{ {255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  },
  {255,255,z  ,255,z  ,255,z  ,255,255,255,255,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,255,255,255,z  ,255,z  ,255,z  ,z  },
  {z  ,255,z  ,255,255,255,z  ,255,z  ,z  ,z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,255,z  ,z  ,z  ,z  ,255,z  ,255,255,z  },
  {z  ,255,255,255,z  ,z  ,z  ,255,255,255,z  ,255,255,255,255,255,255,255,z  ,255,z  ,255,255,255,z  ,255,z  ,z  ,255,z  },
  {z  ,255,z  ,255,255,255,255,255,z  ,z  ,z  ,255,z  ,255,z  ,z  ,z  ,255,z  ,255,z  ,255,z  ,255,z  ,255,255,255,255,z  },
  {z  ,255,z  ,255,z  ,z  ,z  ,255,z  ,255,255,255,z  ,255,z  ,255,255,255,255,255,255,255,z  ,255,z  ,255,z  ,z  ,255,z  },
  {z  ,255,z  ,255,z  ,255,255,255,z  ,z  ,z  ,255,z  ,255,z  ,255,255,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,255,255,z  ,255,z  },
  {z  ,255,z  ,255,z  ,z  ,z  ,255,z  ,255,z  ,255,z  ,255,z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,z  ,255,z  ,255,z  },
  {z  ,255,255,255,255,255,255,255,255,255,z  ,255,z  ,255,z  ,255,z  ,255,255,255,255,z  ,z  ,255,255,255,255,z  ,255,z  },
  {z  ,z  ,z  ,255,z  ,z  ,z  ,255,z  ,z  ,z  ,z  ,z  ,255,255,255,255,255,z  ,z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  },
  {z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,z  ,z  ,255,z  ,z  ,255,255,255,255,255,255,z  },
  {z  ,z  ,255,255,255,255,255,z  ,255,255,255,255,255,255,255,255,255,255,255,z  ,z  ,255,255,255,z  ,z  ,255,z  ,255,z  },
  {z  ,z  ,255,z  ,255,z  ,255,z  ,255,z  ,z  ,z  ,255,z  ,z  ,255,255,255,255,z  ,255,255,z  ,255,z  ,z  ,255,z  ,255,z  },
  {z  ,z  ,255,z  ,255,z  ,255,255,255,z  ,z  ,z  ,255,255,255,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,z  ,255,z  ,z  ,z  },
  {z  ,z  ,255,255,255,z  ,z  ,z  ,z  ,255,255,255,z  ,z  ,255,z  ,255,255,255,255,255,255,255,255,z  ,z  ,255,z  ,z  ,z  },
  {z  ,z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,255,z  ,z  ,255,z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,z  ,255,255,255,z  },
  {z  ,255,255,255,255,255,255,255,255,255,z  ,255,z  ,z  ,z  ,255,255,z  ,z  ,255,z  ,255,z  ,255,z  ,z  ,z  ,z  ,255,z  },
  {z  ,255,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,255,z  ,z  ,z  ,255,z  ,z  ,z  ,255,z  ,255,z  ,255,z  ,255,255,z  ,255,z  },
  {z  ,255,255,255,255,255,255,255,z  ,z  ,z  ,255,255,255,z  ,255,255,255,255,255,z  ,255,z  ,255,z  ,255,z  ,z  ,z  ,z  },
  {z  ,255,z  ,z  ,z  ,z  ,z  ,255,255,255,z  ,z  ,z  ,255,255,255,z  ,z  ,z  ,255,255,255,z  ,255,255,255,z  ,z  ,z  ,z  },
  {z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  ,z  }

};

void setup(){
  size(1500,950);
  
  myBoard = new Board(width/10, height/10, 21, 30, 40);

  guy = new Sticky(0,0);
  mazeKey = new Key(1,27);
  door = new Door(17,29);
  spikes = new Spikes(10,7);
  spikes2 = new Spikes(8,28);
  s3 =  new Spikes(14,4);
  s4 = new Spikes(15,14);
  s5 = new Spikes(1,23);
  s6 = new Spikes(3,9);
  s7 = new Spikes(6,16);
  bat = new Bat(1,5);
  bat2 = new Bat(12,18);
  bat3 = new Bat(5,9);
  bat4 = new Bat(10,20);
  
  int[][]guyData = {{255}};
  guy.setData(guyData);

  int[][]keyData = {{255}};
  mazeKey.setData(keyData);  

  myBoard.addLayer(maze);  

  //MAKE INTO ARRAY??
  myBoard.addItem(guy);
  myBoard.addItem(mazeKey);
  myBoard.addItem(door);
  myBoard.addItem(spikes);
  myBoard.addItem(spikes2);
  myBoard.addItem(s3);
  myBoard.addItem(s4);
  myBoard.addItem(s5);
  myBoard.addItem(s6);
  myBoard.addItem(s7);
  myBoard.addItem(bat);
  myBoard.addItem(bat2);
  myBoard.addItem(bat3);
  myBoard.addItem(bat4);
  
}

void draw(){
  background(#FA880D);
  myBoard.show(guy.row(),guy.col());
  death();
  if(win()){
    guy.stickWin();
    myBoard.removeItem(guy);
  }
  noStroke();
  //bat.show(100,500,5);

}

//minus lives
//////make smaller
public void death(){
  if(guy.row() == spikes.row() && guy.col() == spikes.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy);
  }
  if(guy.row() == spikes2.row() && guy.col() == spikes2.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy);
  }
  if(guy.row() == s3.row() && guy.col() == s3.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }    
    guy.hit(guy);
  }
  if(guy.row() == s4.row() && guy.col() == s4.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy);
  }
  if(guy.row() == s5.row() && guy.col() == s5.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy);
  }
  if(guy.row() == bat.row() && guy.col() == bat.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy);
  }
  if(guy.row() == bat2.row() && guy.col() == bat2.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy); 
  }
  if(guy.row() == bat3.row() && guy.col() == bat3.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy); 
  }
  if(guy.row() == bat4.row() && guy.col() == bat4.col()){
    if(hasMazeKey()){
      mazeKey.keyHit(mazeKey);
    }
    guy.hit(guy); 
  }
}

public boolean hasMazeKey(){
  if(guy.row() == mazeKey.row() && guy.col() == mazeKey.col()){
    return true;
  }
  return false;
}
//////gets key to door
public boolean win(){
  if(mazeKey.row() == door.row() && mazeKey.col() == door.col() - 1){
    return true;
  }
  return false;
}


void mousePressed(){
  println(myBoard.getCell(mouseX, mouseY));

}
void keyPressed(){
  int row = guy.row();
  int col = guy.col();
  
  int keyRow = mazeKey.row();
  int keyCol = mazeKey.col();
  
  if (key == CODED) {
    if (keyCode == UP) {
      if(hasMazeKey() && maze[keyRow-1][keyCol] == 255){
        keyUp();
      }
      if(maze[row-1][col] == 255){
        upKey();
      }
      
    } else 
    if (keyCode == DOWN) {
      if(hasMazeKey() && maze[keyRow+1][keyCol] == 255){
         keyDown();
      }     
      if(maze[row+1][col] == 255){
         downKey();
      }
           
    } else 
    if (keyCode == LEFT) {
      if(hasMazeKey() && maze[keyRow][keyCol-1] == 255){
        keyLeft();
      }
      println("row: " + row + " col: " + col);
      if(col != 0 && maze[row][col-1] == 255){
         leftKey();
  
      }
    } else 
    if (keyCode == RIGHT) {
      if(hasMazeKey() && maze[keyRow][keyCol+1] == 255){
        keyRight();
      }
      
      if(maze[row][col+1] == 255){
         rightKey();
      }
    }// else
   // if(win()){
      //if(keyCode == 82){
     // guy.reset(guy);
      //}
    //}
  }
}
void upKey(){ guy.updateRow(-1); }
void downKey(){ guy.updateRow(1); }
void leftKey(){ guy.updateCol(-1); }
void rightKey(){ guy.updateCol(1); }

//for if(hasMazeKey)
void keyUp(){ mazeKey.updateRow(-1);}
void keyDown(){ mazeKey.updateRow(1);}
void keyLeft(){ mazeKey.updateCol(-1);}
void keyRight(){ mazeKey.updateCol(1);}
