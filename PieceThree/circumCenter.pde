PVector circumCenter(PVector A, PVector B, PVector C) {
  float xTop = ((A.y+B.y)/2)+((C.x+A.x)/(A.y-C.y))*((A.x+C.x)/2)+((B.x-A.x)/(A.y-B.y))*((A.x+B.x)/2);
  float xBottom = ((C.x-A.x)/(A.y/C.y))-((B.x-A.x)/(A.y-B.y));
  float x = xTop/xBottom;
  float y = ((B.x-A.x)/(A.y-B.y))*(x-((A.x+B.x)/2))+((A.y+B.y)/2);
  PVector P = new PVector(x,y);
  return P;
}
