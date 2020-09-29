

void setup() {


  rndElem();
}


void rndElem() {

  int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
  int index = int(random(arr.length));
  println(arr[index]);
}
