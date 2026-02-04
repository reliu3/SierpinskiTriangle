public void setup()
{
  size(700,700);
  background(222,181,181);
}
public void draw()
{
  fill(175,41,41);
  noStroke();
  sierpinski(0,700,700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <=10) {
    triangle(x,y, x+(len/2), y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2); 
    sierpinski(x + (len/2), y, len/2); 
    sierpinski(x + (len/4), y - (len/2), len/2); 
  }
}
