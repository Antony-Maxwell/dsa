void selectionSort(List<int>array){
  for(int i =0;i<array.length;i++){
    int small = i;
    for(int j=i+1;j<array.length;j++){
      if(array[j]<array[small]){
        small = j;
      }
    }
    int temp = array[small];
    array[small] = array[i];
    array[i] = temp;
  }
}

void main(){
  List<int> array = [12,45,22,23,74,10,58,85,2];
  print('Original array is : $array');

  selectionSort(array);
  print('Sorted list are : $array');
}