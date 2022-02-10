
Background B;

class Background extends EndlessWorld {
float xB, yB = -10 ;


  void display() {
    background.resize(860,750);
    /* for at bagorund ikke skal stoppe med at køre så laver vi et ekstra billede 
    efter det første */
   image(background,xB,yB);
   image(background, xB + background.width, yB);
   xB = xB -10;
   // her efter lavet vi et if statment som få billedet til at køre forevigt 
   
   if(xB < -background.width){
     xB = 0; // starter den om når det første billede er fædrig
   }
  }
   
  
     
  }
 
