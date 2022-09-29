import 'package:dart_basics/dart_basics_lib.dart';

void main() {
  // 1. НОД, НОК простые множители.
  print('Задание 1');
  final delimetersCalculator = DelimetersCalculator();
  print(delimetersCalculator.greatestCommonDivisor(0, 0));
  print(delimetersCalculator.greatestCommonDivisor(15, 0));
  print(delimetersCalculator.greatestCommonDivisor(0, 15));
  print(delimetersCalculator.greatestCommonDivisor(15, 20));
  print(delimetersCalculator.greatestCommonDivisor(20, 15));
  print(delimetersCalculator.greatestCommonDivisor(12, 30));
  print(delimetersCalculator.leastCommonMultiple(0, 0));
  print(delimetersCalculator.leastCommonMultiple(15, 0));
  print(delimetersCalculator.leastCommonMultiple(0, 15));
  print(delimetersCalculator.leastCommonMultiple(15, 20));
  print(delimetersCalculator.leastCommonMultiple(24, 30));
  print(delimetersCalculator.primeMultipliers(0));
  print(delimetersCalculator.primeMultipliers(3));
  print(delimetersCalculator.primeMultipliers(6));
  print('');

  // 2. Преобразования целых чисел из десятичной системы в двоичную и обратно.
  print('Задание 2');
  final decimalBinaryConverter = DecimalBinaryConverter();
  print(decimalBinaryConverter.decimalToBinary(0));
  print(decimalBinaryConverter.decimalToBinary(12));
  print(decimalBinaryConverter.bynaryToDecimal(''));
  print(decimalBinaryConverter.bynaryToDecimal('0'));
  print(decimalBinaryConverter.bynaryToDecimal('1100'));
  print('');

  // 3. Найти в данной строке числа и вернуть коллекцию num этих чисел.
  print('Задание 3');
  final wordString = WordString();
  print(wordString.numberList(''));
  print(wordString.numberList('aaaa bbbb ddd'));
  print(wordString.numberList('aaaa bbbb 23 ccc 15.6 42 ddd 77.8'));
  print(wordString.numberList('23 15.6 42 77.8'));
  print('');

  // 4. Получить Map слов и количества их вхождений в данную коллекцию.
  print('Задание 4');
  final wordList = WordList();
  print(wordList.listToMap([]));
  print(wordList.listToMap(['aaaa', 'bbbb', 'ccc', 'ddd']));
  print(wordList.listToMap(
      ['aaaa', 'bbbb', 'aaaa', 'ccc', 'ccc', 'ddd', 'bbbb', 'bbbb']));
  print('');

  // 5. Получить из строки цифры без повторений, которые встречаются в строке.
  // Преобразовать цифры из английских слов в числа.
  print('Задание 5');
  print('with Set and Map in function');
  final stringList = StringList();
  print(stringList.numberList([]));
  print(stringList.numberList(['cat', 'dog']));
  print(stringList.numberList(['one', 'two', 'three', 'cat', 'dog']));
  print(stringList.numberList(['one', 'two', 'three']));
  print(stringList.numberList(['one', 'two', 'zero', 'zero']));
  print('without Set, only Map in function');
  final stringListMap = StringListMap();
  print(stringListMap.numberList([]));
  print(stringListMap.numberList(['cat', 'dog']));
  print(stringListMap.numberList(['one', 'two', 'three', 'cat', 'dog']));
  print(stringListMap.numberList(['one', 'two', 'three']));
  print(stringListMap.numberList(['one', 'two', 'zero', 'zero']));
  print('');

  // 6. Реализовать класс Point, описывающий точку в трёхмерном пространстве.
  // Рреализовать метод distanceTo(Point another).
  // Рреализовать factory-конструкторы для данного класса.
  print('Задание 6');
  final point1 = Point.zero();
  final point2 = Point(3, 4, 12);
  print(point1.distanceTo(point2));
  final point3 = Point.one();
  final point4 = Point(4, 5, 13);
  print(point3.distanceTo(point4));
  final point5 = Point.one();
  final point6 = Point(3, 4, 12);
  print(point5.distanceTo(point6));
  final point7 = Point(-1, -1, -1);
  final point8 = Point(2, 3, 11);
  print(point7.distanceTo(point8));
  final point9 = Point(0.3, 0.5, 0.7);
  final point10 = Point(3.3, 4.5, 12.7);
  print(point9.distanceTo(point10));
  print('');

  // 7. Реализовать метод, вычисляющий корень любой заданной степени из числа,
  // как extension-метод для num.
  print('Задание 7');
  var number1 = 8;
  print(number1.rootDeg(3));
  var number2 = 0;
  print(number2.rootDeg(3));
  var number3 = 32;
  print(number3.rootDeg(5));
  num? number4 = null;
  print(number4?.rootDeg(3));
  // Следующие проверки выкидывают ошибку 'Degree should be greater than zero'
  // var number5 = 32;
  // print(number5.rootDeg(0));
  // var number6 = 32;
  // print(number6.rootDeg(-5));
  print('');

  // 8. Создать классы User, AdminUser и GeneralUser.
  // Реализовать mixin над классом User.
  // Реализовать класс UserManager<T extends User>.
  print('Задание 8');
  final adminUser = AdminUser('admin@mail.ru');
  final generalUser = GeneralUser('user@mail.ru');
  final userManager = UserManager();
  print('count: ${userManager.users.length}');

  userManager.addUser(adminUser);
  userManager.addUser(generalUser);
  print('count: ${userManager.users.length}');
  userManager.printUserEmails();

  userManager.removeUser(adminUser);
  userManager.removeUser(generalUser);
  print('count: ${userManager.users.length}');
}
