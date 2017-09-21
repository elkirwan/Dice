
Die bob;

void setup()
{
size(300,300);
noLoop();
}

void draw()
{
background(#CBE9F2);
int numDots = 0;
 for (int y = 30; y <250; y+=60)
 {
   for (int x = 30; x<250; x+=60)
   {
    bob = new Die(10,10);
    bob.show();
    numDots = numDots + score;
}
}
 text("Total Score: " + numDots, 150,250)
    //your code here
}

void mousePressed()
{
    redraw();
}

class Die //models one single dice cube
{
int myX, int myY, int score;
    //variable declarations here
    Die(int x, int y) //constructor
    {
myY=y;
myX=x;
roll();
        //variable initializations here
    }
 void roll()
    {
score = (int)(Math.random()*6+1);
    }

        //your code here
    
    void show()
    {
fill(#A2F0DB);
rect(myY,myX,50,50);
fill(0);
if (score == 1)
{
ellipse(myX,myY,5,5);
}
else if (score == 2)
{
ellipse(myX+6,myY-5,5,5);
ellipse(myX-6,myY+6,5,5);
}
else if(score == 3)
{
ellipse(myX,myY,5,5);
ellipse(myX+6,myY-6,5,5);
ellipse(myX-6,myY+6,5,5);
}
else if (score == 4)
{
ellipse(myX+6,myY-5,5,5);
ellipse(myX-6,myY+6,5,5);
ellipse(myX+6,myY+6,5,5);
ellipse(myX-6,myY-6,5,5);
}
else if (score == 5)
{
 ellipse(myX+6,myY-5,5,5);
ellipse(myX-6,myY+6,5,5);
ellipse(myX+6,myY+6,5,5);
ellipse(myX-6,myY-6,5,5);
ellipse(myX,myY,5,5);
 }
else 
{
ellipse(myX,myY,5,5)//fix this one
    //your code here
    }
}
}
