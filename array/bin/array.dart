//1st problem
List<int> reverseArray(List<int> array) {
  return List.from(array.reversed);
}

//2nd problem
bool searchElement(List<int> array, int target) {
  for (int num in array) {
    if (num == target) {
      return true;
    }
  }
  return false;
}

//3rd problem
List<int> rotateArray(List<int> array, int steps) {
  int length = array.length;
  steps = steps % length;
  List<int> rotatedArray = List<int>.filled(length, 0);
  for (int i = 0; i < length; i++) {
    int newIndex = (i + steps) % length;
    rotatedArray[newIndex] = array[i];
  }
  return rotatedArray;
}
void main() {
  //1st problem
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Reversed array: ${reverseArray(numbers)}");
  print("___________________");

  //2nd problem
  List<int> numbersTofind = [1, 2, 3, 4, 5];
  int target = 3;
  print("Element $target found: ${searchElement(numbersTofind, target)}");
  print("___________________");

  List<int> numbersToRotate = [1, 2, 3, 4, 5];
  int steps = 2;
  List<int> rotatedArray = rotateArray(numbersToRotate, steps);
  print("Original array: $numbersToRotate");
  print("Rotated array by $steps steps: $rotatedArray");
  print("___________________");
}
