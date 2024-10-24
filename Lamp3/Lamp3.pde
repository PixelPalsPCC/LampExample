//turn on the lamp by drawing a yellow circle in it
//button code is from https://processing.org/examples/button.html

Lamp l;
PImage lampImage;
 
int rectX, rectY;      // Position of square button
int rectSize = 120;     // Diameter of rect
color rectColor, rectHighlight;
boolean rectOver = false;

void setup() {
  size(640, 360);
  background(255);
  lampImage=loadImage("Image_by_brgfx_on_Freepik_n80s_ccr3_210617.jpg");
  
  //make a new lamp
  l = new Lamp();

  rectColor = color(0);
  rectHighlight = color(51);
  rectX = width/2-rectSize-10+100;
  rectY = height/2-rectSize/2;

  //set text size
  textSize(30);
}

void draw() {  
  update(mouseX, mouseY);
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  
  image(lampImage,50,50,178,220);
  
  rect(350, rectY, rectSize, rectSize);
  
  stroke(255);
  fill(255,255,0);
  
  if(this.l.isOn==true){       
    circle(140,120,120);
    text("OFF",380,215);
  } else {    
    stroke(0);
    text("ON",380,215);
  }
  text("CLICK",380,175);
}

void update(int x, int y) {
   if ( overRect(350, rectY, rectSize, rectSize) ) {
    rectOver = true;
  } else {
     rectOver = false;
  }
}

void mousePressed() {
  if (rectOver&&l.isOn==true) {
    this.l.turnOff();
  } else {
    this.l.turnOn();
  }
  println(mouseX,mouseY);
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
