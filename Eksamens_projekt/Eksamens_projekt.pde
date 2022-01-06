 ArrayList <Obstacle> ObstacleList = new ArrayList <Obstacle>();
 
 float xpos;
 float ypos;
 

//Missiles M;

Obstacle O = new Obstacle();
EndlessWorld W = new EndlessWorld();
Runner R = new Runner();



void setup(){
size(640,480);
xpos= 50;
ypos= 400;
frameRate(25);
//M = new Missiles();

}

void draw(){
  background(255);
  clear();

W.LavWorld();
R.LavRunner();
R.Gravity();

if(frameCount%(25*5)==0)
lavMissiles();

for (Obstacle M : ObstacleList){
  println("Obstacle loop korer!");
  //O.lavObstacle();
  M.display();
  M.move();
}




/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/

if(keyPressed)
R.Jetpack();


}
