//The purpose of this chapter is to abstract digits from numbers.

/*Luckily as coders, we already get the gist of the problem. 
 There are multiple number systems such as binary and base-10. 
 If you encountered a neato aspect of a number system like 111 x 111 = 12321
 it wouldn't have the same zing in binary 0110 1111 * 0110 1111 = 0011 0000 0010 0001  
 so the joke is effecitvely lost.   
 I started thinking deeper about this idea of abstracting numbers from digits.  
 This is the end result. */

//The abstract number class
abstract class Number<T> {
  T value;

  Number(this.value);

  Number<T> operator +(Number<T> other);
  Number<T> operator -(Number<T> other);
  Number<T> operator *(Number<T> other);
  Number<T> operator /(Number<T> other);

  String toString();
}

//Example of a number as concrete class called Decimal
class Decimal extends Number<double> {
  Decimal(double value) : super(value);

  @override
  Decimal operator +(Number<double> other) => Decimal(value + other.value);

  @override
  Decimal operator -(Number<double> other) => Decimal(value - other.value);

  @override
  Decimal operator *(Number<double> other) => Decimal(value * other.value);

  @override
  Decimal operator /(Number<double> other) => Decimal(value / other.value);

  @override
  String toString() {
    return value.toString();
  }
}

//Another example
class Integer extends Number<int> {
  Integer(int value) : super(value);

  @override
  Integer operator +(Number<int> other) => Integer(value + other.value);

  @override
  Integer operator -(Number<int> other) => Integer(value - other.value);

  @override
  Integer operator *(Number<int> other) => Integer(value * other.value);

  @override
  Integer operator /(Number<int> other) => Integer(value ~/ other.value);

  @override
  String toString() {
    return value.toString();
  }
}

class Binary extends Number<int> {
  Binary(int value) : super(value);

  @override
  Binary operator +(Number<int> other) {
    return Binary(value + other.value);
  }

  @override
  Binary operator -(Number<int> other) {
    return Binary(value + other.value);
  }

  @override
  Binary operator *(Number<int> other) {
    return Binary(value + other.value);
  }

  @override
  Binary operator /(Number<int> other) {
    return Binary(value + other.value);
  }

  @override
  String toString() {
    //radix helps to work with different bases.
    return value.toRadixString(2);
  }
}

//Quick tests
void main() {
  Decimal number_1 = Decimal(10);
  Decimal number_2 = Decimal(5);

  Integer number_01 = Integer(10);
  Integer number_02 = Integer(5);

  Binary number_001 = Binary(10);
  Binary number_002 = Binary(5);

  Decimal sum_1 = number_1 + number_2;
  Integer sum_2 = number_01 + number_02;
  Binary sum_3 = number_001 + number_002;

  print('Result of 10 + 5...');
  print('Decimal $sum_1');
  print('Integer $sum_2');
  print('Binary $sum_3');
}
