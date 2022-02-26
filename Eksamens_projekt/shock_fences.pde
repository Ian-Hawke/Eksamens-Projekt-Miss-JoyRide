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
  float SpeedS = -6.5;
  float x = 1;
  float y= 1;

  ShockFences() {
    x= width;//int(random(1, width));
    y=int(random(1, height));
  }

  void display() {
   image(shockfences,x, y);
    shockfences.resize(0,80);
  
  }

  void move() {
    
    x=x+SpeedS;
  }
}
