boolean didSwap=true;
int numNums=50;
int temp;
int[] testArray=new int[numNums];

for (int i=0; i<numNums; i=i+1) {
  testArray[i]=int(random(100));
}

//println(testArray);

//keep running through the swap passes until didSwap stays false. 

while (didSwap==true) {
  didSwap = false;
  for (int i=0; i<numNums-1; i++) {
    if (testArray[i]>testArray[i+1]) {
      temp = testArray[i+1];
      testArray[i+1]=testArray[i];
      testArray[i]=temp;
      didSwap = true;
    }// end if
  }// end for
}// end while
println(testArray);