class Bird{
  int x, y, jumpVal;
  double v;
  
  //60 pix is one meeter
  double acc = 9.8/60;
  
  Bird(int jumpVal){
    this.jumpVal = jumpVal;
    x = 40;
    y = length/2;
  }

  void setX(int x){
    this.x = x;
  }
  
  void setY(int y){
    this.y = y;
  }
  
  int getY(){
    return y;
  }
  
  int getX(){
    return x;
  }
  
  void jump(){
    v += 5;
  }
  
  
  void display(){
    fill(255, 204, 0);
    circle(x, y, 30);
    v -= acc;
    y -= v;
    if(y >= length)
      v = abs((float)v) * 0.80;
    
  }

}
