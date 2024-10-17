/* Exemples llibre Processing a programming handbook for visual designers and artists p66 */
void setup() {
  size(300, 300);
}
void draw() {
  background(255);
  fill(0);
  textSize(20);
  espiga();
}

void regular() {
  for (int y = 20; y <= width-20; y += 25) {
    for (int x = 20; x <= width-20; x += 25) {
      text("a", x, y);
    }
  }
}

void column() {
  for (int y = 20; y <= width-20; y += 15) {
    for (int x = 20; x <= height-20; x += 58) {
      text("b", x, y);
    }
  }
}

void piramid() {
  for (int y = 20; y <= width-20; y += 40) {
    for (int x = 20; x <= y; x += 15) {
      text("c", x-3, y-3);
    }
  }
}

void gradiation() {
  for (float y = 20; y <= width-20; y *= 1.2) {
    for (int x = 20; x <= height-20; x += 15) {
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

void espiga() {
  for (int y = 20; y <= width-20; y += 25) {
    for (int x = 20; x <= height-20; x += 25) {
      if ((x % 10) == 0) {
        text("g", x+8, y-8);
      } else {
        text("h", x+8, y+8);
      }
    }
  }
}
