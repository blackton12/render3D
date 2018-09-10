class P4Vector{
  
  float[] vec = new float[4];
  
  P4Vector(){}
  
  P4Vector(float x, float y, float z, float w){
    this.vec[0] = x;
    this.vec[1] = y;
    this.vec[2] = z;
    this.vec[3] = w;
  }
  
  P4Vector(float[] new_v){
    for(int i = 0; i < new_v.length; ++i){
      this.vec[i] = new_v[i];
    }
  }
  
  float[] get_array(){
    return this.vec;
  }
  
  void update(P4Vector new_v){
    float[] v = new_v.get_array();
    for(int i = 0; i < v.length; ++i){
      this.vec[i] = v[i];
    }
  }
  
}
