int findNumb(List<int>array, int target){
  int start =0;
  int end = array.length-1;
  while(start<=end){
    int mid = (start+end+1)~/2;
    if(array[mid] == target){
      return mid;
    }else if(array[mid]>target){
      start = mid+1;
    }else if(array[mid]<target){
      end = mid-1;
    }
  }
  return -1;
}

class Node{
  late int data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class SlinkedLIst{
  Node? head;
  Node? tail;

  void addNode(int data){
    Node? newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void append(int data){
    Node? newNode = Node(data);

    if(head == null){
      head = newNode;
    }else{
      tail!.next = newNode;
      tail = newNode;
    }
  }

  void delete(int target){
    Node? temp = head;
    Node? sub;

    while(temp!= null && temp.data== target){
      head = temp.next;
    }

    while(temp != null && temp.data != target){
      sub = temp;
      temp = temp.next;
    }

    sub!.next = temp!.next;
    temp.next!.prev = sub;

  }

}