// Change this
void makeTriangle(float x, float y, float range) {
   // change these to effect how far apart rectangles can be drawn
  float minDist = -20; 
  float maxDist = 20;
  
  // use these values for pseudo randomness in position of triangle 
  //x = x + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  //y = y + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  
  // use these value for perlin randomness in position of triangle
   x = x + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
   y = y + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  
  float firstX = x;
  float firstY = y;
  
   //dropPen(); // place here to enable drag lines
   ToDoList = (PVector[]) append(ToDoList, new PVector(x, y));   // add first point
   dropPen();  // place here to remove drag lines
   
   // reset x and y
   x = firstX;
   y = firstY;
   
   // get new random location for second point
   // use these values for pseudo randomness 
   //x = x + map(randomizer.getPseudoRandom(),0,1,-range,range);
   //y = y + map(randomizer.getPseudoRandom(),0,1,-range,range);
  
   // use these value for perlin randomness 
    x = x + map(randomizer.getPerlinRandom(),0,1,-range,range);
    y = y + map(randomizer.getPerlinRandom(),0,1,-range,range);
   
  ToDoList = (PVector[]) append(ToDoList, new PVector(x, y)); // add second point
  
  // reset x and y
  // get new random location for third point
  // use these values for pseudo randomness 
  //x = x + map(randomizer.getPseudoRandom(),0,1,-range,range);
  //y = y + map(randomizer.getPseudoRandom(),0,1,-range,range);
  
  // use these value for perlin randomness 
   x = x + map(randomizer.getPerlinRandom(),0,1,-range,range);
   y = y + map(randomizer.getPerlinRandom(),0,1,-range,range);
  
  ToDoList = (PVector[]) append(ToDoList, new PVector(x, y)); // add third point
   
  ToDoList = (PVector[]) append(ToDoList, new PVector(firstX, firstY)); // add first point again
  
  raisePen();

}
