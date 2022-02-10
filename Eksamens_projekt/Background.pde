
Background B;

class Background extends EndlessWorld {
float xB, yB = -10 ;


  void display() {
    background.resize(860,750);
   image(background,xB,yB);
   image(background, xB + background.width, yB);
   xB = xB -10;
   if(xB < -background.width){
     xB = 0; // starter den om når det første billede er fædrig
   }
  }
   
  
     
  }
 
