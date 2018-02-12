public void setup()
{
  background(0);
  size(500, 500);
}
public void draw()
{
  //noStroke();
  myFractal(250, 250, 480);
}
public void myFractal(int x, int y, int w)
{
  ellipse(x, y, w, w/12);
  ellipse(x, y, w/12, w);
  if (w > 10)
  {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x - 20, y, w/2);
    myFractal(x + 20, y, w/2);
  }
}