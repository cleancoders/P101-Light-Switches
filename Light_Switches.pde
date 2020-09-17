import processing.sound.*;

SwitchScenario scenario;
PImage lightOn;
PImage lightOff;
SoundFile click;

interface SwitchScenario {
  void draw();
  void mousePressed();
  void keyPressed();
  void lightLogic();
}

void setup() {
  size(500,350);
  scenario = new FourSwitchScenario(); 
  lightOn = loadImage("light_on.jpg");
  lightOff = loadImage("light_off.jpg");
  scaleImage(lightOff, 2);
  scaleImage(lightOn, lightOn.width/lightOff.width);

  click = new SoundFile(this, "shortClick.mp3");
  scenario.lightLogic();
  frameRate(20);
}

void draw() {
  background(255);
  scenario.lightLogic();
  scenario.draw();
}

void scaleImage(PImage img, int n) {
  img.resize(img.width/n, img.height/n);
}

void mousePressed() {
  scenario.mousePressed();
}

void keyPressed() {
  scenario.keyPressed();
}

boolean xor(boolean a, boolean b) {
  return (a && !b) || (!a && b);  
}
  