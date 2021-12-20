class Missiles extends Obstacle {
  
  void lavMissiles(){
   Obstacle M;
   for (int i = 0; i < 100; i++) {
    float r = random(50);
    M = new Missiles();
    ObstacleList.add(M);
}
   
       
     
   }
   
 
    
  
     Missiles(){
    x= int(random(1,width));
    y=int(random(1,width));

      
    }
    
    void display(){
         rect(x,y,20,20);
      
    }
   
    void move(){
     x=x+Speed; 
    }
  
}
