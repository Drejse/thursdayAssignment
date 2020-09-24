int[][] board;
int sideLength = 40;
//counts rows, every second row i want to start with black
// every other row with white
//every second one has to swap color
int brickCounter; // jeg kan ikke huske det engelske navn for brik og har ikke googlet.. derfor brick. 
void setup() {
  size(350, 350); 

  board = new int[8][8];
  
  for (int x=0; x<board.length; x++) {
    //Looping through X to find either 0 or 1 if x modulus 2 == 0 we'll assign the brick 0 otherwise the brick is 1
    if (x%2 == 0) {
      brickCounter = 0;
    } else {
      brickCounter = 1;
    }
    for (int y=0; y<board.length; y++) {
      if (brickCounter % 2 == 0) {
        //if brickcounter %2==0 we'll update the board x and y coordinate and increment the brickcounter.
        board[x][y] = 0;
        brickCounter++;
      } else {
        board[x][y] = 1;
        brickCounter++;
      }
    }
  }
}


void draw() {

  for (int x=0; x<board.length; x++) {
    for (int y=0; y<board.length; y++) {
      if (board[x][y] == 1) {
        fill(139,69,19);
      } else {
        fill(259,250,210);
      }

      rect(x*sideLength, y*sideLength, sideLength, sideLength);
    }
  }
}



//5.a Create a double int called board[][] with the length of 8 in both arrays. 
//5.b In setup() set the size to 350, 350 
//5.c In setup() create a double for loop that loops through the board and alternates between assigning the value of 0 and 1 (e.g. board[x][y] = 0;). 
//5.d In draw() create a double for loop that loops through the board and draws a rect for each element with the sideLength of 40 (e.g. rect(x * sideLength, y * sideLength, sideLength, sideLength); ) 
//5.e Before drawing the rect in the previous step, add a fill() statement, that fills with the value of 0 if the board[x][y] == 0.
