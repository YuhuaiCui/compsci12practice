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

color aqua = #73C5AA;
color sand = #C6C085;
color blush = #F9A177;
color red = #F76157;
color brown = #4C1B05;
color grey = #656565;

void setup() {
  size(600, 800);
  background(aqua);
}

void draw() {
 
 background(aqua);
 rectMode(CENTER);
 strokeWeight(0);
 fill(sand);
 rect(300, 650, 605, 300);
 fill(brown);
 rect(300, 400, 200, 200);
 fill(#B431F4);
 rect(mouseX, mouseY, 5, 8000);
 rect(mouseX, mouseY, 8000, 5);
 text("X: " + mouseX, mouseX + 10, mouseY + 20);
 text("Y: " + mouseY, mouseX + 10, mouseY + 30);
}  
