float pitch = 0;
float yaw = 0;
float roll = 0;
float posX = 0;
float posY = 0;
float posZ = 0;
float scaleFactor = 1;
boolean mirrorX = false;
boolean mirrorY = false;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape Aswangga;

void setup() {
  size(1000, 1000, P3D);
  Aswangga = createShape(GROUP);
  createLetterA();
  createLetterW();
  centerObject(Aswangga);
}

void draw() {
  translate(width / 2 + posX, height / 2 + posY, posZ);
  background(255);
  lights();
  fill(200, 10, 255);
  noStroke();
  
  if (upPressed) pitch -= radians(1);
  if (downPressed) pitch += radians(1);
  if (leftPressed) yaw -= radians(1);
  if (rightPressed) yaw += radians(1);
  if (ltPressed) roll -= radians(1);
  if (gtPressed) roll += radians(1);

  pitch %= TWO_PI;
  yaw %= TWO_PI;
  roll %= TWO_PI;
  
  if (mirrorX) scale(-1, 1, 1);
  if (mirrorY) scale(1, -1, 1);

  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  scale(scaleFactor);
  
  shape(Aswangga);
}

void keyPressed() {
  if (key == 'w') upPressed = true;
  if (key == 's') downPressed = true;
  if (key == 'a') leftPressed = true;
  if (key == 'd') rightPressed = true;
  if (key == 'q') ltPressed = true;
  if (key == 'e') gtPressed = true;
  if (key == 'i') posZ += 10;
  if (key == 'k') posZ -= 10;
  if (key == '+') scaleFactor *= 1.1;
  if (key == '-') scaleFactor *= 0.9;
  if (key == 'l') mirrorX = !mirrorX;
  if (key == 'm') mirrorY = !mirrorY;
}

void keyReleased() {
  if (key == 'w') upPressed = false;
  if (key == 's') downPressed = false;
  if (key == 'a') leftPressed = false;
  if (key == 'd') rightPressed = false;
  if (key == 'q') ltPressed = false;
  if (key == 'e') gtPressed = false;
}

void createLetterA() {
  // Front face of A
  PShape Adepan = createShape();
  Adepan.beginShape();
  Adepan.fill(200, 30, 255);
  Adepan.vertex(150, 200, 0);
  Adepan.vertex(300, 200, 0);
  Adepan.vertex(400, 600, 0);
  Adepan.vertex(300, 600, 0);
  Adepan.vertex(225, 300, 0);
  Adepan.vertex(150, 600, 0);
  Adepan.vertex(50, 600, 0);
  Adepan.vertex(150, 200, 0);
  Adepan.endShape(CLOSE);

  PShape Ahorizontaldepan = createShape();
  Ahorizontaldepan.beginShape();
  Ahorizontaldepan.fill(200, 30, 255);
  Ahorizontaldepan.vertex(198, 400, 0);
  Ahorizontaldepan.vertex(252, 400, 0);
  Ahorizontaldepan.vertex(265, 450, 0);
  Ahorizontaldepan.vertex(185, 450, 0);
  Ahorizontaldepan.endShape(CLOSE);
  
  // Back face of A
  PShape Abelakang = createShape();
  Abelakang.beginShape();
  Abelakang.fill(200, 30, 255);
  Abelakang.vertex(150, 200, -50);
  Abelakang.vertex(300, 200, -50);
  Abelakang.vertex(400, 600, -50);
  Abelakang.vertex(300, 600, -50);
  Abelakang.vertex(225, 300, -50);
  Abelakang.vertex(150, 600, -50);
  Abelakang.vertex(50, 600, -50);
  Abelakang.vertex(150, 200, -50);
  Abelakang.endShape(CLOSE);

  PShape Ahorizontalbelakang = createShape();
  Ahorizontalbelakang.beginShape();
  Ahorizontalbelakang.fill(200, 30, 255);
  Ahorizontalbelakang.vertex(198, 400, -50);
  Ahorizontalbelakang.vertex(252, 400, -50);
  Ahorizontalbelakang.vertex(265, 450, -50);
  Ahorizontalbelakang.vertex(185, 450, -50);
  Ahorizontalbelakang.endShape(CLOSE);

  // Sides of A
  addSide(Adepan, Abelakang);
  addSide(Ahorizontaldepan, Ahorizontalbelakang);

  Aswangga.addChild(Adepan);
  Aswangga.addChild(Ahorizontaldepan);
  Aswangga.addChild(Abelakang);
  Aswangga.addChild(Ahorizontalbelakang);
}

void createLetterW() {
  // Front face of W
  PShape Wdepan = createShape();
  Wdepan.beginShape();
  Wdepan.fill(200, 10, 255);
  Wdepan.vertex(850, 200, 0);
  Wdepan.vertex(950, 200, 0);
  Wdepan.vertex(850, 600, 0);
  Wdepan.vertex(750, 600, 0);
  Wdepan.vertex(700, 350, 0);
  Wdepan.vertex(650, 600, 0);
  Wdepan.vertex(550, 600, 0);
  Wdepan.vertex(450, 200, 0);
  Wdepan.vertex(550, 200, 0);
  Wdepan.vertex(600, 450, 0);
  Wdepan.vertex(650, 200, 0);
  Wdepan.vertex(750, 200, 0);
  Wdepan.vertex(800, 450, 0);
  Wdepan.vertex(850, 200, 0);
  Wdepan.endShape(CLOSE);
  
  // Back face of W
  PShape Wbelakang = createShape();
  Wbelakang.beginShape();
  Wbelakang.fill(200, 10, 255);
  Wbelakang.vertex(850, 200, -50);
  Wbelakang.vertex(950, 200, -50);
  Wbelakang.vertex(850, 600, -50);
  Wbelakang.vertex(750, 600, -50);
  Wbelakang.vertex(700, 350, -50);
  Wbelakang.vertex(650, 600, -50);
  Wbelakang.vertex(550, 600, -50);
  Wbelakang.vertex(450, 200, -50);
  Wbelakang.vertex(550, 200, -50);
  Wbelakang.vertex(600, 450, -50);
  Wbelakang.vertex(650, 200, -50);
  Wbelakang.vertex(750, 200, -50);
  Wbelakang.vertex(800, 450, -50);
  Wbelakang.vertex(850, 200, -50);
  Wbelakang.endShape(CLOSE);
  
  // Sides of W
  addSide(Wdepan, Wbelakang);

  Aswangga.addChild(Wdepan);
  Aswangga.addChild(Wbelakang);
}

void addSide(PShape front, PShape back) {
  int vertexCount = front.getVertexCount();
  for (int i = 0; i < vertexCount; i++) {
    PVector v1 = front.getVertex(i);
    PVector v2 = front.getVertex((i + 1) % vertexCount);
    PVector v3 = back.getVertex((i + 1) % vertexCount);
    PVector v4 = back.getVertex(i);
    
    PShape side = createShape();
    side.beginShape();
    side.fill(200, 10, 255);
    side.vertex(v1.x, v1.y, v1.z);
    side.vertex(v2.x, v2.y, v2.z);
    side.vertex(v3.x, v3.y, v3.z);
    side.vertex(v4.x, v4.y, v4.z);
    side.endShape(CLOSE);
    
    Aswangga.addChild(side);
  }
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}
