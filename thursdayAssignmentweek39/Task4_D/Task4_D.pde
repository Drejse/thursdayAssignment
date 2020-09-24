void setup(){

  recursion(10);
}


void recursion(int a){
 
  println(a);
  if(a < 0){
   exit(); // no idea why it prints -1 to  10 again tho
  }else {
   a -= 1;
   recursion(a);
   println(a);
  }
  
}
