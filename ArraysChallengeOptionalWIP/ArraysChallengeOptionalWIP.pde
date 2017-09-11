int size= 101;
int [] arrays = new int [size];
int[] t ;
void setup(){  
for (int g=0; g<101; g++) { // this loop initializes all the values using the random function
arrays[g] = int(random(0,10001));
}// end for
t = sort(arrays);
println(t); }// end setup