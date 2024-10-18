float y;
float py=0;
PFont myfont;
String mytext = "#";

void setup() {
  size(595, 879);
  myfont=createFont("IBMPlexMono-Medium.ttf", 12);
  textFont(myfont);
}
void draw() {
  background(255);
  fill(0);
  hastag(200, 300);
}

void hastag(float posx, float posy) {
  for (float x=0; x<200; x+=15) {
      for (float y=0; y<200; y+=15) {
      push();
      translate(posx, posy);
      text("#", x, -x+y);
      pop();
      }
  }
}

