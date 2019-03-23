
let grayTriangleLine;

//second phase variables
let rightBlueX;
let rightBlueY;
let leftBlueX;
let leftBlueY;

//third phase
let yellowBottomX;
let yellowBottomY;
let yellowBottom2X;
let yellowBottom2Y;

//red shadow
let redShadowX;
let redShadowY;

function setup() {
  createCanvas(windowWidth, windowHeight, WEBGL);
  background(220);
  translate(-width/2,-height/2);
  noStroke();
  fill(255,255,255);
  triangle(0,0, width, 0, 0, height);
  fill(0,0,0);
  triangle(0,height,width,0, width,height);

  grayTriangleLine = windowHeight;

  rightBlueX = windowWidth;
  rightBlueY = 0;
  leftBlueX = 0;
  leftBlueY = windowHeight;

  yellowBottomX=0;
  yellowBottomX2=windowWidth;

  redShadowX=0;
  redShadowY=-33;
}

function draw() {






  if (frameCount >= 200 && frameCount <= 1000){
translate(-width/2,-height/2);
    print("drawing the line");
    stroke(100);
    fill(100);
    line(0, grayTriangleLine, width, 0);
    grayTriangleLine --;
  }

  else if (frameCount>=1001 && frameCount <=1800 ){
      translate(-width/2,-height/2);
      stroke(4, 92, 216,240);
      fill(4, 92, 216);

      line(0,0, rightBlueX, rightBlueY);
      rightBlueX --;
      rightBlueY ++;

  }

  else if (frameCount >1800 && frameCount <= 3200){
      translate(-width/2,-height/2);
      stroke(255, 225, 0);
      strokeWeight(5);
      fill(255, 225, 0);

      line(0,0,yellowBottomX,windowHeight);
      line(windowWidth,0,yellowBottomX2, windowHeight);
      yellowBottomX++;
      yellowBottomX2--;

  }

  else if(frameCount >3200 && frameCount <= 5500){
      stroke(255,10,10,200);
      strokeWeight(1);
      fill(255,10,10,200);

      line(redShadowX,redShadowY,0,height);
      redShadowX++;
      redShadowY = redShadowY-.44;

      if(frameCount >= 5000){
          // line(0,0,width,height);
      }

  }



}
