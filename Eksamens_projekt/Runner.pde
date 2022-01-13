class Runner extends EndlessWorld{
  
   
void LavRunner(){

fill(255);
rect(xpos,ypos,20,20);  

}

/*når man bruger jetpaken skal man kunne flyve up og
falde ned igen når man slipper up*/
void Gravity(){
  if (ypos>=400)
 ypos=400;
 else
 ypos +=5;
 
 if(ypos<=30)
 ypos=30;
  
}

void Jetpack(){

  if (keyCode == UP) {
    ypos -= 10;
  }
  

}


}
