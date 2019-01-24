void setup() {
}

public class MyClass {
  private int privateVar; //only visible in this class
  int defaultVar; //visible in all classes, within package only
  protected int protectedVar; //visible in classes of package and in sub-classes (extends) of this class in other packages
  public int publicVar; //visible in all classes, anywhere 
  MyClass() {
  }
}

//final signifies a quantitiy that cannot be modified in some way later

//a final class cannot be extended
class NonFinalClass {
  final int finalVar = 0; //a final variable cannot be changed
  NonFinalClass() {
    //this.finalVar = 1; //error!
  }

  final void finalMethod() {
    //a final method cannot be overriden
  }
}

class NonFinalClassExtended extends NonFinalClass {
  NonFinalClassExtended() {
  }
  //void finalMethod() {
  //error! cannot override a final method, even when class may be extended
  //}
}

final class FinalClass {
  FinalClass() {
  }
}
//
//class FinalClassExtended extends FinalClass {
//  //error! cannot extend a final class
//  FinalClassExtended() {
//  }
//}

