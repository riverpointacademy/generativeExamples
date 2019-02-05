




ArrayList<PVector> circlePoints;  //used to hold onto points for a circle that will be drawn
void findCirclePoints(float startX, float startY, float size) {
  circlePoints.clear();
  // Change this
  for(float i = 0; i<PI; i+=PI/36) {
    float tx = size*cos(i)*cos(i) + startX;
    float ty = size*cos(i)*sin(i) + startY;
    circlePoints.add(new PVector(tx,ty));
    //println(circlePoints.get(0).x);  // debugging
  }
}

// Change this
void makeCircle(float x, float y, float size) {
 // change these to effect how far apart circles can be drawn
  float minDist = -20; 
  float maxDist = 20;
  
  // use these values for pseudo randomness in position of triangle 
  x = x + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  y = y + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  
  // use these value for perlin randomness in position of triangle
  // x = x + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  // y = y + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  
  
  findCirclePoints(x, y, size);
  //dropPen(); // place here to enable drag lines
  ToDoList = (PVector[]) append(ToDoList, new PVector(circlePoints.get(0).x, circlePoints.get(0).y));
  dropPen(); //place here to remove drag lines
  
  for(int i = 1; i<circlePoints.size(); i++) {
    PVector temp = circlePoints.get(i);
    ToDoList = (PVector[]) append(ToDoList, new PVector(temp.x, temp.y));
  }
   raisePen();
}
