void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  translate(100,0);
  ona_c();
  ona_s();
}

void ona_c(){
  float offset = width/3; // Y offset
  float scaleVal = 100; // Scale value for the wave magnitude
  float angleInc = radians(180)/10; // Increment between the next angle
  float angle = 0.0; // Angle to receive sine values from
  for (int y = 0; y <= height; y += 5) {
    float x = offset + (cos(angle) * scaleVal);
    text("A", x, y);
    angle += angleInc+frameCount*.0001;
  }
}
void ona_s(){
  float offset = width/4; // Y offset
  float scaleVal = 100; // Scale value for the wave magnitude
  float angleInc = radians(180)/10; // Increment between the next angle
  float angle = 0.0; // Angle to receive sine values from
  for (int y = 0; y <= height; y += 5) {
    float x = offset + (-cos(angle) * scaleVal);
    text("B", x, y);
    angle += angleInc+frameCount*.0001;
  }
}
