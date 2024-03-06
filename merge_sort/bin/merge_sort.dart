List<int> mergeSort(List<int>array){
  if(array.length <= 1){
    return array;
  }
  int middle = array.length~/2;
  List<int> firstHalf = array.sublist(0,middle);
  List<int> secondHalf = array.sublist(middle, array.length);
  return jointArray(mergeSort(firstHalf),mergeSort(secondHalf));
}

List<int> jointArray(List<int>firstHalf, List<int>secondHalf){
  List<int> newArray = List<int>.filled(firstHalf.length + secondHalf.length, 0);
  int i = 0;
  int j = 0;
  int k = 0;

  while(i<firstHalf.length && j<secondHalf.length){
    if(firstHalf[i]<=secondHalf[j]){
      newArray[k] = firstHalf[i];
      i++;
      k++;
    }else{
      newArray[k] = secondHalf[j];
      j++;
      k++;
    }
  }

  while(i<firstHalf.length){
    newArray[k] = firstHalf[i];
    k++;
    i++;
  }
  while(j<secondHalf.length){
    newArray[k] = secondHalf[j];
    k++;
    j++;
  }
  return newArray;
}

void main(){
  List<int> array = [12,3,4,1,76,453,234,2,297,89];
  print('Original array is : $array');
  List<int> result = mergeSort(array);
  print('Sorted array is :$result');
}