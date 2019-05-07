int counter;


movingLine Lopening, L1,L2,L3,L4;

void setup(){
  size(600, 600,P3D);
  background(0);
  frameRate(130);
  
  Lopening = new movingLine(width,0,0,height);
  L1 = new movingLine(width,0,0,height);
  L2 = new movingLine(0,height,0,height);
  L3 = new movingLine(0,height,0,height);
 
  
}


void draw(){
 
if (frameCount < 500){
  stroke(255);
  strokeWeight(2);
  Lopening.drawLine();
  Lopening.shift(0,0,-1,0);
  
}

if (frameCount >=500 && frameCount <=1000){
if(L1.rightY>=height/2 && counter == 0){
  stroke(50);
  strokeWeight(2);
  L1.drawLine();
  L1.shift(0,0,0,1);
  
} 
 //stroke(100);
 //L2.drawLine();
 //L2.shift(1,0,0,0);

} 

if (frameCount >=1000 && frameCount <=1300){
  stroke(150);
  L2.drawLine();
  L2.shift(0,-1,.5,-.5);
  
 
  
  
}





 
}


class movingLine
{
  float leftX;
  float leftY;
  float rightX;
  float rightY;
 
  
  movingLine(float LX, float LY, float RX, float RY){
    leftX = LX;
    leftY = LY;
    rightX = RX;
    rightY = RY;
    
  }
  
  void drawLine(){
    
    line(leftX,leftY,rightX,rightY);
    
  }
  
  void shift(float LXdiff, float LYdiff, float RXdiff, float RYdiff){
    leftX = leftX + LXdiff;
    leftY += LYdiff;
    rightX+= RXdiff;
    rightY+= RYdiff;
    
  }
}
