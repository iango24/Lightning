int startX = 0;
int startY = 45;
int endX = 0;
int endY = 150;
void setup()
{
  size(800,800);
  background(0);
  strokeWeight(24);
  noFill();
  frameRate(44);
}
void draw()
{
//cloud
noStroke();
fill(125,125,125,255);
ellipse(0,0,250,150);
ellipse(200,0,250,150);
ellipse(400,0,250,150);
ellipse(600,0,250,150);
ellipse(800,0,250,150);
  fill(0,0,0,15);
  stroke(0);
  rect(0,0,800,800);
  stroke(255,255,150);
  startX = (int)(Math.random()*800);
  while(endX<=800){
  endX = startX+((int)(Math.random()*50-25));
    if (endX <=0){
    endX=0;
    }
  endY = startY + ((int)(Math.random()*50));
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  endX = 0;
  startY = 45;
  endY = 150;
  redraw();
}
