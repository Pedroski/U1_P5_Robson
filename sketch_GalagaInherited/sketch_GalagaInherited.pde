int starAmount;
Ship ship;
Shot shot;
Stars star;
ArrayList<Shot> Shots = new ArrayList<Shot>();
ArrayList<Stars> Star = new ArrayList<Stars>();
void setup()
{
  fullScreen(P2D);
  ship = new Ship();
  shot = new Shot();
  star = new Stars();
  starAmount = 100;
  for(int i=0; i < starAmount; i++)
  {
    Star.add(new Stars());
  }
  for(int i=0; i < starAmount; i++)
  {
    
  }
}

void draw()
{
  fill(0,100);
  rect(0,0,width,height);
  ship.Update();
  shot.Update();
  star.Update();
  for(Stars S: Star)
  {
    S.Update();
  }
  for(Shot B: Shots)
  {
    B.Update();
  }
}