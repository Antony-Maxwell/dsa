List<int>bubbleSort(List<int>array){
  for(int i =0;i<array.length-1; i = i+1){
    for(int j=0;j<array.length-1;j=j+1){
      if(array[j]>array[j+1]){
        int temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
      }
    }
  }
  return array;
}

void main(){
  List<int>array = [4,5,3,6,1,2,1,9,8,7];
  List<int> result = bubbleSort(array);
  print(result);
}