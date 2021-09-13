/*
Daniel Cui
 Sept 18
 
 Review Day 1: Drawing
 
 1. Coordinate System
 2. Drawing Functions: line, circle/ellipse, rect, triangle
 3. Layering
 4. Colors
 5. Transformations: push/pop matrix, translate, rotate
 */

float circleX;
float circleY;
float rectX;
float rectY;
float tri1X;
float tri1Y;
float tri2X;
float tri2Y;
float tri3X;
float tri3Y;
int vx;
int vy;

color aqua = #73C5AA;
color sand = #C6C085;
color blush = #F9A177;
color red = #F76157;
color brown = #4C1B05;
color grey = #656565;

void setup() {
  size(600, 800);
  background(aqua);

  circleX = width/2;
  circleY = height/2;
  rectX = 300;
  rectY = 430;
  vx = 3;
  vy = 3;
  tri1X = 370;
  tri1Y = 380;
  tri2X = 230;
  tri2Y = 380;
  tri3X = 300;
  tri3Y = 310;
}

void draw() {
  noCursor();
  background(aqua);
  rectMode(CENTER);
  strokeWeight(0);
  fill(sand);
  rect(300, 650, 605, 300);
  fill(red);
  circle(circleX, circleY, 200);

  circleX = circleX + vx;
  circleY = circleY + vy;
  rectX = rectX + vx;
  rectY = rectY + vy;
  tri1X = tri1X + vx;
  tri1Y = tri1Y + vy;
  tri2X = tri2X + vx;
  tri2Y = tri2Y + vy;
  tri3X = tri3X + vx;
  tri3Y = tri3Y + vy;

  if (circleX <= 100 || circleX >= (width - 100)) {
    vx = vx * -1;
  }
  if (circleY <= 100 || circleY >= (height - 100)) {
    vy = vy * -1;
  }
  fill(brown);
  rect(rectX, rectY, 100, 100);
  fill(0, 255, 0);
  triangle(tri1X, tri1Y, tri2X, tri2Y, tri3X, tri3Y);
  fill(#B431F4);



  rect(mouseX, mouseY, 5, 8000);
  rect(mouseX, mouseY, 8000, 5);
  text("X: " + mouseX, mouseX + 10, mouseY + 20);
  text("Y: " + mouseY, mouseX + 10, mouseY + 30);
}  
