import 'dart:math';

///Randomizer class for getting a random number
class Randomizer {
  ///Method for creating a random value from 0 to 255 for RGB
  static int getRandomNumber(){
    return Random().nextInt(255);
  }
}
