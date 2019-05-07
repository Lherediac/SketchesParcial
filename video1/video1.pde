float angle = 45;
float altura = 100;


void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  noFill();
  //arc(width/2, height/2, 50, 150, 0, HALF_PI, OPEN); Arc Bueno 1
  stroke(255);
  altura = map(mouseY,0,height,0,180);
  float str;
  str = map(mouseX, 0, width, 1, 3);
  strokeWeight(random(.5,3));
  pushMatrix();
  translate(85, height/2.5);
  trio(14);
  popMatrix();
  pushMatrix();
  translate(160,220);
  scale(.5);
  trio(12);
  popMatrix();
   pushMatrix();
  translate(200,230);
  scale(.25);
  trio(12);
  popMatrix();
   pushMatrix();
  translate(220,235);
  scale(.125);
  trio(12);
  popMatrix();
  pushMatrix();  
  translate(-45,140);
  scale(2);
  trio(12);
  popMatrix();
}

void trio (int depth) {
  if (depth == 0) {
    return;
  }
  arc(mouseX, mouseY, 70, altura, 0, HALF_PI, OPEN);
  translate(80,-altura);
  pushMatrix();
  rotate(radians(45));
  trio(depth-1);
  arc(0, 0, 250, altura, 0, HALF_PI, OPEN);
  popMatrix();

}
