class Switch {
  int x;
  int y;
  String name;
  boolean state = false;
  int w=40;
  int h=80;
  
  Switch(int x, int y, String name) {
    this.x = x-w/2;
    this.y = y;
    this.name = name;
  }
  
  boolean isUp() {
    return state;
  }
  
  boolean isDown() {
    return !state;
  }
  
  void draw() {
    drawOutline();
    drawLever();
    drawName(); 
  }
  
  void drawOutline() {
    fill(200);
    strokeWeight(2);
    rect(x,y,w,h);
  }
  
  void drawLever() {
    int offset = state ? 0 : h/2-2;
    int leverx = x+3;
    int levery = y+3+offset;  
    fill(64);
    strokeWeight(0); 
    rect(leverx, levery, w-5, h/2-3);
  }
  
  void drawName() {
    fill(0);
    textAlign(CENTER, TOP);
    textSize(24);
    text(name, x+w/2, y+h+12);
  }
  
  void mousePressed() {
    if (mouseButton == LEFT) 
      if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
        toggle();
      }
  }
  
  void toggle() {
    state = !state;
    click.play();
  }
  
  void keyPressed() {
    String theKey = new Character(key).toString();
    if (theKey.equalsIgnoreCase(name))
      toggle();
  }
}