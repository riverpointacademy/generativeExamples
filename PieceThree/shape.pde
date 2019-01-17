void makeShapes(float startX, float startY, int shapeCount) {
  int shapeNumber = 0;
  int increment = 3;
  int incVal = increment;
  ArrayList<PVector> triPoints;
  while(shapeNumber < shapeCount) 
  {
    // Change this
   // makeRectangle(startX,startY);
   triPoints = makeTriangle(startX, startY, 120);
   makeCircumCircle(startX,startY,triPoints);
   increment += incVal;
       
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
