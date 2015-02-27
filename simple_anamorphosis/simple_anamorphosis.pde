/***************************************
*
*  Simple anamorphosis code for virtual reality
*  Base on an processing example code
*  Author : David-Alexandre Chanel
   mail : david.alexandre.chanel.ext@gmail.com
*  Date : 14/11/18
* 
*****************************************/

int numBlocks = 8;
int centerX = 50;
int centerY = 50;
int centerZ = 50;

void setup()
{
  size(650, 650, P3D);
  frameRate(60);
  mouseX = width/2;
  mouseY = height/2;
}
  
void draw()
{
  drawVisuals(mouseX,mouseY);
}
 
void keyPressed()
{
  if( key == CODED )
  {
    if( keyCode == UP )
    {
      numBlocks++;
    }
    if( keyCode == DOWN )
    {
      numBlocks --;
    }
  } 
}

void drawVisuals(float x, float y)
{
  lights();
  background(0);
  // For better clipping
  perspective(PI/3.0, float(width)/float(height), 1, 1000);
    
  // 180° centered on centerX for eyex and eyey
  camera( map(mouseX,0,width,centerX-180/2,centerX+180/2), // eyex
          map(mouseY,0,height,centerY+180/2,centerY-180/2), // eyey
          -100, // eye2
          centerX, centerY, centerZ, // centerX, centerY, centerZ
          0.0, -1.0, 0.0); // upX, upY, upZ
   
  translate( 60, 50, 10);
  stroke( 255, 255, 0);    
  
  for( int r = 0; r < numBlocks; r++ )
  {
    for( int g = 0; g < numBlocks; g++ )
    {
      for( int b = 0; b < numBlocks; b++ )
      {
          int inc = 255/numBlocks;
          fill(350);
          pushMatrix();
          float amt = 100.0 / numBlocks;
          translate( r * amt - 55, g * amt - 55, b * amt - 55 );
          box(5);
          popMatrix();
      }
    }
  }
  
}
