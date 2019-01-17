PVector circumCenter(ArrayList<PVector> triPoints) {
  PVector A = triPoints.get(0);
  PVector B = triPoints.get(1);
  PVector C = triPoints.get(2);
  
  //float xTop = ((A.y+B.y)/2)+((C.x+A.x)/(A.y-C.y))*((A.x+C.x)/2)+((B.x-A.x)/(A.y-B.y))*((A.x+B.x)/2);
  //float xBottom = ((C.x-A.x)/(A.y/C.y))-((B.x-A.x)/(A.y-B.y));
  //float x = xTop/xBottom;
  //float y = ((B.x-A.x)/(A.y-B.y))*(x-((A.x+B.x)/2))+((A.y+B.y)/2);
  
  float a = (A.x-C.x)/(C.y-A.y);
  float b = (A.x+C.x)/2;
  float c = (A.y+C.y)/2;
  float d = (A.y+B.y)/2;
  float e = (A.x-B.x)/(B.y-A.y);
  float f = (A.x+B.x)/2;
  float g = (A.x-C.x)/(C.y-A.y);
  float h = (A.x-B.x)/(B.y-A.y);
  
  float xTop = (a*b)-c+d-(e*f);
  float xBottom = g-h;
  float x = xTop/xBottom;
  float y = ((A.x-B.x)/(B.y-A.y))*(x-((A.x+B.x)/2))+(A.y+B.y)/2;
  
  
  PVector P = new PVector(x,y);
  return P;
}

float getRadius(PVector A, PVector P) {
 return sqrt(pow((A.x-P.x),2)+pow((A.y-P.y),2)); 
}

ArrayList<PVector> circlePoints;  //used to hold onto points for a circle that will be drawn
void findCirclePoints(float centerX, float centerY, float radius) {
  circlePoints.clear();
  // Change this
  for(float i = 0; i<PI; i+=PI/36) {
    float tx = radius*cos(i)*cos(i) + centerX;
    float ty = radius*cos(i)*sin(i) + centerY;
    circlePoints.add(new PVector(tx,ty));
    //println(circlePoints.get(0).x);  // debugging
  }
}

// Change this
void makeCircumCircle(float x, float y, ArrayList<PVector> triPoints) {
 // change these to effect how far apart circles can be drawn
  //float minDist = -20; 
  //float maxDist = 20;
  PVector circumCenter = circumCenter(triPoints);
  float radius = getRadius(triPoints.get(0),circumCenter);
  
  // center of circle ---> its the circumcenter
  x = circumCenter.x;
  y = circumCenter.y;
  
 // println(x);
 //println(y);
  
  findCirclePoints(x, y, radius);
  //dropPen(); // place here to enable drag lines
  ToDoList = (PVector[]) append(ToDoList, new PVector(circlePoints.get(0).x, circlePoints.get(0).y));
  dropPen(); //place here to remove drag lines
  
  for(int i = 1; i<circlePoints.size(); i++) {
    PVector temp = circlePoints.get(i);
    ToDoList = (PVector[]) append(ToDoList, new PVector(temp.x, temp.y));
  }
   raisePen();
   
   println("TriPoints: "+triPoints);
   println("circumCenter: (" + x + ","+y+")");
   println("radius: "+radius);
}

// Change this
void makeCircle(float x, float y, float radius) {
 // change these to effect how far apart circles can be drawn
  float minDist = -20; 
  float maxDist = 20;
  
  // use these values for pseudo randomness in position of triangle 
  x = x + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  y = y + map(randomizer.getPseudoRandom(),0,1,minDist,maxDist);
  
  // use these value for perlin randomness in position of triangle
  // x = x + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  // y = y + map(randomizer.getPerlinRandom(),0,1,minDist,maxDist);
  
  
  findCirclePoints(x, y, radius);
  //dropPen(); // place here to enable drag lines
  ToDoList = (PVector[]) append(ToDoList, new PVector(circlePoints.get(0).x, circlePoints.get(0).y));
  dropPen(); //place here to remove drag lines
  
  for(int i = 1; i<circlePoints.size(); i++) {
    PVector temp = circlePoints.get(i);
    ToDoList = (PVector[]) append(ToDoList, new PVector(temp.x, temp.y));
  }
   raisePen();
}
