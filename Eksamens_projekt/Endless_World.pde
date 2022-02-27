
 ArrayList <Obstacle> ObstacleListM = new ArrayList <Obstacle>();

  // her er runners start position 
float xpos = 50;
 float ypos = 400;
 
 PImage missiler;
 PImage shockfences;
 PImage missJoyride;
 PImage background;

Obstacle O = new Obstacle();
EndlessWorld W = new EndlessWorld();
Runner R = new Runner();
boolean stopBackground = false;

class EndlessWorld{
 
  //konstruktor 
  void lavWorld(){
    
  // her bliver billederene navngivet og sat ind
missiler = loadImage("missiler.png");
shockfences = loadImage("shockfence.png");
missJoyride = loadImage("miss joyride.png");
background = loadImage("back.png");

B = new Background(); 
       
    
  }
  
void tegnWorld(){
  B.display();
  O.display();
  R.LavRunner();
 
  R.Gravity();

 
/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/
if(keyPressed)
R.Jetpack();
    
     
}


void collid(){
  for(int i = 0; i<ObstacleListM.size();i++){
  if(dist(xpos, ypos, ObstacleListM.get(i).xM, ObstacleListM.get(i).yM)<100){
    ObstacleListM.clear();
    stopBackground= true;
  
  }
  
}

}
}
