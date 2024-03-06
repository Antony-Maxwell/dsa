
void main(){
  SlinkedList list = SlinkedList();
  list.addNode(10);
  list.addNode(50);
  list.addNode(30);
  list.addNode(80);
  // list.deleteFrom(80);
  // list.insertAfter(50, 60);
  // List<int> array = [1,2,3,4,5,6,7,8,9];
  // for(int i in array){
  //   list.addNode(i);
  // }
  list.display();
}
class Node{
  late int data;
  Node? next;

  Node(this.data);
}

class SlinkedList{

Node? head;
Node? tail;

void addNode(int data ){
  Node newNode = Node(data);
  if(head == null){
    head = newNode;
  }else{
    tail!.next = newNode;
  }
  tail = newNode;
}

void display (){
  if(head == null){
    print('Empty');
    return;
  }

  Node? temp = head;
  while(temp != null){
    print(temp.data);
    temp = temp.next;
  }
}

//deleting a node in linkedlist

void deleteFrom(int data){
  Node? temp = head;
  Node? prev;
  //deleting on head
  if(temp != null && temp.data == data){
    head = temp.next;
    return;
  }
  //deleting on mid 
  while (temp != null && temp.data != data){
    prev = temp;
    temp = temp.next;
  }
  prev!.next = temp?.next;
  if(temp == null){
    return;
  }
  //deleting on tail
  if(temp == tail){
    tail = prev;
    tail!.next = null;
    return;
  }
}

void insertAfter(int nextTo, int data){
  Node? newNode = Node(data);
  Node? temp = head;

  while(temp != null && temp.data != nextTo){
    temp = temp.next;
  }
  newNode.next = temp?.next;
  temp?.next = newNode;
  if(temp == null){
    return ;
  }

  if(temp == tail){
    tail!.next = newNode;
    tail = newNode;
    return;
  }
}

} 

