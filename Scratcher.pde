
int pencilSize = 1;

color white = color(255, 255, 255);
color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color blue = color(0, 0, 255);
color green = color(0, 255, 0);
color orange = color(255, 153, 0);
color purple = color(153, 153, 255);

/*
color yellow = color(
color blue = color(
color green = color(
color orange = color(
color purple = color(
color white
*/
color pencilColor = white;

void setup(){
  size(1200, 600);  
  background(0);
  frameRate(160);
  stroke(pencilColor);
  strokeWeight(pencilSize);
  smooth();

}


void draw(){
  fill(pencilColor);
  rect(0,0,40,40);
  if (mousePressed){
     line(pmouseX, pmouseY, mouseX, mouseY);  
  }
}

void keyPressed() {
  println(keyCode);
    if (keyCode == 45){  
       if (pencilSize > 2) { pencilSize--; }
       strokeWeight(pencilSize);
    }
    if (keyCode == 61){  
       if (pencilSize < 100) { pencilSize++; }
       strokeWeight(pencilSize);
    }
    if (keyCode == 32){
      background(0); 
    }
    
    // Change Color
    if (keyCode == 82){ pencilColor = red;      stroke(pencilColor); }
    if (keyCode == 87){ pencilColor = white;    stroke(pencilColor); }
    if (keyCode == 89){ pencilColor = yellow;   stroke(pencilColor); }
    if (keyCode == 66){ pencilColor = blue;     stroke(pencilColor); }
    if (keyCode == 71){ pencilColor = green;    stroke(pencilColor); }
    if (keyCode == 79){ pencilColor = orange;   stroke(pencilColor); }
    if (keyCode == 80){ pencilColor = purple;   stroke(pencilColor); }
    if (keyCode == 88){ stroke(0); }
    
    // Save Drawing
    if (keyCode == 49){
      String fn = year() + "-" + month() + "-" + hour() + "-" + second() + "-" +millis() + ".png";
      save(fn);
    }
    redraw();
}




