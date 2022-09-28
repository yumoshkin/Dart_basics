// 7.
// Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num. Алгоритм можете взять
// на википедии как «Алгоритм нахождения корня n-й степени».
// Запрещается использовать методы math. В случае когда значение вернуть
// невозможно, необходимо бросать исключение с описанием ошибки.

extension rootDegree on num {
  num rootDeg(int degree) {
    if (degree <= 0) {
      throw ArgumentError('Degree should be greater than zero');
    }

    var number = this;

    if (number == 0 || number == 1) {
      return number;
    }

    var root = number / degree;
    var eps = 0.01;
    while (root - number / powerNumber(root, degree - 1) > eps) {
      root = ((degree - 1) * root + number / powerNumber(root, degree - 1)) /
          degree;
    }

    return root;
  }

  double powerNumber(double number, int degree) {
    if (number == 0) {
      return 0;
    }

    if (degree == 0) {
      return 1;
    }

    if (number == 1 || degree == 1) {
      return number;
    }

    double result = number;
    for (var i = 2; i <= degree; i++) {
      result *= number;
    }

    return result;
  }
}
