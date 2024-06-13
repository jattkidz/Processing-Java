float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape Aswangga;

void setup() {
  size(1000, 1000, P3D);
  Aswangga = createShape(GROUP);
 
  //Huruf A
  PShape Adepan = createShape();
  Adepan.beginShape();
  Adepan.fill(200, 10, 255);
  Adepan.vertex(120, 0, 0);
  Adepan.vertex(0, 300, 0);  
  Adepan.vertex(80, 300, 0);  
  Adepan.vertex(150, 90, 0);
  Adepan.vertex(220, 300, 0);
  Adepan.vertex(300, 300, 0);
  Adepan.vertex(180, 0, 0);
  Adepan.endShape(CLOSE);
  
  PShape Ahorizontaldepan = createShape();
  Ahorizontaldepan.beginShape();
  Ahorizontaldepan.fill(200, 10, 255);
  Ahorizontaldepan.vertex(123, 170, 0);
  Ahorizontaldepan.vertex(103, 230, 0);
  Ahorizontaldepan.vertex(196, 230, 0);
  Ahorizontaldepan.vertex(176, 170, 0);
  Ahorizontaldepan.endShape(CLOSE);
  
  PShape Abelakang = createShape();
  Abelakang.beginShape();
  Abelakang.fill(200, 10, 255);
  Abelakang.vertex(120, 0, -50);
  Abelakang.vertex(0, 300, -50);  
  Abelakang.vertex(80, 300, -50);  
  Abelakang.vertex(150, 90, -50);
  Abelakang.vertex(220, 300, -50);
  Abelakang.vertex(300, 300, -50);
  Abelakang.vertex(180, 0, -50);
  Abelakang.endShape(CLOSE);
  
  PShape Ahorizontalbelakang = createShape();
  Ahorizontalbelakang.beginShape();
  Ahorizontalbelakang.fill(200, 10, 255);
  Ahorizontalbelakang.vertex(123, 170, -50);
  Ahorizontalbelakang.vertex(103, 230, -50);
  Ahorizontalbelakang.vertex(196, 230, -50);
  Ahorizontalbelakang.vertex(176, 170, -50);
  Ahorizontalbelakang.endShape(CLOSE);
  
  //Mengatur ketebalan atau lebar dari huruf 3d
  PShape A1 = createShape();
  A1.beginShape();
  A1.fill(200, 10, 255);
  addDepth(A1, 120, 0, 0, 0, 300, 0, 0, 300, -50, 120, 0, -50);
  A1.endShape(CLOSE);
   
  PShape A2 = createShape();
  A2.beginShape();
  A2.fill(200, 10, 255);
  addDepth(A2, 0, 300, 0, 80, 300, 0, 80, 300, -50, 0, 300, -50);
  A2.endShape(CLOSE);
 
  PShape A3 = createShape();
  A3.beginShape();
  A3.fill(200, 10, 255);
  addDepth(A3, 80, 300, 0, 150, 90, 0, 150, 90, -50, 80, 300, -50);
  A3.endShape(CLOSE);
  
  PShape A4 = createShape();
  A4.beginShape();
  A4.fill(200, 10, 255);
  addDepth(A4, 150, 90, 0, 220, 300, 0, 220, 300, -50, 150, 90, -50);
  A4.endShape(CLOSE);
  
  PShape A5 = createShape();
  A5.beginShape();
  A5.fill(200, 10, 255);
  addDepth(A5, 220, 300, 0, 300, 300, 0, 300, 300, -50, 220, 300, -50);
  A5.endShape(CLOSE);
  
  PShape A6 = createShape();
  A6.beginShape();
  A6.fill(200, 10, 255);
  addDepth(A6, 300, 300, 0, 180, 0, 0, 180, 0, -50, 300, 300, -50);
  A6.endShape(CLOSE);
  
  PShape A7 = createShape();
  A7.beginShape();
  A7.fill(200, 10, 255);
  addDepth(A7, 180, 0, 0, 120, 0, 0, 120, 0, -50, 180, 0, -50);
  A7.endShape(CLOSE);
  
  PShape A8 = createShape();
  A8.beginShape();
  A8.fill(200, 10, 255);
  addDepth(A8, 123, 170, 0, 176, 170, 0, 176, 170, -50, 123, 170, -50);
  A8.endShape(CLOSE);
  
  PShape A9 = createShape();
  A9.beginShape();
  A9.fill(200, 10, 255);
  addDepth(A9, 103, 230, 0, 196, 230, 0, 196, 230, -50, 103, 230, -50);
  A9.endShape(CLOSE);
  
Aswangga.addChild(Adepan);
Aswangga.addChild(Ahorizontaldepan);
Aswangga.addChild(Abelakang);
Aswangga.addChild(Ahorizontalbelakang);
Aswangga.addChild(A1);
Aswangga.addChild(A2);
Aswangga.addChild(A3);
Aswangga.addChild(A4);
Aswangga.addChild(A5);
Aswangga.addChild(A6);
Aswangga.addChild(A7);
Aswangga.addChild(A8);
Aswangga.addChild(A9);
  
  centerObject(Aswangga);
}

void draw() {
  translate(width/2, height/2, 0);
  background(0);
  fill(200, 10, 255);
  noStroke();
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(Aswangga);
}

void keyPressed() {
  if (key == 'w') {
    upPressed = true;
  }
  if (key == 's') {
    downPressed = true;
  }
  if (key == 'a') {
    leftPressed = true;
  }
  if (key == 'd') {
    rightPressed = true;
  }
  if (key == 'q') {
    ltPressed = true;
  }
  if (key == 'e') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    upPressed = false;
  }
  if (key == 's') {
    downPressed = false;
  }
  if (key == 'a') {
    leftPressed = false;
  }
  if (key == 'd') {
    rightPressed = false;
  }
  if (key == 'q') {
    ltPressed = false;
  }
  if (key == 'e') {
    gtPressed = false;
  }
}

void addDepth(PShape AN, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4){
  AN.vertex(x1, y1, z1);
  AN.vertex(x2, y2, z2);
  AN.vertex(x3, y3, z3);
  AN.vertex(x4, y4, z4);
  AN.vertex(x1, y1, z1);
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
