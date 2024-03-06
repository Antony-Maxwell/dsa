//problem 1
f(n){
  if(n<= 1){
    return ;
  }
  f(n-1);
  print(n);
  f(n-1);
}

//problem 2

factorial(int n){
  if(n<=1){
    return 1;
  }else{
    return n * factorial(n - 1);
  }
}

//problem 3

printNumbers(int n){
  if(n>0){
    printNumbers(n-1);
    print(n);
  }
  return;
}

void main(){
  //1st
  int n = 5 ;
  f(n);
  //2nd
  // int result = factorial(n);
  // print('factorial of $n is $result');
  // //3rd
  // printNumbers(10);
}