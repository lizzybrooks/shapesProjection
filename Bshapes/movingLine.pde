
class movingLine{
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
