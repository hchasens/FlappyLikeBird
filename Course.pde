import java.util.LinkedList;
import java.util.Random;

class Course{
  //counter for generating pipes
  int frequency, count;
  Bird b;
  Random r;
  LinkedList<Pipe> arr;
  //pipe generation
  int gap, variability;
  Course(Bird b, int frequency, int gap, int variability){
    this.frequency = frequency;
    this.b = b;
    this.gap = gap;
    this.variability = variability;
    arr = new LinkedList<Pipe>();
    r = new Random();
    generate();
  }
  
  boolean update(){
    if(arr.get(0).location < 0){
       arr.removeFirst();
    }
      if(count >= frequency){
        generate();
        count = 0;
      }
    count++;
    for(Pipe p : arr){
      if(p.hit(b)) return true;
      }
    return false;
  }

  void generate(){
  int x = r.nextInt(variability);
  arr.add(new Pipe(x, 2, true));
  arr.add(new Pipe(r.nextInt(abs(height-x-gap)), 2, false));
  }


  void display(){  
    for(Pipe p: arr)
      p.display();
  }

}
