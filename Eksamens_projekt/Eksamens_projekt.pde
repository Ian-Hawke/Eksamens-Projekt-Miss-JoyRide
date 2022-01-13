 ArrayList <Obstacle> ObstacleList = new ArrayList <Obstacle>();
 
 float xpos;
 float ypos;
 


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
  clear();
  background(192,222,255);
  

W.LavWorld();
R.LavRunner();
R.Gravity();

// hvert 5. sekund bliver der lavet misiller
if(frameCount%(25*5)==0)
lavMissiles();

// hvert 10. sekund bliver der lavet "ShockFences"
if(frameCount%(25*10)==0)
lavShockFences();

for (Obstacle M : ObstacleList){
  println("Obstacle loop korer!");
  M.display();
  M.move();
}

for (Obstacle S : ObstacleList){
  S.display();
  S.move();
}


/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/

if(keyPressed)
R.Jetpack();


}
