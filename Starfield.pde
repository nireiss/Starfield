
class Particle
{
double myX, myY, myAngle, mySpeed; 
Particle()
{
myX = 200;
myY= 200;
myAngle = Math.random()*2 * Math.PI;
mySpeed = Math.random()* 10 ;
}

void show(){
fill((int)(Math.random() * 250 + 1));
ellipse((int)myX, (int)myY, 5, 5);
}
void move(){
myX = myX + Math.cos(myAngle) * mySpeed ;
myY = myY + Math.sin(myAngle) * mySpeed;

}

}
Particle [] a = new Particle[1000];
void setup(){
size (400,400);
for(int i = 0; i < 1; i++)
  a[i] = new oddBall();
for(int i = 1; i < a.length; i++)
  a[i] = new Particle();
}
void draw(){
background(0, 0,0);
  for (int i = 0; i < a.length; i++){
    a[i].show();
    a[i].move();
  }
}
class oddBall extends Particle{
  oddBall(){
    myX = (int)(Math.random()*400);
    myY= (int)(Math.random()*400);
    fill(255, 0, 0);
    rect((float)myX, (float)myY, 15, 15);
  }
  void show(){
    fill(255, 0, 0);
    rect((int)myX, (int)myY, 15, 15);
    }
  void move(){
    if (keyPressed) {
     if (key == 'w' || key == 'W'){
     myY = myY - 2;
     
     } 
    }
     if (keyPressed) {
     if (key == 's' || key == 'S'){
     myY = myY+ 2;
     
     } 
    }
       if (keyPressed) {
     if (key == 'a' || key == 'A'){
     myX = myX - 2;
     
     } 
    }
      if (keyPressed) {
     if (key == 'd' || key == 'D'){
     myX = myX + 2;
     
     } 
    }
    
    /*
    myX = mouseX ;
    myY = mouseY;
*/
}
}
