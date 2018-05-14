class Stars
{
  PVector pos;
  float size;
  color col;

  Stars()
  {
    pos = new PVector(random(0,width), random(-200,0));
    size = 4;
    col = color(250, 250, 250);
  }
  
  Stars(float _x, float _y)
  {
    pos = new PVector(random(0,width), random(0,height));
    size = 4;
    col = color(250, 250, 250);
  }

  void Update()
  {
    fill(col);
    ellipse(pos.x, pos.y, size, size);
    pos.y += 10;
    if ( pos.y > height )
    {
      pos.x = (int) random(0, width);
      pos.y = random(-5, 0);
    }
  }
}