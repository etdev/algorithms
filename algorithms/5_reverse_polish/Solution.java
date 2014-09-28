public class Solution {

  Stack operands;
  Stack operators;

  public int evalRPN(String[] tokens) {
    operands = new Stack();
    operators = new Stack();

    for(int i=0; i<tokens.length; i++){
      if (isOperator(tokens[i])){
        operators.push(tokens[i]);
      }
      else { operands.push(tokens[i]); }

      if (canDoOp()){
        doOp();
      }
    }
    return Integer.parseInt(operands.pop());
  }

  public boolean isOperator(String s){
   return (s.equals("+") || s.equals("-") || s.equals("*") || s.equals("/"));
  }

  public boolean canDoOp(){
    return ( (operands.size() >= 2) && (operators.size() >= 1) );
  }

  public void doOp(){
    int operandB = Integer.parseInt(operands.pop());
    int operandA = Integer.parseInt(operands.pop());
    int result;
    String operator = operators.pop();
    if (operator.equals("+")) { result = operandA + operandB; }
    else if(operator.equals("-")) { result = operandA - operandB; }
    else if(operator.equals("*")) { result = operandA * operandB; }
    else { result = operandA / operandB; }
    operands.push("" + result);
  }

  public class Stack{

    public int size;
    public String[] elements;

    public Stack(){
      this.elements = new String[2];
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
}
