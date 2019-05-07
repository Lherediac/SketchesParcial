/*Stech Estatico 1
Este sketch usé una grid para crear circulos dentro de cada cuadro de la grid.
A través de la creación de una función para debiujar algo en cada tile cree un diseño
simple de dos círculos con peso de stroke variante
*/

int tileX = 10;
int tileY = 10;
float tileWidth;
float tileHeight;

void setup() {
  size(500, 500);
  tileWidth = width/tileX;
  tileHeight = height/tileY;
  stroke(255);
}

void draw () {
  float a = 0.0;
  float inc = TWO_PI/25.0;

  float xModulado = map(mouseX, 0, width, 10, tileWidth*.7);
  float yModulado = map (mouseY, 0, height, 12, tileHeight*.7);
  background(0);
  for (int x = 0; x < tileX; x++) {
    for (int y = 0; y < tileY; y++) {
      strokeWeight(x*.5);
      float posX = x *tileWidth;
      float posY = y *tileHeight;
      drawTile(posX, posY, xModulado, yModulado);
    }
  }
}

void drawTile(float posicionX, float posicionY, float sX, float sY) {
  noFill();
  stroke(255);

  ellipse (posicionX+(tileWidth/2), posicionY+(tileHeight/2), sX, sY);
  float a = 0.0;
  float inc = TWO_PI/25.0;

  stroke(255, 0, 0);
  strokeWeight(random(2,8));
    ellipse(posicionX+(tileWidth/2), posicionY+(tileHeight/2), sX * .6, sY * .6);
}
