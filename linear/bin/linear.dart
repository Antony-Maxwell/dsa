bool linearSearch(List<int> array, int target) {
  for (int num in array) {
    if (num == target) {
      return true;
    }
  }
  return false;
}

int linearSearchIndex(List<int> array, int target) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == target) {
      return i;
    }
  }
  return -1;
}

bool linearSearchString(List<String> words, String target) {
  for (String word in words) {
    if (word == target) {
      return true;
    }
  }
  return false;
}


void main() {
  List<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
  int target = 6;

  if (linearSearch(numbers, target)) {
    print("$target found in the list.");
  } else {
    print("$target not found in the list.");
  }

  List<int> numbersForIdx = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
  int targetForIdx = 9;

  int index = linearSearchIndex(numbersForIdx, targetForIdx);

  if (index != -1) {
    print("Element $targetForIdx found at index $index.");
  } else {
    print("Element $targetForIdx not found in the list.");
  }

  List<String> fruits = ["apple", "banana", "orange", "grape", "kiwi"];
  String targetForFruit = "orange";

  if (linearSearchString(fruits, targetForFruit)) {
    print("$targetForFruit found in the list.");
  } else {
    print("$targetForFruit not found in the list.");
  }
}
