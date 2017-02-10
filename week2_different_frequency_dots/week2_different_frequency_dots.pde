ArrayList<ball> balls1;
int columns, rows, xSpacing, ySpacing;
int circleRadius = 300;

void setup() {
  size(800, 800);
  columns = 70;
  rows = 70;

  xSpacing = width/columns;
  ySpacing = height/rows;
rectMode(CENTER);
    
  balls1 = new ArrayList<ball>();

  for (float j = 0; j <= height; j += ySpacing) {          
    for (float i = 0; i <= width; i += xSpacing) {
      balls1.add(new ball(j, i, 5, int(j/ySpacing), int(i/xSpacing), 0.03, 0.03));
    }
  }
}

void draw() {
  background(255);  
  for (int i = 0; i < balls1.size(); i++) {      
    balls1.get(i).update();
    balls1.get(i).render();
  }
  fill(255);
  //ellipse(width/2, height/2, 700, 700);
}