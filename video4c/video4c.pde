float angle;
float a = 0.0;
float inc = TWO_PI/25.0;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  float bg = 0;
  background(bg, bg, bg);
  for (int i=0; i<(width/10); i++) {
    float col=1;
    col += 50;
    cuadrado(i*5+sin(a)*.05, i*.001, 255-(sin(a)*1000.0));
    a = a + inc;
    fill(255, 20);
    //ellipse(width/2,height/2,10+(sin(a)*25)*(sin(a)*.05),10+(sin(a)*25)*(sin(a)*.05));
  }
}

void cuadrado(float size, float ang, float filler) {
  pushMatrix();
  float ratonX = map(mouseX, 0, width, 0, 150);
  float ratonY = map(mouseY, 0, height, 0, 150);
  translate(width/2, height/2);
  noFill();
  stroke(255);
  angle += 1;
  rotate(radians(angle*ang));
  //fill(filler, 10);
  rectMode(CENTER);
  //noStroke();
  rect(0, 0, size+ratonX, size+ratonX);
  popMatrix();
}
