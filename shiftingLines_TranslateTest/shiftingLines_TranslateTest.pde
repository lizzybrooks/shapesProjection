int counter;




movingLine Lopening, L1,L2,L3,L4,L5,L6,L7,L8, L9, L10, L11, L12;

void setup(){
  size(600, 600,P3D);
  background(0);
  frameRate(130);
  
  Lopening = new movingLine(width,0,0,height);
  L1 = new movingLine(width,0,0,height);
  L2 = new movingLine(width/2,height,0,height);
  L3 = new movingLine(0,height,width/2,height);
  L4 = new movingLine(0,height,0,height/2);
  
  L5 = new movingLine(width,0,width,height);
  L6 = new movingLine(0,0,width,0);
  
  L7 = new movingLine(width/2,height-height/2, width-width/3, height-height/2); 
  L8 = new movingLine(L7.rightX,L7.rightY,L7.rightX, 2*height/3); 
  
  L9 = new movingLine(width/2,height-height/2, width-width/3, height-height/2);
  L10 = new movingLine(width/2,height-height/2, width-width/3, height-height/2);
  
  L11 = new movingLine(L8.rightX,L8.rightY,L8.rightX,L8.rightY);
  

 
  
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


} 

if (frameCount >=1000 && frameCount <=1300){
  stroke(0);
  L2.drawLine();
  L2.shift(0,0,0,-1);
 
}

if (frameCount>1000 && frameCount <=1500){
  stroke(0);
  L3.drawLine();
  L3.shift(.5,-.5,0,0);
  L4.drawLine();
  L4.shift(.5,-.5,0,0);  
}

if (frameCount>1500 && frameCount <= 2100){
  
  stroke(0);
  L5.drawLine();
  L5.shift(-1,0,-.5,0);
  L6.drawLine();
  L6.shift(0,.5,0,1);
  
}

if (frameCount>=2100 && frameCount <=2300){
    stroke(255);
    L7.drawLine();
    
    L7.shift(0,0,-1,-.5);
    
    L8.leftX=L7.rightX;
    L8.leftY=L7.rightY;
    L8.rightX=L7.rightX;
    L8.rightY=L7.rightY+150;
    

}

if (frameCount>2300 && frameCount <=2400){ 
    stroke(200);
    L8.drawLine();
    L8.shift(1,1,1,1);
    L11.leftX=L8.rightX;
    L11.leftY=L8.rightY;
    L11.rightX=L8.rightX-100;
    L11.rightY=L8.rightY-100;
}

if (frameCount >2400 && frameCount <=2500){
    
    stroke(50);
    L9.drawLine();
    L9.shift(0,1.5,-.5,1.5);
    stroke(255);
    L10.drawLine();
    L10.shift(-1,-1,-1,-1);  
}

if (frameCount >2500 && frameCount <= 2700){
  
  stroke(0,255,0);
  L11.drawLine();
  
}

if (frameCount >2700){
  
frameCount=-1;

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

//class LeftShadow extends movingLine {
    
//    LeftShadow(float LX, float LY, float X2, float Y2) {
//    super(LX, LY);
//    x2=X2;
//    y2=Y2;
//  }
  
  
//}
  

 
//class Dot { 
//  int xpos, ypos;
//} 

//class DrawDot extends Dot {
//  DrawDot(int x, int y) {
//    xpos = x;
//    ypos = y;
//  }
//  void display() {
//    ellipse(xpos, ypos, 200, 200);
//  }
//}
