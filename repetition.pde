/* Exemples llibre Processing a programming handbook for visual designers and artists p66 */
import processing.pdf.*;
boolean record;
PFont myfont;
int num;

void setup() {
  frameRate(2);
  myfont=createFont("IBMPlexMono-Medium.ttf", 18);
  size(595, 879);
}
void draw() {
if (record) {
    beginRecord(PDF, "retition-####.pdf");
  }

  textFont(myfont);
  background(255);
  fill(0);
  textSize(8);
  volen();

if (record) {
    endRecord();
  record = false;
  }
}

void mousePressed() {
  record = true;
}

void regular() {
  for (int y = 20; y <= height-20; y += 25) {
    for (int x = 20; x <= width-20; x += 25) {
      text("a", x, y);
    }
  }
}

void column() {
  for (int y = 20; y <= height-20; y += 5) {
    for (int x = 20; x <= width-20; x += 88) {
      text("b", x, y);
    }
  }
}


void fila() {
  for (int y = 20; y <= height-20; y += 58) {
    for (int x = 20; x <= width-20; x += 15) {
      text("b", x, y);
    }
  }
}

void piramid() {
  for (int y = 20; y <= height-20; y += 40) {
    for (int x = 20; x <= y; x += 15) {
      text("c", x-3, y+30);
    }
  }
}

void gradiation() {
  for (float y = 20; y <= height-20; y *= 1.1) {
    for (int x = 20; x <= width-20; x += 15) {
      text("d", x, y-2);
    }
  }
}

void mitat() {
  for (int y = 20; y <= width-20; y += 15) {
    for (int x = 20; x <= height-20; x += 15) {
      if (x <= width/2) {
        text("e", x-13, y-13);
      } else {
        text("f", x-13, y+13);
      }
    }
  }
}

void variacions() {
  for (int y = 20; y <= width-20; y += 15) {
    for (int x = 20; x <= height-20; x *= 1.05) {
      if (x <= width/3) {
        text("e", x-13, y-13);
      } else if (y <= height/3*2) {
        text("f", x-13, y+13);
      } else {
        text("g", x-13, y+13);
      }
    }
  }
}

void espiga() {
  for (int y = 20; y <= height-20; y += 25) {
    for (int x = 20; x <= width-20; x += 25) {
      if ((x % 10) == 0) {
        text("g", x+8, y-8);
      } else {
        text("h", x+8, y+8);
      }
    }
  }
}

void dibuix(float posx, float posy) {
  push();
  translate(posx, posy);
  text("i", 0, 0);
  text("i", 10, 0);
  push();
  rotate(radians(-90));
  text("i", -20, 15);
  pop();
  pop();
}

void column_dibuix() {
  for (int y = 20; y <= height-20; y += 8) {
    for (int x = 20; x <= width-20; x += 28) {
      //dibuix(x, y);
      //text("b",  x, y);
      push();
      rotate(radians(x+y));
      dibuix(x, y);
      pop();
    }
  }
}

void random_dibuix() {
  for (int i=0; i<5; i++) {
    dibuix(random(width), random(height));
  }
}

void volen() {
  for (int y = 20; y <= 40; y += 5) {
    for (int x = 20; x <= 40; x += 5) {
      num = ceil(random(33));
      if ((x % num) == 0) {
        text("v", random(width), y);
      } else {
        text("v", x, y);
      }
    }
  }
}
