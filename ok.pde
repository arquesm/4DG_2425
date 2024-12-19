
float ample;
float ample2;
void setup() {
  size(600, 300);
  ellipseMode(CORNER);
}

void draw() {
  background(255);
  ample = mouseX;
  ample2 = ample-width;

  //linea diagonal
  line(ample, height, width, 0);

  ellipse(0, 0, ample, height);

  // Coordenades de la línea diagonal
  float x1 = ample;
  float y1 = height;
  float x2 = width;
  float y2 = 0;

  // Punt de intersecció amb la diagonal
  float t = map(mouseX, 0, width, 0, 1); // Ajustar posició amb el mouse
  float px = lerp(x1, x2, t);
  float py = lerp(y1, y2, t);


  strokeWeight(15);
  //linea perpendicular
  line(px, py, px, height);
  line(px, py, width, py);
}
