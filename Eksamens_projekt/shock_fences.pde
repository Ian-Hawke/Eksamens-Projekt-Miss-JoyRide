void lavShockFences() {
  println("SÅ er der ShockFences!" + frameCount);
  ShockFences S;
  for (int i = 0; i < 100; i++) {
    float rS = random(300);

    if (rS > 3 ) continue;

    S = new ShockFences();
    ObstacleListM.add(S);
  }
}



class ShockFences extends Obstacle {
  

  ShockFences() {
    xM= width;//int(random(1, width));
    yM=int(random(1, height));
  }

  void display() {
   image(shockfences,xM, yM);
    shockfences.resize(0,80);
  
  }

  void move() {
    
    xM=xM+SpeedM;
  }
}
