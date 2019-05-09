class Pipe{
  //int h is hight but hight is a taken variable in processing
  int widthOfPipe = 20;
  int h, speed, location;
  boolean bottom;
  Bird b;
  
  Pipe(int h, int speed, boolean bottom){
    this.h = h;
    this.speed = speed;
    this.bottom = bottom;
    location = width;
  }
  
  void display(){
    fill(34,139,34);
    if(bottom){
      rect(location, width, widthOfPipe, -h);
      circle(location+(widthOfPipe/2), height - h, widthOfPipe);
    }
    else{
      rect(location, 0, widthOfPipe, h);
      circle(location+(widthOfPipe/2), h, widthOfPipe);
    }
    location -= speed;
  }
  
  
  
  //returns true of object is inside boolean
  boolean hit(Bird b){
    this.b = b;
    //if b's X is inside pipes x and less ten pipes y the return true;
    //if b.x > location && b.x < widthOfPipe+location
    if(bottom){
      if((b.getX() > location && b.getX() < abs(widthOfPipe+location)) && (b.getY() > abs(h-height))){
        return true;
        }
      }
    else{
      if((b.getX() > location && b.getX() < abs(widthOfPipe+location)) && (b.getY() < h))
        return true;
    }
      
    
  return false;
  }


}
