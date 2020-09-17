class ThreeSwitchScenario implements SwitchScenario {
  Switch switchA, switchB, switchC;
  Light light;
  
  ThreeSwitchScenario() {
    int separation = 100;
    light = new Light(width/2, 50);
    switchA = new Switch(width/2-separation,200, "A");
    switchB = new Switch(width/2,200, "B");
    switchC = new Switch(width/2+separation,200, "C");

  }
  
  void draw() {
    light.draw();
    switchA.draw();
    switchB.draw();
    switchC.draw();

  }
  
  void mousePressed() {
    switchA.mousePressed();
    switchB.mousePressed();
    switchC.mousePressed();
  }
  
  void keyPressed() {
    switchA.keyPressed();
    switchB.keyPressed();
    switchC.keyPressed();
  }
  
  
  
  
  
  
  
  
  void lightLogic() {
    boolean a = switchA.isUp();
    boolean b = switchB.isUp();
    boolean c = switchC.isUp();
    if (xor(a, xor(b,c)))
      light.on();
    else
      light.off();
  }
}