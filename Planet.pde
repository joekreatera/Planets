class Planet{

  float x = 0;
  float y = 0;
  float s = 0;
  float centerX = 0;
  float centerY = 0;
  color c;
  float moveX;
  float moveY;
  int doMoveX = 1;
  int doMoveY = 1;
  public Planet(int px, int py, color pc, int size){
    centerX = px;
    centerY = py;
    c = pc;
    s = size;
  }
  
  void cancelXMove(){
    doMoveX = 0;
  }
  void cancelYMove(){
    doMoveY = 0;
  }
  
  
  void calculateNextMove(float time){
    moveX = cos(time);
    moveY = sin(time);
    x = doMoveX*(200*(sin(time)+1)/2);
    y = doMoveY*(200*(cos(time)+1)/2);
  }
  
  public boolean isComingX(){
    if( moveX < 0 ){
      return true;
    }
    return false;
  }
  public boolean isComingY(){
    if( moveY < 0 ){
      return true;
    }
    return false;
  }
  
  void render(){
    fill(c);
    ellipse(centerX + x, + centerY + y,s,s);
  }

}
