int score;
void setup()
{
size(300,300);
noLoop();
}

void draw()
{
background(#109B82);
int numDots = 0;


 for (int y = 30; y <250; y+=60)
 {
   for (int x = 30; x<250; x+=60)
   {
    Die bob = new Die(x,y);
    bob.show();
   
    
    numDots = numDots + score;
}
}
textSize(25);
text("Total Score: " + numDots,30,290);
    //your code here
}

void mousePressed()
{
    redraw();
}

class Die //models one single dice cube
{
int myX;
int myY;
int score;
    //variable declarations here
    Die(int x, int y) //constructor
    {
roll();
myY=y;
myX=x;



        //variable initializations here
    }
 void roll()
    {
score = (int)((Math.random()*6)+1);
println(score);
    }

        //your code here
    
    void show()
    {
fill(#A2F0DB);
rect(myX,myY,50,50,5);

fill(0);
if (score == 1)
{
ellipse(myX+25,myY+25,10,10);
}
else if (score == 2)
{
ellipse(myX+40,myY+10,10,10);
ellipse(myX+10,myY+40,10,10);
}
else if(score == 3)
{
ellipse(myX+25,myY+25,10,10);
ellipse(myX+40,myY+10,10,10);
ellipse(myX+10,myY+40,10,10);
}
else if (score == 4)
{
ellipse(myX+40,myY+10,10,10);
ellipse(myX+10,myY+40,10,10);
ellipse(myX+40,myY+40,10,10);
ellipse(myX+10,myY+10,10,10);
}
else if (score == 5)
{
 ellipse(myX+40,myY+10,10,10);
ellipse(myX+10,myY+40,10,10);
ellipse(myX+40,myY+40,10,10);
ellipse(myX+10,myY+10,10,10);
ellipse(myX+25,myY+25,10,10);
 }
else
{
ellipse(myX+10,myY+25,10,10);
ellipse(myX+40,myY+25,10,10);
ellipse(myX+40,myY+10,10,10);
ellipse(myX+10,myY+40,10,10);
ellipse(myX+40,myY+40,10,10);
ellipse(myX+10,myY+10,10,10);

    //your code here
    }
  
}
}


