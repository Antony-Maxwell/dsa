 quickSort(List<int>array, int low, int high){
  if(low<high){
    int pivotIndex = pivotPartition(array,low,high);
    quickSort(array, low, pivotIndex-1);
    quickSort(array, pivotIndex+1, high);
  }

}

int pivotPartition(List<int> array, int low, int high) {
  int pivot = array[high];
  int i = low-1;
  for(int j =low;j<high;j=j+1){
    if(array[j]<=pivot){
      i++;
      int temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
  }
  int temp = array[i+1];
  array[i+1] = array[high];
  array[high] = temp;

  return i+1;
}

void main(){
  List<int> array = [32,45,5,78,856,8,2,75,97,474];
  print('Original array is $array');
  quickSort(array, 0, array.length-1);
  print('Sorted array is $array');


}