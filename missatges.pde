
String[] missatges={"groc", "taronja", "blau"};
int graus;
int ascendent;
void setup() {
  size(500, 500);
}
void draw() {
  textSize(100);
  textAlign(LEFT);
  background(0);
  translate(width/2, height/2);
  graus=mouseX;
  if (graus==0) {
    text(missatges[2], 0, 0);
  } else if (graus==180) {
    text(missatges[1], 0, 0);
  } else if (graus>=270 && graus<=360) {
    text(missatges[0], 0, 0);
  }
}
