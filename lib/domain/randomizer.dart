///The Randomizer class helps us return random numbers that will be used
///in the project.
///It uses two principles for calculations - natural time and local computing.
///
///First, we have a natural seed for further calculations in milliseconds.
///Then, randomizer uses the following functions
class Randomizer {
  static bool _isReversed = false;
  static int _seed = DateTime.now().millisecond;

  ///This is a function that returns the reversed value
  static int _reverseRandomSeed(int value) {
    final String _value = value.toString();
    final List<String> _splittedList = _value.split('');
    final List<String> _reversedList = _splittedList.reversed.toList();

    return int.parse(_reversedList.join());
  }

  ///This is a function that return splitted value
  static int _splitRandomSeed(int value) {
   const int _valueLengthDivider = 2;
   final String _splittedSeed = value.toString();

    return int.parse(_splittedSeed.substring(
        _splittedSeed.length ~/ _valueLengthDivider,),);
  }

  ///This is function the core of local random value
  static bool _checkerFunction(int value){
    const int _valueDivider = 3;
    if(_isReversed == false || value % _valueDivider == 0){
      _isReversed = true;

      return true;
    } else {
      _isReversed = false;

      return false;
    }
  }

  ///This is a main function that consists from other functions
  static int getRandomNumber() {
    const int _divider = 2;
    final int _randomTimeValue = DateTime.now().millisecond * 255 ~/ 1000;
    int _localRandomValue = 1;

    _localRandomValue = _checkerFunction(_seed) ?
    _splitRandomSeed(_reverseRandomSeed(_seed)) : _splitRandomSeed(_seed);

    final int _result = _localRandomValue + _randomTimeValue;
    _seed = _seed ~/ _divider + DateTime.now().millisecond;

    return _result;
  }
}
