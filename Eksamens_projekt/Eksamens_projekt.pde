 ArrayList <Obstacle> ObstacleList = new ArrayList <Obstacle>();
 
 float xpos;
 float ypos;
 int Speed = -5;
 int x = 1;
 int y= 1;
 float r = (10);

Obstacle O;
EndlessWorld W = new EndlessWorld();
Runner R = new Runner();


void setup(){
size(640,480);
xpos= 50;
ypos= 400;
frameRate(25);
O = new Obstacle();

}

void draw(){
  background(255);
  clear();

W.LavWorld();
R.LavRunner();
R.Gravity();

for (Obstacle O: ObstacleList){
  O.LavObstacle();
   O.move();
}


/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/

if(keyPressed)
R.Jetpack();


}
