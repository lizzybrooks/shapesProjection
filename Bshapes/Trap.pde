
 
class Trap {
   float TLX;
   float TLY;
   float TRX;
   float TRY;
   float BLX;
   float BLY;
   float BRX;
   float BRY;
   float x1=0, y1=0, x2=0, y2=0, x3=0, y3=0, x4=0, y4=0;
   int black;
   
   Trap(float x1c, float y1c, float x2c, float y2c, float x3c, float y3c, float x4c, float y4c, int col) {
     
     TLX = x1c;
     TLY = y1c;
     TRX = x2c;
     TRY = y2c;
     BLX = x3c;
     BLY = y3c;
     BRX = x4c;
     BRY = y4c;
     black = col; 
   }
   
   void drawTrap(){
    noStroke(); 
     
   if (black == 1){
      fill(0);
    }
    if (black == -1){
      fill(255);
    }
     
     pushMatrix();
     translate(width/2,height/2);
     quad(x1,y1,x2,y2,x3,y3,x4,y4);
     x1-= TLX;
     x2+=TRX;
     x3+=BLX;
     x4=BRX;
     y1-=TLY;
     y2-=TRY;
     y3+=BRY;
     y4+=BLY;
      popMatrix();
     
     
   }
  
}
