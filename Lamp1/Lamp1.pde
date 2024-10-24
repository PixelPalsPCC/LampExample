//load and display lamp image

PImage lamp;

void setup() {
  size(500,500);
  lamp=loadImage("Image_by_brgfx_on_Freepik_n80s_ccr3_210617.jpg");
}

void draw() {  
  image(lamp,50,50,178,220);
}
