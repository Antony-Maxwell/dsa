class Node{
  int data;
  Node? next;

  Node(this.data);
}

class Queue{
  Node? front;
  Node? rear;

  void enqueue(int data){
    Node? newNode = Node(data);
    if(rear == null){
      front = rear = newNode;
      return;
    }
    rear!.next = newNode;
    rear = newNode;
  }

  void dequeue(){
    if(front == null){
      print('Empty is our node');
    }
    front = front?.next;
  }

  void display(){
    Node? current = front;
    while(current!=null){
      print(current.data);
      current = current.next;
    }
  }
}

void main(){
  Queue queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);
  queue.dequeue();
  queue.display();
}