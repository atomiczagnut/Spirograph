/*Spirograph v 1.1
  By Atomic Zagnut
  
  A simple app for making spirograph style designs
  Could use some work
  
*/

int hue = 0;
float offset = 0;

void setup() {

 size(1280, 700);
 frameRate(30);
 noFill();
 background(000);
 colorMode(HSB);
 
}

void draw() {
  offset = (offset + 0.1) % TWO_PI;
  float x = sin(offset) * 30;
  float y = cos(offset) * 30;
  //for each move, change the hue
  stroke(hue, 100, 100); 
  circle(mouseX + x, mouseY + y, 50);
   if (hue <= 255) {
     hue++;
   } else {
     hue = 0;
   }
}
