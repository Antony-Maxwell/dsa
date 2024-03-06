int binaryIteration(List<int>array, int target){
  int start = 0;
  int end = array.length - 1;
  while(start <= end){
    int midd = (start +end + 1) ~/2;
    if(array[midd] == target){
      return midd;
    }else if(array[midd] > target){
      end = midd -1 ;
    }else if(array[midd] < target){
      start = midd + 1;
    }
  }
  return -1;
}

int findLargestSample(List<int> array){
  int start = 0;
  int end = array.length -1;
  while(start<end){
    int mid = (start+end+1)~/2;
    if(array[mid]>start){
      start = mid;
    }else{
      end = mid;
    }
  }
  return array[start];
}

int binarySearchRecursion(List<int> list, int target, int start, int end){
  if(start > end){
    return -1;
  }
  int mid = (start + (end - start)~/2);
  if(list[mid] == target){
    return mid;
  }else if(target < list[mid]){
    return binarySearchRecursion(list, target, start, mid - 1);
  }else{
    return binarySearchRecursion(list, target, mid - 1, end);
  }
}

// int findLargest(List<int> array) {
//   int start = 0;
//   int end = array.length - 1;

//   while (start < end) {
//     int middle = (start + end + 1) ~/ 2;

//     if (array[middle] > array[start]) {
//       start = middle;
//     } else {
//       end = middle - 1;
//     }
//   }

//   return array[start];
// }


void main(){
  List<int> array = [1,2,3,4,5,6,7,8,9];
  int target = 5;
  int pos = binaryIteration(array, target);
  print('Position is : $pos');

  // int targetForBin = 7;
  // int start = 0;
  // int end = array.length;
  // int result = binarySearchRecursion(array, targetForBin, start, end);
  // print(result);

  List<int> sortedArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int largest = findLargestSample(sortedArray);
  print('The largest element in the array is: $largest');
}