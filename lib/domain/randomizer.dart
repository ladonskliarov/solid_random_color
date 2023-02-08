class Randomizer {
  static bool isReverted = false;
  static int seed = 123456;

  static revertRandomSeed(String value) {
    List<String> splittedList = value.split('');
    List<String> reversedList = splittedList.reversed.toList();
    return reversedList.join();
  }

  static String splitRandomSeed(int value) {
   String splittedSeed = value.toString();
   if(isReverted == false || value % 3 == 0){
      revertRandomSeed(splittedSeed);
      isReverted = true;
    } else {
      isReverted = false;
    }
    return splittedSeed.substring(splittedSeed.length ~/ 2);
  }

  static getRandomNumber() {
    int randomTimeValue = DateTime.now().millisecond * 255 ~/ 1000;
    int localRandomValue = int.parse(splitRandomSeed(seed));
    int result = localRandomValue + randomTimeValue;
    seed = seed ~/ 2 + DateTime.now().millisecond;
    return result;
  }
}