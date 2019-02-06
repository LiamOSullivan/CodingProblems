/*See image in sketch folder for rules */

String originalString = "This film is the best film of the year";
String findString = "film";
String replaceWithString ="movie";

//Easy way/cheat
String  [] originalStringArray= originalString.split(" ");

for (int i=0; i<originalStringArray.length; i+=1){
  if(originalStringArray[i].equals(findString)){
    //println("Replacing "+originalStringArray[i]);
    originalStringArray[i]=replaceWithString;
    }
}
String newText = join(originalStringArray, " ");
printArray("The new sentence is: "+newText);

//Hard way/using char arrays
char [] charArray = new char [originalString.length()];

//this just puts the string into a charactrer array
for(int i=0;i<originalString.length(); i+=1){
  charArray[i] = originalString.charAt(i);
  //print(charArray[i]+"\t");
}

char [] findArray ={'f','i','l','m'}, replaceWithArray = {'m', 'o', 'v', 'i', 'e'};