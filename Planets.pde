Planet earth;
Planet sun;
Planet mars;
Planet planetX;
float time = 0;
void setup(){
  size(500,500);
  earth = new Planet(150,150, color(255,0,255), 10 );
  sun = new Planet(250,250,color(255,255,0) , 150);
  mars = new Planet(150,250, color(255,0,0), 20);
  planetX = new Planet(250,150, color(255,0,255), 10 );
  mars.cancelYMove();
  planetX.cancelXMove();
}

void calculateRender(){

  if( mars.isComingX() ){
    mars.render();
    sun.render();
  }else{
    sun.render();
    mars.render();
  }
  
  if( mars.isComingY() ){
    planetX.render();
    sun.render();
  }else{
    sun.render();
    planetX.render();
  }
}
void draw(){
  background(0);
  time = time + 0.1;
  earth.calculateNextMove(time);
  planetX.calculateNextMove(time);
  mars.calculateNextMove(time);
  calculateRender();
  
  earth.render();
  
}
