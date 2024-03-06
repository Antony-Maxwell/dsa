// List<int>bubblesort(List<int>array){
//   for(int i=0;i<array.length-1;i=i+1){
//     for(int j=0;j<array.length-1;j=j+1){
//       if(array[j]>array[j+1]){
//         int temp = array[j];
//         array[j] = array[j+1];
//         array[j+1] = temp;
//       }
//     }
//   }
//   return array;
// }

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

  void pop(){
    if(top == null){
      print('Stack is null');
    }else{
      top = top!.next;
    }
  }

  void display(){
    Node? current = top;
    while(current!=null){
      print(current.data);
      current = current.next;
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
//   List<int>array=[23,56,2,6,787,34,9,96];
//   List<int>res = bubblesort(array);
//   print(res);
// }
}