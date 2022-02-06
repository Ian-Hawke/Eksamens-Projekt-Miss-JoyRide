class Obstacle extends EndlessWorld{
  
  
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
