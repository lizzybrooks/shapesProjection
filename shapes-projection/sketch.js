
let grayTriangleLine;

//second phase variables
let rightBlueX;
let rightBlueY;
let leftBlueX;
let leftBlueY;

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(220);
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
}

function draw() {




  if (frameCount >= 200 && frameCount <= 1000){

    print("drawing the line");
    stroke(100);
    fill(100);
    line(0, grayTriangleLine, width, 0);
    grayTriangleLine --;
  }

  else if (frameCount>=1001 && frameCount <=1800 ){
      stroke(4, 92, 216);
      fill(4, 92, 216);

      line(0,0, rightBlueX, rightBlueY);
      rightBlueX --;
      rightBlueY ++;





  }


}
