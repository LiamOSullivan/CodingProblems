/* Use of String, StringBuffer, StringBuilder */

/*

 */


void setup() {

  //String
  String str1 = "abc"; //String is immutable
  str1.concat("d"); //creates a new String
  println("str1 is "+str1); //does not show update
  println("str1.concat(\"d\") is "+str1.concat("d")); //shows updated String

  //StringBuffer has better perfromance as it doesn't create additional new objects
  StringBuffer str2 = new StringBuffer("abc"); //StringBuffer is not immutable
  str2.append("d"); //use append() rather than concat()
  println("str2 is "+str2); //shows update

  //StringBuilder acts like StingBuffer but is not synchronised
  StringBuilder str3 = new StringBuilder("abc"); //StringBuilder is not immutable
  str3.append("d"); //use append() rather than concat()
  println("str3 is "+str3); //shows update
  
  
}

