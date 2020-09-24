void setup() {

  int number[] ={8,9,1,5,11,13,7,4,6,3,12,10,2};
  int temp;
  boolean fixed=false;
  
  
  //while fixed == false run next line
  while (fixed==false) {
    fixed=true;
    
    for (int i=0; i<number.length-1; i++) {

      if (number[i] > number[i+1]) {
        //if 9 > 1 
        temp = number[i+1];
        //store 1 in temp
        number[i+1]=number[i];
        //put the 9 in 1's place
        number[i]=temp;
        fixed=false;
      }
    }
    
  }
  for(int i = 0; i<number.length; i++){
    println(number[i]);
  }
  
}
