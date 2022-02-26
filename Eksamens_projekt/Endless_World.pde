class EndlessWorld{
 
  
void LavWorld(){
  B.display();
  O.display();
  R.LavRunner();
 
  R.Gravity();

 
/* grunden til at vi putter Jetpack under draw 
er fordi at draw bliver tjekket flere gange i sekundtet og keyPressed bliver 
ikke tjekket lige så ofte*/
if(keyPressed)
R.Jetpack();
    
     
}

}
