void main(){
  DlinkedList list = DlinkedList();

  // List<int> arrayElements = [1,2,3,4,5,6,7,8,9];
  // list.convertArrToLnkLst(arrayElements);

  list.addNode(2);
  list.addNode(4);
  list.addNode(6);
  list.addNode(8);
  list.addNode(10);
  // list.addNode(10);
  // list.addNode(10);
  list.addNode(12);
  // list.insetAfter(2, 11);
  // list.insertBefore(2, 3);
  // list.removeDuplicates();
  list.delete(10);
  list.display();
  // list.reversedisplay();
}

class Node{
  late int data;
  Node? next;
  Node? prev;

  Node(this.data);

}

class DlinkedList{
  Node? head;
  Node? tail;

  void addNode(int data){
    Node newNode = Node(data);

    if(head == null){
      head = newNode;
    }else{
      tail!.next = newNode;
      newNode.prev = tail;
    }

    tail = newNode;
  }

  void display(){
    Node? temp = head;
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }

  void reversedisplay(){
    Node? temp = tail;
    while(temp != null){
      print(temp.data);
      temp = temp.prev;
    }
  }

  void insetAfter(int nextTo, int data){
    Node? newNode = Node(data);
    Node? temp = head;

    while(temp != null && temp.data != nextTo){
      temp = temp.next;
    }
    if(temp == null){
      return;
    }
    if(temp == tail){
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  void insertBefore(int beforOf, int data){
    Node? newNode = Node(data);
    Node? temp = tail;

    while(temp != null && temp.data != beforOf){
      temp = temp.prev;
    }
    newNode.prev = temp?.prev;
    newNode.next = temp;
    temp?.prev?.next = newNode;
    temp?.prev = newNode;

    if(temp == null){
      return;
    }
    if(temp == head){
      head!.next = newNode;
      head = newNode;
      return;
    }
  }

  void delete(int data){
    Node? temp = head;
    Node? dummy ;

    if(temp != null && temp.data == data){
      head = temp.next;
    }

    while(temp != null && temp.data != data){
      dummy = temp;
      temp = temp.next;
    }
    dummy!.next = temp?.next;

    if(temp == null){
      return;
    }

    if(temp == tail){
      tail = dummy;
      tail!.next = null;
      return;
    }
  }

  void prepend(int data){
    Node? newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  void append(int data){
    Node? newNode = Node(data);
    if(head == null){
      head = newNode;
      tail = newNode;
    }else{
      newNode.prev = tail;
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void removeDuplicates(){
    Node? current = head;
    while(current != null){
      Node? next = current.next;
      while(next != null && next.data == current.data){
        next = next.next;
      }

      current.next = next;

      if(next == tail){
        tail = current;
      }
      current = next;
    }

  }

  void convertArrToLnkLst(List<int>array){
    for(int data in array){
      addNode(data);
    }
  }
}