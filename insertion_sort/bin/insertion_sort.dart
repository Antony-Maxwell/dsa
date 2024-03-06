List<int> insertionSort(List<int>array){
  for(int i = 1; i<array.length; i = i+1){
    int current = array[i];
    int j = i-1;
    while(j>=0 && array[j]>current){
      array[j+1] = array[j];
      j--;
    }
    array[j+1] = current;
  }

  return array;

}

void main(){
  List<int> array = [30,2,41,56,12,11,22,41];
  List<int> result = insertionSort(array);
  print(result);

}