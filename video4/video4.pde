float angle;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  float bg = 125;
  background(bg, bg, bg);
  for (int i=0; i<20; i++) {
    float col=1;
    col += 50;
    cuadrado(i*15, i*.01, col);
  }

}

void cuadrado(float size, float ang, float filler) {
  pushMatrix();
  fill(filler, 35);
  angle += 1;
  float ratonX = map(mouseX, 0, width, 0, 150);
  float ratonY = map(mouseY, 0, height, 0, 150);
  translate(width/2, height/2);
  rotate(radians(angle*ang));
  rectMode(CENTER);
  noStroke();
  rect(0, 0, size+ratonX, size+ratonX);
  popMatrix();
}

void cuadradoRojo(float size, float ang, float filler) {
  pushMatrix();
  fill(filler, 35);
  angle += 1;
  float ratonX = map(mouseX, 0, width, 0, 150);
  float ratonY = map(mouseY, 0, height, 0, 150);
  translate(width/2, height/2);
  rotate(radians(angle*ang));
  rectMode(CENTER);
  //noStroke();
  rect(0, 0, size+ratonX, size+ratonX);
  popMatrix();
  
}
