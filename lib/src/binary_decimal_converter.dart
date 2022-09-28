// 2.
// Реализуйте методы для преобразования целых чисел из десятичной системы
// в двоичную и обратно.

import 'dart:math';

class DecimalBinaryConverter {
  String decimalToBinary(int decimal) {
    if (decimal == 0) {
      return '0';
    }

    var result = '';
    while (decimal > 0) {
      result = (decimal % 2 == 0 ? '0' : '1') + result;
      decimal ~/= 2;
    }

    return result;
  }

  int? bynaryToDecimal(String bynary) {
    if (bynary.isEmpty) {
      return null;
    }

    var result = 0;
    final len = bynary.length;
    for (var i = 0; i < len; i++) {
      if (int.parse(bynary[len - 1 - i]) == 1) {
        result += pow(2, i).toInt();
      }
    }

    return result;
  }
}
