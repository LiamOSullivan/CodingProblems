/* Example of using FileWriter to create and write to a text file
 Adds FileReader to read from created file.
 FileReader is meant for reading streams of characters. 
 For reading streams of raw bytes, consider using a FileInputStream.
 This example does not use an intermediate, in-memory File object.
 */

import java.io.FileWriter;
import java.io.FileReader;
FileWriter writer;
FileReader reader;
void setup() {
  //FileWriter throws and IOException, so need to wrap in error handling
  try {
    writer= new FileWriter(sketchPath("")+"data/FRtext.txt");
    writer.write("My example filewriter text");
    writer.flush();
    writer.close();
    println("File created with FileWriter");
  } 
  catch (IOException e) {
    println("FileWriter Error");
  }
  try {
    reader= new FileReader(sketchPath("")+"data/FRtext.txt"); 
    char [] a = new char[50];
    for (int i=0; i<a.length; i+=1) { 
      a[i]='*'; //init every character in array
    }
    reader.read(a); // reads the content to the array
    println("File read with FileReader");
    println("char array has size "+a.length);
    println("File reads:");
    for (char c : a) //for every character in array
      print(c); //prints the characters one by one
    reader.close();
  }
  catch (IOException e) {
    println("FileReader Error");
  }
  exit();
}

