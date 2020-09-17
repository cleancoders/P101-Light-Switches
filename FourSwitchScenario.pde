class FourSwitchScenario implements SwitchScenario {
  Switch switchA, switchB, switchC, switchD;
  Light light;
  
  FourSwitchScenario() {
    int separation = 100;
    light = new Light(width/2, 50);
    switchA = new Switch(width/2-(3*separation/2),200, "A");
    switchB = new Switch(width/2-separation/2,200, "B");
    switchC = new Switch(width/2+separation/2,200, "C");
    switchD = new Switch(width/2+3*(separation/2),200, "D");
  }
  
  void draw() {
    light.draw();
    switchA.draw();
    switchB.draw();
    switchC.draw();
    switchD.draw();
  }
  
  void mousePressed() {
    switchA.mousePressed();
    switchB.mousePressed();
    switchC.mousePressed();
    switchD.mousePressed();
  }
  
   void keyPressed() {
    switchA.keyPressed();
    switchB.keyPressed();
    switchC.keyPressed();
    switchD.keyPressed();
  } 
  
  int lastSwitchState = 0;
  int lastChangeTime = millis();
  
  
  
  
  
  
  
  
  void lightLogic() {
    boolean a = switchA.isUp();
    boolean b = switchB.isUp();
    boolean c = switchC.isUp();
    boolean d = switchD.isUp();
    int currentSwitchState = 0;
    
    int base=2;
    if (a) currentSwitchState += base*base*base;
    if (b) currentSwitchState += base*base;
    if (c) currentSwitchState += base;
    if (d) currentSwitchState += 1;
    
    println(currentSwitchState);
    
    int currentTime = millis();
    if (currentSwitchState != lastSwitchState) {
      if (currentTime - lastChangeTime > 500) {
        light.state = !light.state;
        lastChangeTime = currentTime;
      }
    }
      
    lastSwitchState = currentSwitchState;
  }
}