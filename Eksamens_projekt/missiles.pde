
void lavMissiles() {
  println("SÅ er der missiler!" + frameCount);
  Missiles M;
  for (int i = 0; i < 100; i++) {
    float rM = random(100);

    if (rM > 1 ) continue;

    M = new Missiles();
    ObstacleListM.add(M);
  }
}



class Missiles extends Obstacle {
  float SpeedM = -15;
  float xM = 1;
  float yM= 1;

  Missiles() {
    xM= width;//int(random(1, width));
    yM=int(random(1, height));
  }

  void display() {
    image(missiler,xM, yM);
    missiler.resize(0,40);
    
  }

  void move() {
    println("move missil");
    xM=xM+SpeedM;
  }
}
