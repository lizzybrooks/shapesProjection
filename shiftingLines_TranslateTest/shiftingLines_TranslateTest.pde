int swap = 1;

int[] angles = { 90, 180, 270 };
int[] faces = {};

movingLine Lopening, L1,L2,L3,L4,L5,L6,L7,L8, L9, L10, L11, L12;
movingLine face;

void setup(){
  size(1000, 1000);
  background(0);
  frameRate(230);

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
  L12 = new movingLine(L7.rightX, L7.rightY, L7.rightX, L7.rightY);

}


void draw(){

if (frameCount*6/10 < 500){
  stroke(255);
  strokeWeight(2);
  Lopening.drawLine();
  Lopening.shift(0,0,-1,0);
  if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10 >=500 && frameCount*6/10 <=1000){
  stroke(50);
  strokeWeight(2);
  L1.drawLine();
  L1.shift(0,0,0,1);
  if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10 >=1000 && frameCount*6/10 <=1300){
  stroke(0);
  L2.drawLine();
  L2.shift(0,0,0,-1);

  if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10>1000 && frameCount*6/10 <=1500){
  stroke(0);
  L3.drawLine();
  L3.shift(.5,-.5,0,0);
  L4.drawLine();
  L4.shift(.5,-.5,0,0);

  if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10>1500 && frameCount*6/10 <= 2100){
  stroke(0);
  L5.drawLine();
  L5.shift(-1,0,-.5,0);
  L6.drawLine();
  L6.shift(0,.5,0,1);

  if(swap == -1){
  flipHalf();
  }



}

if (frameCount*6/10>=2100 && frameCount*6/10 <=2300){
    stroke(255);
    L7.drawLine();
    L7.shift(0,0,-1,-.5);

    L8.leftX=L7.rightX;
    L8.leftY=L7.rightY;
    L8.rightX=L7.rightX;
    L8.rightY=L7.rightY+250;

    L12.leftX=L7.leftX+170;
    L12.leftY=L7.leftY;
    L12.rightX=L7.rightX+170;
    L12.rightY=L7.rightY;

    if(swap == -1){
    flipHalf();
  }


}

if (frameCount*6/10>2300 && frameCount*6/10 <=2400){
    stroke(200);
    L8.drawLine();
    L8.shift(1,1,1,1);
    L11.leftX=L8.rightX;
    L11.leftY=L8.rightY;
    L11.rightX=L8.rightX-170;
    L11.rightY=L8.rightY-170;

    if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10 >2400 && frameCount*6/10 <=2500){
    strokeWeight(3);
    stroke(50);
    L9.drawLine();
    L9.shift(0,1.5,-.5,1.5);
    strokeWeight(2);
    stroke(255);
    L10.drawLine();
    L10.shift(-1,-1,-1,-1);

    if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10 >2500 && frameCount*6/10 <= 2600){

  stroke(255);
  L11.drawLine();
  L11.shift(-1,0,-1,0);

  if(swap == -1){
  flipHalf();
  }



}

if (frameCount*6/10 >2600 && frameCount*6/10<=2700){
  stroke(200);
  L11.drawLine();
  L11.shift(0,1,0,1);
  L12.drawLine();
  L12.shift(0,-1,0,-1);

  if (frameCount == 2700){


  }

  if(swap == -1){
  flipHalf();
  }



}



if (frameCount*6/10>2700 && frameCount*6/10<=2800){
  stroke(255);
  L11.drawLine();
  L11.shift(-1,0,-1,0);
  L12.drawLine();
  L12.shift(1,0,1,0);

  if(swap == -1){
  flipHalf();
  }


}

if (frameCount*6/10>2800 && frameCount*6/10<=2900){
  stroke(200);
  L11.drawLine();
  L11.shift(0,1,0,1);
  L12.drawLine();
  L12.shift(0,-1,0,-1);

  if(swap == -1){
  flipHalf();
  }



}

if (frameCount*6/10>2900 && frameCount*6/10<=3000){
  stroke(255);
  L11.drawLine();
  L11.shift(-1,0,-1,0);
  L12.drawLine();
  L12.shift(1,0,1,0);

  if(swap == -1){
  flipHalf();
  }



}

if (frameCount*6/10>3000 && frameCount*6/10<=3100){
  stroke(200);
  L12.drawLine();
  L12.shift(0,-1,0,-1);

  if(swap == -1){
  flipHalf();
  }



}

if (frameCount*6/10>3200){
  frameCount = -1;
  swap = swap*-1;
 }


}

void flipHalf() {
  loadPixels();
  for (int x=width/2; x<width; x++) {
    for (int y=0; y<height; y++) {
      pixels[x+y*width] = pixels[(width-x)+y*width];
    }
  }
  updatePixels();
}

void flipVert() {
  loadPixels();
  for (int y=height/2; y<height; y++) {
    for (int x=0; x<width; x++) {
      pixels[x+y*height] = pixels[(height-y)+x*height];
    }
  }
  updatePixels();
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
