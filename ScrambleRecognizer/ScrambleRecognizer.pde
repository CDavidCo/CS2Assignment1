String str1 = "yehdo";
String str2 = "odyeh";

int Correct=0;

Boolean rearrange = false;

for (int  y= 0; y < str1.length(); y+=1) {
  for (int x = 0; x < str2.length(); x+=1) {
    if (str1.charAt(y) == str2.charAt(x)) {
      Correct+=1;
    }
  }
  if (Correct >= str1.length()) {
    rearrange = true;
  }
  println(rearrange);
}