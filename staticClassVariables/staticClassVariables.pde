/* Static Classes and Variables
 
 */


void setup() {
  StaticClass static1 = new StaticClass();
  StaticClass static2 = new StaticClass();
  println( "static1 is "+static1.staticVar );         // Prints "10" to the console
  StaticClass.staticVar += 10;                        // The 'y' variable is shared by 'static1' and 'static2' and can be accessed via the static class name
  println( "static1 += 10 is "+static1.staticVar );   // Prints "20" to the console
  println( "static2 += 10 is "+static2.staticVar );   // Prints "20" to the console
  static1.staticVar+=5;                               // Will also access the shared variable through the instance
  println( "static1.y += 5 is "+static1.staticVar );  // Prints "25" to the console
  println( "static2.y is "+static2.staticVar );       //Also prints "25" to the console

  println( "static1.nonStaticVar is "+static1.nonStaticVar );
  static1.nonStaticVar+=10;
  println( "static1.nonStaticVar +=10 is "+static1.nonStaticVar );
  println( "static2.nonStaticVar is "+static2.nonStaticVar ); //Prints '30' as the non-static variable is not shared between 'static1' and 'static2'
}

static class StaticClass {
  static int staticVar = 10;  // if class variable is static, it is shared
  int nonStaticVar = 30;      // non-static (instance) vaiables are not shared
}

