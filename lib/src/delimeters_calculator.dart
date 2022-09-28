// 1.
// Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который
// разбивает число на простые множители и возвращает их.
//
// Наибольший общий делитель существует и однозначно определён, если хотя бы
// одно из чисел не равно нулю.

class DelimetersCalculator {
  int? greatestCommonDivisor(int number1, int number2) {
    if (number1 == 0 && number2 == 0) {
      return null;
    }

    if (number1 != 0 && number2 == 0) {
      return number1;
    }

    if (number1 == 0 && number2 != 0) {
      return number2;
    }

    var remainders =
        number1 < number2 ? [number2, number1] : [number1, number2];
    var i = 1;
    var remainder = 1;

    while (remainder > 0) {
      remainder = remainders[i - 1] % remainders[i];
      if (remainder > 0) {
        remainders.add(remainder);
      }
      i++;
    }

    return remainders.last;
  }

  int? leastCommonMultiple(int number1, int number2) {
    final gcd = greatestCommonDivisor(number1, number2);

    if (gcd == null) {
      return null;
    }

    return (number1 * number2) ~/ gcd;
  }

  List<int> primeMultipliers(int number) {
    if (_isPrime(number)) {
      return [number];
    }

    var result = <int>[];
    for (var i = 2; i <= number / 2; i++) {
      if (number % i == 0 && _isPrime(i)) {
        result.add(i);
      }
    }

    return result;
  }

  bool _isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    for (var i = 2; i < number; i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }
}
