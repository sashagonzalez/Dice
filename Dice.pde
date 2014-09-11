//Sasha Gonzalez AP CS 1 Dice assignment Mr.Simon
Die bob;
int totalDots;
int dieX=0;
int dieY=0;

void setup()
{
  background(255);
  size(1024, 768);
  noLoop();
}
void draw()
{
  totalDots=0;
  dieX=0;
  dieY=0;
  background(255);
  for ( int i=0; i<102; i++  )
  { 
    for (int j=0; j<75; j++ )
    {
      bob = new Die(dieX, dieY);
      bob.show();
      totalDots+= bob.dotNum;
      dieY+=10;
    }
    dieX+=10;
    dieY=0;
  }
  fill(0);
  text("Total equals " + totalDots, 400, 765);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int  dotNum, rectX, rectY, clrRed, clrGreen, clrBlue;   
  Die(int x, int y) 
  {
    //sets rectangle coordinates to x,y
    rectX=x;
    rectY=y;
    dotNum= (int)(Math.random()*6+1); //# of dots
  }
  void roll()
  {//rolls dice
    dotNum= (int)(Math.random()*6+1);
  }

  void show()
  {//creates dice
    clrRed= (int)(Math.random()*255);
    clrGreen= (int)(Math.random()*255);
    clrBlue= (int)(Math.random()*255);
    fill(clrRed,clrGreen,clrBlue);
    rect(rectX, rectY, 10, 10);
    fill(255);
    //if statements for die values
    if (dotNum == 1)
    {
      ellipse(rectX+5, rectY+5, 4, 4);
    }
    if (dotNum== 2)
    {
      ellipse(rectX+2, rectY+2, 4, 4);
      ellipse(rectX+8, rectY+8, 4, 4);
    }
    if (dotNum== 3)
    {
      ellipse(rectX+2, rectY+2, 4, 4);
      ellipse(rectX+8, rectY+8, 4, 4);
      ellipse(rectX+5, rectY+5, 4, 4);
    }
    if (dotNum==4)
    {
      ellipse(rectX+2, rectY+2, 4, 4);
      ellipse(rectX+2, rectY+8, 4, 4);
      ellipse(rectX+8, rectY+2, 4, 4);
      ellipse(rectX+8, rectY+8, 4, 4);
    }
    if (dotNum==5)
    {
      ellipse(rectX+2, rectY+2, 4, 4);
      ellipse(rectX+2, rectY+8, 4, 4);
      ellipse(rectX+8, rectY+2, 4, 4);
      ellipse(rectX+8, rectY+8, 4, 4);
      ellipse(rectX+5, rectY+5, 4, 4);
    }
    if (dotNum==6)
    {
      ellipse(rectX+2, rectY+2, 3, 3);
      ellipse(rectX+2, rectY+8, 3, 3);
      ellipse(rectX+8, rectY+2, 3, 3);
      ellipse(rectX+8, rectY+8, 3, 3);
      ellipse(rectX+8, rectY+5, 3, 3);
      ellipse(rectX+2, rectY+5, 3, 3);
    }
  }
}


