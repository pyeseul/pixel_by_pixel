class ball {
  
  // state
  
  int xCol;
  int yCol;
  float x;
  float y;
  float xOff = 0.0;
  float yOff = 0.0;
  int s;
  
  //constructor
  
  ball(float x, float y, int s, int xCol, int yCol) {
    this.x = x;
    this.y = y;
    this.s = s;
    this.xCol = xCol;
    this.yCol = yCol;
  }

  //methods

  void update() {
    xOff += random(0.3);
    yOff += random(0.3);
    float xNoise = noise(xOff);
    float yNoise = noise(yOff);
    float gridX = (xCol*xSpacing);
    float gridY = (yCol*ySpacing);
    x = gridX + (xNoise * xSpacing);
    y = gridY + (yNoise * ySpacing);
  }

  void render() {
    fill(100);
    noStroke();
    
    //noStroke();
    //background(0);
    ellipse(x, y, s, s);    
  }
}