Point[] points = new Point[8];
Matrix Proj = new Matrix();

void setup(){
  size(800, 600, P2D);
  background(51);
  
  points[0] = new Point(300, 200, 0);
  points[1] = new Point(500, 200, 0);
  points[2] = new Point(500, 400, 0);
  points[3] = new Point(300, 400, 0);
  points[4] = new Point(300, 200, -200);
  points[5] = new Point(500, 200, -200);
  points[6] = new Point(500, 400, -200);
  points[7] = new Point(300, 400, -200);
  
  float[][] mat = {{1,0,0}, {0,1,0}, {0,0,1}};
  Proj.update(mat);
  Proj.print_matrix();
  
  for(int i = 0; i < points.length; ++i){
    points[i].update(Proj.PV_mult(points[i].get_vec()));
  }
}

void draw(){
  stroke(255);
  strokeWeight(5);
  
  for(int i = 0; i < points.length; ++i){
    points[i].show();
  }
  
  strokeWeight(2);
  for(int i = 0; i < points.length; ++i){
    if(i == points.length - 1) line(points[0].pos.x, points[0].pos.y, points[i].pos.x, points[i].pos.y);
    else line(points[i].pos.x, points[i].pos.y, points[i+1].pos.x, points[i+1].pos.y);
  }
}
