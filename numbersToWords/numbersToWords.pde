/*Convert  a number to words*/

/* 
 Takes an integer number and converts it to a String. 
 This works on all numbers from -999 to 999.
 */


int number, bound = 1001;


String [] units = {
  " ", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"
};

String [] tens = {
  " ", " ", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"
};

void setup() {
  for (int i=-bound; i<bound; i+=1) {
    print(i+"\t");
    printWords(i);
    println();
  }
}

void printWords(int number) {
  if (number==0) {
    print("zero");
  } else if (number<0) {
    print("minus ");
    printWords(-number);
  } else if (number<20) {
    print(units[number]);
  } else if (number<100) {
    int div = int(number/10); 
    int mod = number%10;
    print(tens[div]);
    if (mod>0) { 
      print(" "+units[mod]);
    }
  } else if (number<1000) {
    int div = int(number/100);
    print(units[div]+(" hundred "));
    int mod = number%100;
    if (mod!=0) {
      print("and ");
      printWords(mod);
    }
  } else {
    print("number outside range!");
  }
}

