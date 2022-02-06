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


void setup(){
size(840,640);

xpos= 50;
ypos= 400;
frameRate(25);
missiler = loadImage("missiler.png");
shockfences = loadImage("shockfence.png");
missJoyride = loadImage("miss joyride.png");
background = loadImage("back.png");

}

void draw(){
  clear();
    image(background,-10,-10);
    background.resize(860,750);
  
W.LavWorld();
R.LavRunner();
R.Gravity();


/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/

if(keyPressed)
R.Jetpack();


}
