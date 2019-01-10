void generateArtwork()
{
  float xStart = mouseX;
  float yStart = mouseY;
  float xPos = xStart;
  float yPos = yStart;
  
  raisePen();

  ToDoList = (PVector[]) append(ToDoList, new PVector(xPos, yPos)); // move to first point
  
  dropPen();
 
 // Change this
 // these numbers effect the grid size and number of shapes drawn
  makeShapeGrid(4,4,11);
 
}

// helper functions
void dropPen() {
   ToDoList = (PVector[]) append(ToDoList, new PVector(-31, 0)); //Command 31 (lower pen)
}

void raisePen() {
   ToDoList = (PVector[]) append(ToDoList, new PVector(-30, 0)); //Command 30 (raise pen)
}
