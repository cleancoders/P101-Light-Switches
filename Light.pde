class Light {
  int x;
  int y;
  boolean state = false;
  
  Light(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void on() {
    state = true;
  }
  
  void off() {
    state = false;
  }
  
  void draw() {
    image(state ? lightOn : lightOff, x-lightOff.width/2, y); 
  }
}