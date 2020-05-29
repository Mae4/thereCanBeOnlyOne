class Player
{
  int _x;
  int _y;
  int _Xvel;
  int _Yvel;
  color _c;

  Player()
  {
    _x = (int)random(0, width-10);
    _y = (int)random(0, height-10);
    _Xvel = (int)random(-10, 10);
    _Yvel = (int)random(-10, 10);
    _c = color((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
  }

  public void Draw()
  {
    fill(_c);
    ellipse(_x, _y, 10, 10);
  }

  public void Move()
  {
    _x=_x+_Xvel;
    _y=_y+_Yvel;

    if (_x>1000-5 || _x<0+5)
    {
      _Xvel = _Xvel * -1;
    }
    if (_y>800-5 || _y<0+5)
    {
      _Yvel = _Yvel * -1;
    }
  }

  public void Update()
  {
    Draw();
    Move();
  }
}
