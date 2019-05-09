class Sky{
  Color c;
  
    Sky(Color c){
    this.c = c;
    }
  
  void display(){
    background(c.getR(), c.getG(), c.getB());
  }
}
