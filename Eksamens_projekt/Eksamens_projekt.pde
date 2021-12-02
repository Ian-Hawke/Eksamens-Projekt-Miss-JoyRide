

Obstacle O = new Obstacle();
EndlessWorld W = new EndlessWorld();
Runner R = new Runner();

void setup(){

}

void draw(){
O.LavObstacle();
W.LavWorld();
R.LavRunner();

}
void keyPressed(){
R.Jetpack();

}
