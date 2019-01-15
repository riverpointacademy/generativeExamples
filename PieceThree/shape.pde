void makeShapes(float startX, float startY, int shapeCount) {
  int shapeNumber = 0;
  while(shapeNumber < shapeCount) 
  {
    // Change this
   // makeRectangle(startX,startY);
    //makeTriangle(startX, startY, 30);
    makeCircle(startX+random(-20,20), startY+random(-20,20),random(6,60));
    //for(int i = 5; i<40; i+=10)
    //{
    //     makeCircle(startX, startY, i);
    //}
 
    
    shapeNumber++;
  }
}

void makeShapeGrid(int rowCount, int columnCount, int numShapes) {
  float firstX = mouseX;
  float firstY = mouseY; 
  float xPos = firstX;
  float yPos = firstY;
  
  // Change this
  int spacerSize = 90;
  
  int rowNumber = 0;
  int columnNumber = 0;
  
  while(columnNumber < columnCount) 
  {
    while(rowNumber < rowCount) 
    {
      raisePen();
      makeShapes(xPos, yPos, numShapes);
      yPos = firstY + (rowNumber+1)*spacerSize;
      rowNumber++;
    }
    yPos = firstY;
    xPos = firstX + (columnNumber+1)*spacerSize;
    columnNumber++;
    rowNumber = 0;
  }
  

}
