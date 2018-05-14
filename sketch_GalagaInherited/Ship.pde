class Ship
{
  PImage Ship;
  PVector pos;
  float size;
  float speed;
  
  Ship()
  {
    Ship = loadImage("ship.png");
    pos = new PVector(mouseX, height-200);
    size = 100;
    speed = 2;
  }
  
  Ship(float _x, float _y)
  {
    pos = new PVector(mouseX, height-200);
    
  }
  
  void Update()
  {
    image(Ship,pos.x,pos.y,size,size);
  }
  
}