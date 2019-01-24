/* Find all prime numbers up to some number*/

/*This brtue force method can be used for relatviely small numbers e.g. up to 1000000 */

/* Some resources : 
 http://www.stoimen.com/blog/2012/05/08/computer-algorithms-determine-if-a-number-is-prime/
 
 */

int checkTo = 1000000; //find primes up to this number
int startTime = millis();
boolean verbose = false; //print numbers and messages

void setup() {
  for (int i=0; i<checkTo; i+=1) {
    if (isPrime(i)) {
      if (verbose) {
        println(i+" is prime");
      }
    } else {
      if (verbose) {
        println(i+" is not prime");
      }
    }
  }
  println("It took "+(millis()-startTime)+" ms to check "+checkTo+" numbers");
}

boolean isPrime(int n) {
  int q = 2;
  if (n == 0 || n == 1) {
    return false;
  }
  if (n == 2) {
    return true;
  }
  //if n is not prime, then p*q = n
  //assume p >= sqrt(n) must be false, so q < sqrt(n) must be true
  //therefore eonly need to check up to sqrt(n) to find some q
  float sqrtN = sqrt(n);
  while (q <= sqrtN) {
    if (n % q == 0) {
      if (verbose) {
        println(""+n+" % "+q+" is equal to 0");
      }
      return false;
    }
    q++;
  }

  return true;
}

