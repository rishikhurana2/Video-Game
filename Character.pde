class Character0 {
  float xRects;
  float yRects;
  float x;
  float y;
  float jumpSpeed;
  float gravity;
  boolean Move;
  float groundRectsX0;
  float groundRectsX1;
  float groundRectsY0;
  float groundRectsY1;
  float rectWidth, rectHeight;
  float coinsY;
  float coinsX;
  float characterW;
  Character0() {
    coinsX = 600;
    coinsY = 420;
    x = 100;
    y = 400;
    jumpSpeed = 10;
    gravity = 5;
    groundRectsX0 = 0;
    groundRectsY0 = 490;
    groundRectsX1 = 0;
    groundRectsY1 = 520;
    rectWidth = 50;
    rectHeight = 50;
    xRects = 700;
    yRects = 440;
    characterW = 2;
  }
  void Display() {
    fill(0);
    rect(x-3, y, characterW + 3, 50);
    rect(x-5, y+50, characterW, 40);
    rect(x+2, y+50, characterW, 40);
    rect(x-5, y-30, characterW, 50);
    fill(165, 42, 42);
    ellipse(x, y, characterW + 23, 25);
    fill(0);
    rect(x, y-30, characterW, 50);
    //if (y < 330) {
    //  jumpSpeed = 0;
    //} else if ( y > 330) {
    //  jumpSpeed = 10;
    //}
    if (y > 400) {
      gravity = 0;
    } else if (y < 400) {
      gravity = 5;
    }
  }
  void Movement() {
    if (jump) {
      y = y - jumpSpeed;
      Move = true;
    }
    if (Move) {
      y+=gravity;
    }
    if (right) {
      x = x + 1;
    }
  }
  void reset() {
    setup();
  }
  void obstacles0() {
    fill(#676666);
    rect(xRects, yRects, rectWidth, rectHeight);
    if (xRects < 0 - 30) {
      xRects = 1050;
    }
    xRects = xRects - 5;
    if (x > xRects || y < yRects) {
      xRects = xRects + 5;
      reset();
    }
  }
  void ground() {
    fill(0, 200, 0);
    noStroke();
    rect(groundRectsX0, groundRectsY0, 100000000, 50);
    fill(210, 105, 30);
    rect(groundRectsX1, groundRectsY1, 100000000, 400);
    groundRectsX0 = groundRectsX0 - 5;
    groundRectsX1 = groundRectsX1 - 5;
  }
  void displayCoins() {   
    fill(255, 255, 0);
    ellipse(coinsX, coinsY, 35, 35);
    coinsX = coinsX - 5;
  }
}