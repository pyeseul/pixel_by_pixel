ArrayList<ball> balls;
int columns, rows, xSpacing, ySpacing;

void setup() {
  size(800, 800);
  columns = 70;
  rows = 70;

  xSpacing = width/columns;
  ySpacing = height/rows;

  balls = new ArrayList<ball>();

  for (float j = 0; j <= height; j += ySpacing) {          
    for (float i = 0; i <= width; i += xSpacing) {
      balls.add(new ball(j, i, 3, int(j/ySpacing), int(i/xSpacing)));
    }
  }
}

void draw() {
  background(255);  
  for (int i = 0; i < balls.size(); i++) {      
    balls.get(i).update();
    balls.get(i).render();
  }
}