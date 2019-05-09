import java.util.ArrayList;

int length = 600;
int width = 600;
//blue sky
Sky s = new Sky(new Color(135,206,250));
Bird b = new Bird(10);
Course c = new Course(b, 60, 200, 300);
boolean hasWon = false;

void setup(){
  //size(width, length);
  size(600, 600);
}

void draw(){
  if(!hasWon){
    s.display();
    c.display();
    b.display();
    hasWon = c.update();
  }

}

void keyPressed(){
  b.jump();
}
