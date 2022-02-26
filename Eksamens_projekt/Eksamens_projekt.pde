
 
void setup(){
size(840,640);
frameRate(25);

// verdenen bliver lavet
W.lavWorld();

}

void draw(){
  clear();
  collision();
 
  // verdenen bliver tegnet    
    W.tegnWorld();
   
}

void collision(){
W.collid();

    
}
