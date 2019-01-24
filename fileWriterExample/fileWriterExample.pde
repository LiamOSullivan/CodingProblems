/* Example of using FileWriter to create and write to a text file*/

import java.io.FileWriter;
FileWriter writer;

void setup() {
//FileWriter throws and IOException, so need to wrap in error handling
  try {
    writer= new FileWriter(sketchPath("")+"data/FRtext.txt");
    writer.write("My example filewriter text");
    writer.flush();
    writer.close();
    println("File created");
  } 
  catch (IOException e) {
    println("IO Error");
  }

  exit();
}

