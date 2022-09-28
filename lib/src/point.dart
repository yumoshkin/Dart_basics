// 6.
// Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another), который
// возвращает расстояние от данной точки до точки в параметре.
// По желанию можете реализовать метод, принимающий три точки в трёхмерном
// пространстве и возвращающий площадь треугольника, который образуют данные
// точки.
// Реализуйте factory-конструкторы для данного класса, возвращающие начало
// координат, и ещё несколько на своё усмотрение (например, конструктор,
// возвращающий точку с координатами [1,1,1], которая определяет единичный
// вектор).

import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  static final Map<String, Point> _cacheZero = <String, Point>{};
  static final Map<String, Point> _cacheOne = <String, Point>{};

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return _cacheZero.putIfAbsent('PointZero', () => Point(0, 0, 0));
  }

  factory Point.one() {
    return _cacheOne.putIfAbsent('PointOne', () => Point(1, 1, 1));
  }

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  @override
  String toString() => 'Point($x, $y, $z)';
}

/*
Класс Point с фабричными конструкторами, использующими статические поля

class Point {
  final double x;
  final double y;
  final double z;

  static Point _zeroPoint = Point(0, 0, 0);
  static Point _onePoint = Point(1, 1, 1);

  Point(this.x, this.y, this.z);

  factory Point.zero() => _zeroPoint;

  factory Point.one() => _onePoint;

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  @override
  String toString() => 'Point($x, $y, $z)';
}

*/
