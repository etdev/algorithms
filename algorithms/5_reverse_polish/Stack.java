public class Stack{

  public int size;
  public String[] elements;

  public Stack(){
    this.elements = new String[1];
    this.size = 0;
  }

  public void push(String item){

    if (this.size > this.elements.length-1){
      doubleArray();
    }
      this.elements[this.size] = item;
      this.size++;
  }

  public String pop(){
    if (size > 0){
      String popped = this.elements[size-1];
      this.size--;
      if (size < this.elements.length/4){
        halveArray();
      }
      return popped;
    }
    else { return "ERROR: no elements to pop"; }
  }

  public boolean isEmpty(){
    return false;
  }

  public int size(){
    return this.size;
  }

  public void doubleArray(){
    String[] new_arr = new String[this.elements.length*2];
    for(int i=0; i<this.size; i++){
      new_arr[i] = this.elements[i];
    }
    this.elements = new_arr;
  }

  public void halveArray(){
    String[] new_arr = new String[this.elements.length/2];
    for(int i=0; i<this.size; i++){
      new_arr[i] = this.elements[i];
    }
    this.elements = new_arr;
  }

  public String toString(){
    if(size<1){ return "[]"; }
    String out = "[";
    for(int i=0; i<this.size; i++){
      out += this.elements[i] + ",";
    }
    out = out.substring(0, out.length()-1);
    out += "]";
    return out;
  }

}
