// Change this
void makeRectangle(float x, float y) {
  // change these to effect how far apart rectangles can be drawn
  float minDist = -20; 
  float maxDist = 20;
  
  // use these values for pseudo randomness in position of rectangle 
  x = x + map(randomizer.getPseudoRandom(),0,1,1.15*minDist,1.15*maxDist);
  y = y + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  
  // use these value for perlin randomness in position of rectangle
  // x = x + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  // y = y + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  
  float firstX = x;
  float firstY = y;
  
  // change these to control size of rectangles
  float minLength = 5;
  float maxLength = 70;
 
  // use these values for pseudo randomness in size of rectangle
  //float h = map(randomizer.getPseudoRandom(),0,1,minLength,maxLength);
  //float w = map(randomizer.getPseudoRandom(),0,1,minLength,maxLength);
  
  // use these values for pelin randomness in size of rectangle
  float h = map(randomizer.getPerlinRandom(),0,1,minLength,maxLength);
  float w = map(randomizer.getPerlinRandom(),0,1,minLength,maxLength);
  
   //dropPen(); // place here to enable draglines
   ToDoList = (PVector[]) append(ToDoList, new PVector(x, y));   // add first point
   
   dropPen(); // place here to remove drag lines
   x += w; // move to second point
   ToDoList = (PVector[]) append(ToDoList, new PVector(x, y)); // add second point
   
   y+= h; // move to third point
   ToDoList = (PVector[]) append(ToDoList, new PVector(x, y)); // add third point
   
   x -= w; // move to last point
   ToDoList = (PVector[]) append(ToDoList, new PVector(x, y)); // add last point
   
   ToDoList = (PVector[]) append(ToDoList, new PVector(firstX, firstY)); // add first point again
   raisePen();
}
