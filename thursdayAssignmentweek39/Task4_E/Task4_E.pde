void setup(){
  
  fibonacci(22);
}


void fibonacci(int N){
  int a = 0, b = 1;
  
  int counter = 0;
  
  while(counter < N){
   //printing the number
    println(a + " ");
    //swap
    int c = b + a;
    a = b;
    b = c;
    counter = counter + 1;
  }


}
