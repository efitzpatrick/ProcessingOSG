
int ij = 0;
PImage img;
void setup() {
  //screen size
  img = loadImage("randomnessisbeauty1.JPG");
  
  size(1360, 700);
  background(0);
  //image(img, 0, 0, 1360, 700); 
  
  
    }

//starts in approxamately the middle of the screen
int tx = 680;
int ty = 350;

void draw() {
/*while ( ij == 0){
if (keyPressed) {
    if (key == ENTER) {
      ij = ij++;
        if (ij == 0){
        image(img, 0, 0, 1360, 700 );
        }
        if (ij > 0){
        }}*/
  
  if (mousePressed) {
    //sets the cirlces to the mouse
    ty = mouseY;
    tx = mouseX;
  } 

  else {
    //color
    fill(random(0, 255), random(0, 255), random(0, 255));
    // x variable
    tx = tx+ int( random(-10, 10));
    // y variable
    ty = ty+ int(random(-10, 10));
    
    //Checks to make sure that the dots are not 
    //going off of the screen
    if (tx < 0) {
      tx = tx + 20;
    }
    if (ty < 0) {
      ty = ty + 20;
    }
    if (tx > 1350) {
      tx = tx - 20;
    }
    if (ty > 700 ) {
      ty = ty - 20;
    }
// creates ellipse, the two second values are how big the circle is
    float el = random(20, 40);
    ellipse(tx, ty, el, el);
  }
}
/*void keyPressed() {
  if (key == CODED) {
    if (keyCode == 115) {
      float b = random (0, 9999999);
      String s=""+b;
      save(s + ".tga");
    }
  }
}*/



