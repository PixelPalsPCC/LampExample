//turn on the lamp by drawing a yellow circle in it

Lamp l;
PImage lampImage;

void setup() {
  size(500,500);
  lampImage=loadImage("Image_by_brgfx_on_Freepik_n80s_ccr3_210617.jpg");
  
  //make a new lamp
  l = new Lamp();
  //turn on the lamp
  l.turnOn();
}

void draw() {  
  image(lampImage,50,50,178,220);
  if(l.isOn==true){
    fill(255,255,0);
    circle(140,120,75);
  }
}



void mousePressed(){
    println(mouseX,mouseY);
}