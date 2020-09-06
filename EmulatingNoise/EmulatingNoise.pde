void setup()
{
  size(1000,400); //do not change
  background (255,255,255);
  noLoop();
}

void draw()
{
    
  colorMode(HSB);
  for (int x = 50; x <1000; x = x + 10) //do not change
  {
    fill(270*noise(x*0.015+5000),255,255,100);
    pushMatrix();
    translate(x,200);
    rotate(0.75*noise(x*0.015+5000));
    scale (0.2+1.3*noise(x*0.015));
    ellipse(0,0,100,150); //do not change
    popMatrix();
  }

}
// to get numbers in range a--> b
// x = a + (b-a)*noise(...)
