Player circle[] = new Player[1001];

void setup()
{
  size(1000, 800); 

  for (int i=0; i < 1001; i++)
  {
    circle[i] = new Player();
  }
}

void draw()
{
  background(255);
  for (int i=0; i < 1001; i++)
  {
    circle[i].Update();
  }
  
  for (int i=0; i < circle.length; i++)
  {
    for (int j=0; j < circle.length; j++)
    {
      if (i!=j)
      {
        float d=dist(circle[i]._x, circle[i]._y, circle[j]._x, circle[j]._y);
        if (d<10)
        {
          circle[i]._x = -8000;
          circle[i]._y = -8000;
        }
      }
    }
  }
}
