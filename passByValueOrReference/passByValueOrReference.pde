/* Pass by Value or Reference */

/* 

In Java, Primitive Data Types are passed as values.
Objects and Reference Types are passed as references.
This determines if the arguments in the calling code 
will be affected by a method.

*/


myClass iObject;

void setup(){
int i=0;
modify(i);
println("Modified i value is "+i);
 
iObject = new myClass(i); //instantiate with the variable
modify(iObject);
println("Modified iObject value is "+iObject.i);
}

static void modify(int in){
  in += 10; //this is a new variable as the value is passed to the function
}

static void modify(myClass in){
 in.i += 10; //this acts on the existing variable as the reference is passed to the function 
}

class myClass{
 int i;
 myClass(int i_){
   i=i_;
 }
}
