PImage treasure,HP,enemy,fighter,bg1,bg2,bg3;
int bg1x,bg2x,bg3x,tsx,tsy,x,y,FTx,FTy,HPx;

void setup() {
  size(641, 482);
 // treasure
  treasure = loadImage("img/treasure.png");
  tsx = floor(random(15, 340));
  tsy = floor(random(30, 440));
 
  // HP
  HP = loadImage("img/hp.png");
  HPx = floor(random(20,200));
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
}
void draw() {
  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 5) % 1280;
  image(bg1, bg1x, 0);
  image(bg2, bg2x, 0);
  image(bg1, bg3x, 0);
  
  fill(255, 0, 0);
  rect(10, 15, HPx, 10);

  image(fighter, FTx, FTy);
  x = (x += 10) % width;
  image(enemy, x + 3, y);
  image(treasure, tsx, tsy);
  image(HP, 4, 4);
}
