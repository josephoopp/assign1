PImage treasure;
PImage HP;

PImage enemy;
PImage fighter;

PImage bg1;
PImage bg2;
PImage bg3;

int bg1x;

int bg2x;

int bg3x;

int tsx;
int tsy;

int x;
int y;

int FTx;
int FTy;

void setup() {
  size(641, 482);
 // treasure
  treasure = loadImage("img/treasure.png");
  tsx = floor(random(15, 340));
  tsy = floor(random(30, 440));
 
  // HP
  HP = loadImage("img/hp.png");

 // em 
  enemy = loadImage("img/enemy.png");
  x = 30;
  y = floor(random(30, 410));


  // fighter
  fighter = loadImage("img/fighter.png");
  FTx = 580;
  FTy = 150;
  
 
  // BG img

  bg1x = 0 ;

  bg1 = loadImage("img/bg1.png");

  bg2 = loadImage("img/bg2.png");

  bg3 = loadImage("img/bg1.png");
}

void draw() {

  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 5) % 1280;
  image(bg1, bg1x, 0);


  image(bg2, bg2x, 0);

  image(bg1, bg3x, 0);





  rectMode(CENTER);
  fill(255, 0, 0);
  rect(109, 15, 190, 20);

  image(fighter, FTx, FTy);
  
  
  x = (x += 10) % width;
  image(enemy, x + 3, y);
  image(treasure, tsx, tsy);
  image(HP, 4, 4);
}
