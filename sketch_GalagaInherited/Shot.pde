class Shot
{
  PVector pos;
  float size1;
  float size2;
  color col;
  boolean wasShot;

  Shot()
  {
    pos = new PVector(mouseX, height-200);
    size1 = 5;
    size2 = 50;
    col = color(254, 255, 5);
    wasShot = true;
  }

  void Update()
  {
    fill(col);
    rect(pos.x, pos.y, size1, size2);
    if ( wasShot == true )
    {
      pos.y -= 20;
    }
    if ( pos.y < 0 )
    {
      pos.y = height-200;
      wasShot = false;
    }
    if ( mousePressed )
    {
      wasShot = true;
    }
  }
  
  
}