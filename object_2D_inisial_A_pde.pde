PShape a;
PShape b;
PShape w;
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
  a.vertex(150, 200);
  a.vertex(300, 200);
  a.vertex(400, 600);
  a.vertex(300, 600);
  a.vertex(225, 300);
  a.vertex(150, 600);
  a.vertex(50, 600);
  a.vertex(150, 200);
  a.endShape(CLOSE);
  
  b = createShape();
  b.beginShape();
  b.fill(200, 30, 255);
  b.noStroke();
  b.vertex(198, 400);
  b.vertex(252, 400);
  b.vertex(265, 450);
  b.vertex(185, 450);
  b.endShape(CLOSE);
  
  w = createShape();
  w.beginShape();
  w.fill(200, 30, 255);
  w.vertex(850, 200);
  w.vertex(950, 200);
  w.vertex(850, 600);
  w.vertex(750, 600);
  w.vertex(700, 350);
  w.vertex(650, 600);
  w.vertex(550, 600);
  w.vertex(450, 200);
  w.vertex(550, 200);
  w.vertex(600, 450);
  w.vertex(650, 200);
  w.vertex(750, 200);
  w.vertex(800, 450);
  w.vertex(850, 200);
  w.endShape(CLOSE);
  
}

void draw() {
  background(255);
  
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
  shape(b, -450, -400);
  shape(w, -450, -400);

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
