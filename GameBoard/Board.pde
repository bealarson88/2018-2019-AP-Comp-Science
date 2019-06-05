//board class

public class Board {

  int x_pos, y_pos;
  int cellSize;
  int rows, cols;
  int[][] maze;
  ArrayList<BoardItem> items;

  public Board(int x, int y, int numRows, int numCols, int cellSize) {
    x_pos = x;
    y_pos = y;
    this.cellSize = cellSize;
    rows = numRows; 
    cols = numCols;
    maze = null;
    items = new ArrayList<BoardItem>();
  }
  
  public void addItem(BoardItem item){
    items.add(item); 
    item.setBounds(rows, cols);
  }
  public void removeItem(BoardItem item){
    items.remove(item);
  }
  
  public int getColor(int row,int col){
    return maze[row][col];
  }



  public void show(int guyX, int guyY) {
    pushMatrix();
    translate(x_pos, y_pos);
          
        //draw black mask (cellColor = 0)
    for (int j = 0; j < rows; j++) {
      for (int i = 0; i < cols; i++) {
        int xAt = i * cellSize;
        int yAt = j * cellSize;        
        drawMazeCell(j, i, xAt, yAt,0);       
      }
    }
    

    //begin flashlight work
    int rowStart = guyX-2;
    int rowEnd = guyX+2;
    int colStart = guyY-2;
    int colEnd = guyY+2;
    
    //deals with maze edges
    if(guyX < 2){
      rowStart = 0;
      rowEnd = guyX + 2;
    }
    if(guyX > 18){
      rowStart = guyX - 2;
      rowEnd = 20;
    }
    if(guyY < 2){
      colStart = 0;
      colEnd = guyY+2;
    }
    if(guyY > 27){
      colStart = guyY-2;
      colEnd = 29;
    }
    
    //draws flashlight around sticky guy
    for (int i = rowStart; i < rowEnd+1; i++) {
      for (int j = colStart; j < colEnd+1; j++) {
        int xAt = j * cellSize;
        int yAt = i * cellSize;
        drawMazeCell(i, j, xAt, yAt, maze[i][j]);  
      }      
    }
 
      for(BoardItem item: items){
          int xAt = item.col() * cellSize;
          int yAt = item.row() * cellSize;
          //println("xAt: " + xAt + " yAt: " + yAt);
          int x = item.col();
          int y = item.row();
          if(item.className == "guy"){
             println("className: " + item.className + " x: " + x + " Y : " + y);
             println("rowStart: " + rowStart + " rowEnd: " + rowEnd + " colS: " + colStart + " colEnd: " + colEnd);
          }

          if(y >= rowStart && x <= colEnd && x >= colStart && y <= rowEnd){
            println("x: " + x + " y: " + y);
            item.show(xAt, yAt, cellSize);
          }
      } //<>//
      
    //end fashlight work
    popMatrix();
  }
  
  protected void drawMazeCell(int rowId, int colId, int xPos, int yPos,int cellColor){
    if(maze != null){
      if(maze.length > rowId){
        if(maze[rowId].length > colId){
          fill(cellColor);
          rect(xPos, yPos, cellSize, cellSize);
        }
      }
    }
  }

  public Cell getCell(int xClicked, int yClicked) {
    xClicked = xClicked - x_pos;
    yClicked = yClicked - y_pos;

    int xAt = xClicked/cellSize;
    int yAt = yClicked/cellSize;

    return new Cell(yAt, xAt);
  }
  
  public void addLayer(int[][] theMaze){
     this.maze = theMaze;
  }

}
