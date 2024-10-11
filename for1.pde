PFont myfont;
String mytext ="zas";
void setup() {
  frameRate(2);
  myfont=createFont("IBMPlexMono-Medium.ttf", 18);
  size(595, 879);
}
void draw() {
  background(255);
  fill(0);
  textFont(myfont);

  zas_diagonal(0, 0);
}

void zas_diagonal(float posx_, float posy_) {
  push();
  translate(posx_, posy_);
  for (float px=50; px<=150; px=px+20) {
      text(mytext.charAt(0), px, px);
      text(mytext.charAt(1), px+10, px-10);
      text(mytext.charAt(2), px+20, px-20);
  }
  pop();
}

/*text(mytext.charAt(0), 80,45);
 text(mytext.charAt(1), 130,95);
 text(mytext.charAt(2), 180,145);
 
 text(mytext.charAt(0), 110,40);
 text(mytext.charAt(1), 160,90);
 text(mytext.charAt(2), 210,140);*/
