float angle_s, angle_c;
void setup() {
  //frameRate(2);
  size(500, 500);
}

void draw() {
  background(255);
  fill(0);
  ona("A", 100, 10, 5);
  ona("B", 200, 10, 15);
  ona("C", 150, 20, 2);
  
}

void ona(String txt, float sV, float aI, float r) {

  float offset = height/2; // Y offset
  float scaleVal = sV; // Scale value for the wave magnitude
  float angleInc = radians(180)/aI; // Increment between the next angle
  float angle = 0.0; // Angle to receive sine values from
  for (int x = 0; x <= width; x += r) {
    float y = offset + (cos(angle) * scaleVal);
    text(txt, x, y);
    angle += angleInc+frameCount*.0001;
  }
}
