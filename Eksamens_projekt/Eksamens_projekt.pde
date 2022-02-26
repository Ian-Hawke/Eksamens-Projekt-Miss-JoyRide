 ArrayList <Obstacle> ObstacleListM = new ArrayList <Obstacle>();
 
float xpos;
 float ypos;
 PImage missiler;
 PImage shockfences;
 PImage missJoyride;
 PImage background;

Obstacle O = new Obstacle();
EndlessWorld W = new EndlessWorld();
Runner R = new Runner();
boolean stopBackground = false;

void setup(){
size(840,640);
frameRate(25);

 // her er runners start position 
xpos= 50;
ypos= 400;

  // her bliver billederene navngivet og sat ind
missiler = loadImage("missiler.png");
shockfences = loadImage("shockfence.png");
missJoyride = loadImage("miss joyride.png");
background = loadImage("back.png");

B = new Background(); 

}

void draw(){
  clear();
  collision();
  // verdenen bliver lavet    
    W.LavWorld();
    

}
void collision(){
for(int i = 0; i<ObstacleListM.size();i++){
  if(dist(xpos, ypos, ObstacleListM.get(i).xM, ObstacleListM.get(i).yM)<100){
    ObstacleListM.clear();
    stopBackground= true;
   
    
  }
}
}
