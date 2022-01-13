


void lavMissiles() {
  println("SÅ er der missiler!" + frameCount);
  Missiles M;
  for (int i = 0; i < 100; i++) {
    float rM = random(150);

    if (rM > 4 ) continue;

    M = new Missiles();
    ObstacleList.add(M);
  }
}



class Missiles extends Obstacle {
  float SpeedM = -6.5;
  float xM = 1;
  float yM= 1;

  Missiles() {
    xM= width;//int(random(1, width));
    yM=int(random(1, height));
  }

  void display() {
    circle(xM, yM, 40);
  }

  void move() {
    println("move missil");
    xM=xM+SpeedM;
  }
}
