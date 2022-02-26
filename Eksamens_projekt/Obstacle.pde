class Obstacle extends EndlessWorld{
   float SpeedM = -15;
  float xM = 1;
  float yM= 1; 
  
void display(){
 
// hvert 5. sekund bliver der lavet misiller
if(frameCount%(25*5)==0)
lavMissiles();

// hvert 10. sekund bliver der lavet "ShockFences"
if(frameCount%(25*10)==0)
lavShockFences();

// her bliver misiller og shockfences lavet 
for (Obstacle M : ObstacleListM){
  println("Obstacle loop korer!");
  M.display();
  M.move();
}
  
}

void move(){


}
 

 
 
}
