class Runner extends EndlessWorld{

   
void LavRunner(){

image(missJoyride,xpos,ypos);  
missJoyride.resize(0,200);

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
    ypos -= 15;
  }
  

}


}
