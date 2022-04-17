PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage robotImg;
int x =0;
int lightPos = 240+25;
PImage groundhog;

void setup(){
    size(640, 480, P2D);
    // Enter Your Setup Code Here
   bgImg = loadImage("img/bg.jpg");
   soilImg = loadImage("img/soil.png");
   lifeImg= loadImage("img/life.png");
   soldierImg = loadImage("img/soldier.png");
   robotImg = loadImage("img/robot.png");
   groundhog = loadImage("img/groundhog.png");
}

void draw() {
  strokeWeight(15.0);
  stroke(124,204,25);
  line(0,152.5,640,152.5);
  strokeWeight(5);
  stroke(255, 255, 0);
  fill(253, 184, 19);
  circle(590,50,120);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(lifeImg,150,10);
  image(soldierImg, x, 160);
  image(robotImg, 240, 240);
  image(groundhog,280,80);
  strokeWeight(10.0);
  strokeCap(ROUND);
  stroke(255,0,0);
  line(lightPos -40, 240+37, lightPos, 240+37);
  lightPos=lightPos-2;
  x=x+2;
  if ( x > 640)
    x = -80;
  image(bgImg,0,0);
}
