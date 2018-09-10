class Point {
  
  PVector pos = new PVector();
  
  Point(){}
  
  Point(float x, float y, float z){
    this.pos.set(x, y, z);
  }
  
  Point(PVector new_v){
    this.pos = new_v;
  }
  
  void show(){
    point(this.pos.x, this.pos.y, this.pos.z);
  }
  
  void update(PVector new_v){
    this.pos.set(new_v);
  }
  
  PVector get_vec(){
    return this.pos;
  }
}
