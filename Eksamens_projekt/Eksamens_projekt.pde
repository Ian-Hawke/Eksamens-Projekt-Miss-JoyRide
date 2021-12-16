 float xpos;
 float ypos;
 float Speed =-2;

Obstacle O = new Obstacle();
EndlessWorld W = new EndlessWorld();
Runner R = new Runner();


void setup(){
size(640,480);
xpos= 50;
ypos= 400;
frameRate(25);
}

void draw(){
  background(255);
  clear();
O.LavObstacle();
W.LavWorld();
R.LavRunner();
R.Gravity();

/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/

if(keyPressed)
R.Jetpack();


}
void keyPressed(){
  
  

}
