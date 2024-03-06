class Node{
  int data;
  Node? next;

  Node(this.data);
}

class Stack{
  Node? top;

  void push(int data){
    Node? newNode = Node(data);

    if(top == null){
      top = newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }

  }

  void display(){
    Node? current = top;
    while(current!=null){
      print(current.data);
      current = current.next;
    }
  }

  void pop(){
    if(top == null){
      print('Stack underflow');
    }else{
      top = top?.next;
    }
  }
}

void main(){
  Stack stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.pop();
  stack.display();
}