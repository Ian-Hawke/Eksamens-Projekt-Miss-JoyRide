class Obstacle{
  
  
void LavObstacle(){
  fill(216, 156, 167);
  rect(300,400,20,20);
 
 if(r == 10){
O = new Obstacle();
  rect(300,400,20,20);
 ObstacleList.add(O);

 }
 
}

Obstacle(){
 x= int(random(1,width));
   
}



void move(){
  x = x+Speed;
  
}

}
