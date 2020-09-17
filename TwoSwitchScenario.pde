class TwoSwitchScenario implements SwitchScenario {
  Switch switchA,switchB;
  Light light;
  
  TwoSwitchScenario() {
    int separation = 100;
    light = new Light(width/2, 50);
    switchA = new Switch(width/2-separation/2,200, "A");
    switchB = new Switch(width/2+separation/2,200, "B");

  }
  
  void draw() {
    light.draw();
    switchA.draw();
    switchB.draw();
  }
  
  void mousePressed() {
    switchA.mousePressed();
    switchB.mousePressed();
  }
  
  void keyPressed() {
    switchA.keyPressed();
    switchB.keyPressed();
  }
  
  
  
  
  
  
  
  
  
  
  void lightLogic() {
    if (! ((!switchA.isUp()) || (!switchB.isUp())))
      light.on();
    else
      light.off();
  }
}