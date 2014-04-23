void setup(){
size(1000,1000);
background(0);}


void bunny (int x,int y){


//ellipse belly
ellipse(x, y, 125, 150);
 
//ellipse 1
ellipse(x-30, y-170, 30, 75);

//ellipse 2
ellipse(x+30, y-170, 30, 75);

//ellipse 3
ellipse(x, y-115, 70, 85);

//ellipse 4
ellipse(x+75, y-50, 50, 50);

//ellipse 5
ellipse(x-75, y-50, 50, 50);

//ellipse 8
ellipse(x+50, y + 82, 50, 50);

//ellipse 9
ellipse(x-50, y + 82, 50, 50);

//setup for face
float m = y-105;
point(x, m);
float(x);
float(y);

//curve(float(x-25), m+50, float(x -5), m,float(x+5), m, float(x+25), m+50);


//arc nose
curve(x-25, m-25, x -5, m,x+5, m, x+25, m-25);

//line from nose to mouth
line(x, m+5, x, m+10);

point(x,m);
//arc mouth bottom
bezier(x-10, m+10, x-7, m+15, x-4, m +15, x, m+10);
bezier(x, m+10, x+4, m+15, x+7, m +15, x+10, m+10);

//eyes ellipse
fill(0, 30, 255, 20);
ellipse(x-15, m-15,7,7);
ellipse(x+15, m-15,7,7);

//inner eyes
fill(0);
ellipse(x-14.4, m-15,2,2);
ellipse(x+14.5, m-15, 2,2);

//belly ellipse
fill(#ffc0cb);
ellipse(x,y,100,125 /*, hex value*/);


fill(255);
}


void draw(){
  
  if (mousePressed){
    bunny(mouseX,mouseY);
  }}
