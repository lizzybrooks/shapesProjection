int counter;




movingLine Lopening, L1,L2,L3,L4,L5,L6,L7,L8;

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
  
  L7 = new movingLine(width/2,height-height/3, width-width/4, height-height/3); 
  L8 = new movingLine(width-width/4-300,height-height/3-300,width-width/4, height-height/3-300); 
 
  
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

if (frameCount>=1900 && frameCount <=2200){
    stroke(255);
    L7.drawLine();
    L8.drawLine();
    L7.shift(0,0,-1,-1);
    L8.shift(1,1,0,0);

}

if (frameCount>=2200 && frameCount <=2500){
  
    stroke(255);
    L7.drawLine();
    L8.drawLine();
    L7.shift(0,0,1,1);
    L8.shift(-1,-1,0,0);
    lights();

noStroke();
pushMatrix();
translate(width/2, height/2, 0);
rotateY(1.25);
rotateX(-0.4);
box(100);
popMatrix();

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
