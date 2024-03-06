class MinHeap{
  List<int> heap = [];

  insert(int data){
    heap.add(data);
    heapifyUp();
  }

  heapifyUp(){
    int index = heap.length-1;
    while(index>0){
      int parentIndex = (index-1)~/2;
      if(heap[index]<heap[parentIndex]){
        swap(index, parentIndex);
        index = parentIndex;
        break;
      }
    }
  }

  swap(int i, int j){
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}