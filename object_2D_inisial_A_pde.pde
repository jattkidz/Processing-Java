PShape a;
float posX = 0;
float posY = 0;
float angle = 0;
float scaleFactor = 1;
boolean mirrorX = false;
boolean mirrorY = false;

void setup() {
  size(1000, 1000, P2D);
  a = createShape();

  a.beginShape();
  a.fill(200, 30, 255);
  a.vertex(400, 100);
  a.vertex(550, 100);
  a.vertex(750, 700);
  a.vertex(600, 700);
  a.vertex(540, 500);
  a.vertex(410, 500);
  a.vertex(350, 700);
  a.vertex(200, 700);
  a.vertex(400, 100);
  a.beginContour();
  a.vertex(510, 400);
  a.vertex(475, 275);
  a.vertex(440, 400);
  a.endContour();
  a.endShape(CLOSE);
}

void draw() {
  background(0);
  
  pushMatrix();
  translate(width / 2 + posX, height / 2 + posY);
  
  if (mirrorX) {
    scale(-1, 1);
  }
  if (mirrorY) {
    scale(1, -1);
  }
  
  rotate(angle);
  scale(scaleFactor);

  shape(a, -450, -400);
  popMatrix();
}

void keyPressed() {
  if (keyCode == UP) {
    posY -= 18;
  } else if (keyCode == DOWN) {
    posY += 18;
  } else if (keyCode == RIGHT) {
    posX += 18;
  } else if (keyCode == LEFT) {
    posX -= 18;
  } else if (key == 'e') {
    angle += PI / 18; // Rotasi searah jarum jam
  } else if (key == 'q') {
    angle -= PI / 18; // Rotasi berlawanan jarum jam
  } else if (key == '+') {
    scaleFactor *= 1.1; // Perbesar skala
  } else if (key == '-') {
    scaleFactor *= 0.9; // Perkecil skala
  } else if (key == 'l') {
    mirrorX = !mirrorX; // Toggle pencerminan di sumbu X
  } else if (key == 'k') {
    mirrorY = !mirrorY; // Toggle pencerminan di sumbu Y
  }
}
