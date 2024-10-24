//turn on the lamp by drawing a yellow circle in it
//button code from https://processing.org/examples/button.html
//arduino code from https://sdevelectronics.blogspot.com/2020/01/control-led-using-processing-gui.html
//https://www.youtube.com/watch?v=t9Rzz73aFnI

Lamp l;
PImage lampImage;

import controlP5.*; //import ControlP5 library
import processing.serial.*;
Serial port;  // Create object from Serial class
PFont font;
ControlP5 cp5; //create ControlP5 object

void setup() {
  size(640, 360);
  background(255);
  lampImage=loadImage("Image_by_brgfx_on_Freepik_n80s_ccr3_210617.jpg");
  
  //make a new lamp
  l = new Lamp();

  String portName = "COM7";// Change the number (in this case ) to match the corresponding port number connected to your Arduino. 
  port = new Serial(this, portName, 9600);
  cp5 = new ControlP5(this);

  
  // println(PFont.list());
  font = createFont("Trebuchet MS", 20);   //Custom Font

  cp5.addButton("sound_on")                        //Name of the Button
    .setPosition(270, 60)                         //(x,y) top left Corner
    .setSize(150, 60)                            //(width, height)
    .setFont(font)
    .setColorBackground(color(255, 0, 0))
    ;   
  cp5.addButton("sound_off")                       //Name of the Button
    .setPosition(450, 60)                        //(x,y) top left Corner
    .setSize(150, 60)                            //(width, height)
    .setFont(font)
    .setColorBackground(color(255, 0, 0))
    ;   

  cp5.addButton("green_on")                      //Name of the Button
    .setPosition(270, 160)                        //(x,y) top left Corner
    .setSize(150, 60)                            //(width, height)
    .setFont(font)
    .setColorBackground(color(0, 255, 0))
    ;
  cp5.addButton("green_off")                     //Name of the Button
    .setPosition(450, 160)                       //(x,y) top left Corner
    .setSize(150, 60)                            //(width, height)
    .setFont(font)
    .setColorBackground(color(0, 255, 0))
    ;

  cp5.addButton("blue_on")                       //Name of the Button
    .setPosition(270, 260)                        //(x,y) top left Corner
    .setSize(150, 60)                            //(width, height)
    .setFont(font)
    .setColorBackground(color(0, 0, 255))
    ;
  cp5.addButton("blue_off")                      //Name of the Button
    .setPosition(450, 260)                       //(x,y) top left Corner
    .setSize(150, 60)                            //(width, height)
    .setFont(font)
    .setColorBackground(color(0, 0, 255))
    ;
}

void draw() {  
  image(lampImage,50,50,178,220);
  
  stroke(255);
  
  if(this.l.isOn==true){       
    circle(140,120,120);
  } 
}

void sound_on() {
  fill(255,0,0);
  port.write('R');
  this.l.turnOn();
}

void green_on() {
  fill(255,255,0);
  port.write('G');
  this.l.turnOn();
}

void blue_on() {
  fill(0,0,255);
  port.write('B');
  this.l.turnOn();
}

void sound_off() {
  port.write('r');
  this.l.turnOff();
}

void green_off() {
  port.write('g');
  this.l.turnOff();
}

void blue_off() {
  port.write('b');
  this.l.turnOff();
}
