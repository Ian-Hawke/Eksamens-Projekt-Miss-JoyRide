void lavMissiles() {
  println("SÅ er der missiler!" + frameCount);
  Missiles M;
  for (int i = 0; i < 100; i++) {
    float r = random(150);

    if (r > 2 ) continue;

    M = new Missiles();
    ObstacleList.add(M);
  }
}



class Missiles extends Obstacle {
  float Speed = -6.5;
  float x = 1;
  float y= 1;

  Missiles() {
    x= width;//int(random(1, width));
    y=int(random(1, height));
  }

  void display() {
    rect(x, y, 20, 20);
  }

  void move() {
    println("move missil");
    x=x+Speed;
  }
}
