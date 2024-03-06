void main(){
  int t = 10;
  int a;
  int b;
  List nigga = [1,5,7,5,6,8,];
  for(int i = 0 ; i<nigga.length -1; i= i+1){
    for(int j = i+1; j<nigga.length; j = j+1){
      if(nigga[i]+nigga[j] == t){
        a = nigga[i];
        b = nigga[j];
        return print('the values are $a and $b');
      }
    }
  }
}