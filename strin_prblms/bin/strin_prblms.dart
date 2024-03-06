String replaceAlphabet(String input, int n) {
  return String.fromCharCodes(input.runes.map((int code) {
    if (code >= 97 && code <= 122) {
      return ((code - 97 + n) % 26 + 97);
    } else {
      return code;
    }
  }));
}

String compressString(String input) {
  if (input.isEmpty) {
    return '';
  }

  StringBuffer result = StringBuffer();
  int count = 1;

  for (int i = 1; i < input.length; i++) {
    if (input[i] == input[i - 1]) {
      count++;
    } else {
      result.write('${input[i - 1]}$count');
      count = 1;
    }
  }
  result.write('${input[input.length - 1]}$count');

  return result.toString();
}

String reverseString(String input){
  return input.split('').reversed.join();
  //O(n)ST
}

void main() {
  String original = "End of the world";
  String reversed = reverseString(original);
  print(reversed);
  // String input = "abcdef";
  // int n = 2;
  // String result = replaceAlphabet(input, n);
  // print(result);
  // String char = "AAABBC";
  // String output = compressString(char);
  // print(output);
}
