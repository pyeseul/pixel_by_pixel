class ball {
  
  // state
  
  int xCol;
  int yCol;
  float x;
  float y;
  float xOff = 0.0;
  float yOff = 0.0;
  float randomX;
  float randomY;
  int s;
  
  //constructor
  
  ball(float x, float y, int s, int xCol, int yCol, float randomX, float randomY) {
    this.x = x;
    this.y = y;
    this.s = s;
    this.xCol = xCol;
    this.yCol = yCol;
    this.randomX = randomX;
    this.randomY = randomY;
  }

  //methods

  void update() {
    
    if (dist(width/2, height/2, x, y) > circleRadius) {
      randomX=0.2;
      randomY=0.2;
    } 
    
    xOff += random(randomX);
    yOff += random(randomY);
    float xNoise = noise(xOff);
    float yNoise = noise(yOff);
    float gridX = (xCol*xSpacing);
    float gridY = (yCol*ySpacing);
    x = gridX + (xNoise * xSpacing);
    y = gridY + (yNoise * ySpacing);
  }

  void render() {
    fill(100);
    //stroke(0);
    noStroke();
    //background(0);
    //rect(x,y,25*noise(random(.1)),25*noise(random(.1)));
    ellipse(x, y, s, s);    
  }
}