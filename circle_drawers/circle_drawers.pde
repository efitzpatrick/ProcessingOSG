void setup() {
  size(1600, 700);
}

int tx = 800;
int ty = 350;
void draw() {
  if (mousePressed) {
    ty = mouseY;
    tx = mouseX;
  } 

  else {
    fill(random(0, 255), random(0, 255), random(0, 255));
    tx = tx+ int( random(-10, 10));
    ty = ty+ int(random(-10, 10));
    if (tx < 0) {
      tx = tx + 20;
    }
    if (ty < 0) {
      ty = ty + 20;
    }
    if (tx > 1600) {
      tx = tx - 20;
    }
    if (ty > 800) {
      ty = ty - 20;
    }

    ellipse(tx, ty, 50, 50);
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == 115) {
      float b = random (0, 9999999);
      String s=""+b;
      save(s + ".tga");
    }
  }
}
//ellipse(mouseX, mouseY, random(2, 500), random (2,500)

