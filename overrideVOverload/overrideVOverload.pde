void setup() {
  Bar bar =new Bar();
  bar.myMethod(1);
  Foo foo = new Foo();
  foo.myMethod(2);
  foo.myMethod(3.0);
  FooBar foobar = new FooBar();
  foobar.myMethod(4.0);
}


class Bar {
  void myMethod(int i) {
    println("bar does something with "+i);
  }
}

class Foo extends Bar {

  //overriding uses the same methos signature as the super class
  void myMethod(int i) {
    println("Overridden method in foo does something else with "+i);
  }

  //overloading uses a different method signature (input type)
  void myMethod(float f) {
    println("Overloaded method in foo takes a different argument "+f);
  }
}

class FooBar extends Bar {

  //overloading and overriding 
  boolean myMethod(float f) {
    println("Overloaded and overridden method in foobar takes a different argument and does something different to other methods (e.g. returns value) "+f);
    return  true;
  }
}

