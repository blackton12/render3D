class Matrix{
  
  float[][] mat;
  
  Matrix(){}
  
  Matrix(float[][] new_m){
    this.mat = new_m;
  }
  
  PVector PV_mult(PVector vec){
    float[] v = vec.array();
    float[] res = new float[v.length];
    
    for(int i = 0; i < this.mat.length; ++i){
      for(int j = 0; j < this.mat[i].length; ++j){
        res[j] += this.mat[i][j] * v[j];
      }
    }
    
    return new PVector(res[0], res[1], res[2]);
  }
  
  P4Vector P4V_mult(P4Vector vec){
    float[] v = vec.get_array();
    float[] res = new float[v.length];
    
    for(int i = 0; i < this.mat.length; ++i){
      for(int j = 0; j < this.mat[i].length; ++j){
        res[j] = this.mat[i][j] * v[j];
      }
    }
    
    return new P4Vector(res[0], res[1], res[2], res[3]);
  }
  
  void update(float[][] new_m){
    this.mat = new float[new_m.length][new_m[0].length];
    
    for(int i = 0; i < new_m.length; ++i){
      for(int j = 0; j < new_m[i].length; ++j){
        this.mat[i][j] = new_m[i][j];
      }
    }
  }
  
  void print_matrix(){
    for(int i = 0; i < this.mat.length; ++i){
      print("{");
      for(int j = 0; j < this.mat[i].length; ++j){
        print(this.mat[i][j]);
        if (j != this.mat[i].length - 1) print(", ");
      }
      print("}");
      print("\n");
    }
  }
}
