color[] rainbow = {#ab7bc9, #abe5f7, #a4d48c, #f2ee7e, #f5cc6e, #e64747}; 
int x1 = 0;
int y1 = 0;
int curvax1 = 1000;
int curvay1 = -400;
int x2 = 600;
int y2 = 920;
int curvax2 = 800;
int curvay2 = 800;
int grosor = 80;
int j = 5;
PImage cara = loadImage("happy.png");
PImage logo = loadImage("groovy.png");
PImage star = loadImage("star.png");

size(600,900);

stroke(rainbow[0]);
strokeWeight(grosor);
curve(curvax1,curvay1,x1,y1,x2,y2,curvax2,curvay2);

for(int i = 0; i < 6; i++){
  smooth();
  stroke(rainbow[i]);
  strokeWeight(grosor);
  curve(curvax1+grosor*i,curvay1,x1+grosor*i,y1,x2+grosor*i,y2,curvax2+grosor*i,curvay2);
 }

grosor = 79;
x1 = 0;
y1 = 0;
curvax1 = 0;
curvay1 = 70;
x2 = 610;
y2 = 0;
curvax2 = 900;
curvay2 = 300;

for(int i = 0; i < 6; i++){
  smooth();
  stroke(rainbow[i]);
  strokeWeight(grosor);
  curve(curvax1,curvay1+grosor*i,x1,y1+grosor*i,x2,y2+grosor*i,curvax2,curvay2+grosor*i);
 }

x1 = 600;
y1 = 20;
curvax1 = 1000;
curvay1 = 600;
x2 = 0;
y2 = 920;
curvax2 = -800;
curvay2 = 800;
grosor = 50;

for(int i = 0; i < 6; i++){
  smooth();
  stroke(rainbow[j]);
  j -= 1;
  strokeWeight(grosor);
  curve(curvax1+grosor*i,curvay1,x1+grosor*i,y1,x2+grosor*i,y2,curvax2+grosor*i,curvay2);
 }
 
x1 = -200;
y1 = 700;
curvax1 = 1000;
curvay1 = -400;
x2 = 600;
y2 = 920;
curvax2 = 800;
curvay2 = 800;
grosor = 50;
j = 5;

size(600,900);

stroke(rainbow[0]);
strokeWeight(grosor);
curve(curvax1,curvay1,x1,y1,x2,y2,curvax2,curvay2);

for(int i = 0; i < 6; i++){
  smooth();
  stroke(rainbow[i]);
  strokeWeight(grosor);
  curve(curvax1+grosor*i,curvay1,x1,y1-grosor*i,x2+grosor*i,y2,curvax2+grosor*i,curvay2);
 }
 
x1 = -400;
y1 = 0;
curvax1 = 100;
curvay1 = -400;
x2 = 300;
y2 = 920;
curvax2 = 800;
curvay2 = 800;
grosor = 43;
j = 5;

size(600,900);

stroke(rainbow[0]);
strokeWeight(grosor);
curve(curvax1,curvay1,x1,y1,x2,y2,curvax2,curvay2);

for(int i = 0; i < 6; i++){
  smooth();
  stroke(rainbow[i]);
  strokeWeight(grosor);
  curve(curvax1+grosor*i,curvay1,x1+grosor*i,y1,x2+grosor*i,y2,curvax2+grosor*i,curvay2);
 }

star.resize(20,20);
for(int i = 0; i < 50; i++){
  tint(255, 126);
  image(star, random(0, 500),random(0,800));
 }
 
tint(255, 255);
cara.resize(200,100);
for(int i = 0; i < 5; i++){
  image(cara, 430, 230 + i*100);
 }

logo.resize(400,150);
image(logo, 60,370);

 for(int i = 0; i < 300; i++){
   for(int k = 0; k < 450; k++){
     strokeWeight(0.5);
     stroke(0);
     point(2*i,2*k);
   }
 }

noStroke();
fill(0);
rect(0,0,600,20);
rect(0,0,20,900);
rect(0,880,600,20);
rect(580,0,20,900);
