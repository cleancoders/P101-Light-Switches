class OneSwitchScenario implements SwitchScenario {
  Switch switchA;
  Light light;
  
  OneSwitchScenario() {
    light = new Light(width/2, 50);
    switchA = new Switch(width/2,200, "A");
  }
  
  void draw() {
    light.draw();
    switchA.draw();
  }
  
  void mousePressed() {
    switchA.mousePressed();
  }
  
  void keyPressed() {
    switchA.keyPressed();
  }
  
  
  
  
  
  
  
  
  
  
  void lightLogic() {
    if (switchA.isUp())
      light.on();
     else
      light.off();
  }
}