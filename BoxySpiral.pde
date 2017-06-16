import java.lang.Math;

int spacing = 5;
int sizeX = 600;
int sizeY = 600;
int X = 50;
int Y = 50;
int Iter = 0;
double addXmult = 0;
double addYmult = -1;

void setup(){
  background(0);
  surface.setSize(sizeX + 100, sizeY + 100);
//  size(600, 600);
}

void draw(){
  
  addXmult += Math.signum(Math.cos(Iter*Math.PI/2+Math.PI/4));
  addYmult += Math.signum(Math.sin(Iter*Math.PI/2+Math.PI/4));
  
  sizeX = sizeX - Iter % 2 * spacing;
  sizeY = sizeY - (Iter + 1) % 2 * spacing;
  
  int X2 = X + (int)(addXmult * sizeX);
  int Y2 = Y + (int)(addYmult * sizeY);
  
  print(X2, " ", Y2, "\n");
   
  stroke(255, 0, 255);
  line(X, Y, X2, Y2);
 
  X = X2;
  Y = Y2;
  
  Iter +=1;
  if(Math.abs(sizeX) < spacing) noLoop(); 
}