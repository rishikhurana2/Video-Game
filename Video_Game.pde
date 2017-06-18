Character0 c;
Character0 coins;
Character0 obstacles;

PImage AngryAsianDad;

int gameStage = 0;
boolean jump;
boolean right;
void setup() {
  AngryAsianDad = loadImage("Angry Asian Dad.jpg");
  size(800, 800);
  c = new Character0();
  coins = new Character0();
  obstacles = new Character0();
  textAlign(CENTER);
}
void draw() {
  if (gameStage == 0){
    background(AngryAsianDad);
    textSize(45);
    fill(255,255,0);
    text("ANGRY ASIAN DAD", 400, 100);
    if(mousePressed){
     gameStage = 1; 
    }
  }
  if (gameStage == 1){
  background(#02ACDE);
  c.Display();
  c.Movement();
  c.ground();
  //coins.displayCoins();
  obstacles.obstacles0();
  }
}
void keyPressed() {
  if (key == ' ') {
    jump = true;
  }
  if (key == 'd') {
    right = true;
  }
}
void keyReleased() { 
  if (key == ' ') {
    jump = false;
  }
  if (key == 'd') {
    right = false;
  }
}