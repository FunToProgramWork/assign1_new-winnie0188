PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage robotImg;
PImage soldierImg;
PImage groundogImg;

int x =0;
int lightPos = 240+25;
 

void setup() {
	size(640, 480, P2D);
	bgImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  lifeImg = loadImage("img/life.png");
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  groundogImg = loadImage("img/groundhog.png");
}

void draw() {
	image(bgImg, 0, 0);
  image(soilImg,0, 160);
  image(lifeImg,10, 10);
  image(lifeImg,80,10);
  image(lifeImg,150, 10);
  image(soldierImg, 0, 400);
  image(robotImg, 240, 240);
   
  stroke(124, 204, 25);//草地,顏色
  line(0, 160, 640, 160);//草地,直線
  strokeWeight(15);//草地,寬度
  image(groundogImg,240,80);
  
  
  fill(255, 255, 0);//外圓,填滿
  stroke(255, 255, 0); //邊線,填滿
  strokeWeight(5);//寬度
  ellipse(590, 50, 120, 120);//640,480
  
  fill(253, 184, 19);//內圓
  ellipse(590,50, 120, 120);
  
  strokeWeight(10.0);
  strokeCap(ROUND);
  stroke(255,0,0);
  line(lightPos -40, 240+37, lightPos, 240+37);
  lightPos=lightPos-2;
  
  
  x=x+1;
  if ( x > 640)
    x = -80;
  
}
