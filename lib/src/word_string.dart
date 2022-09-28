// 3.
// Реализуйте метод, который принимает строку слов, разделённых пробелами.
// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

class WordString {
  List<num> numberList(String strings) {
    final words = strings.split(' ');
    var result = <num>[];

    for (var word in words) {
      var number = num.tryParse(word);
      if (number != null) {
        result.add(number);
      }
    }

    return result;
  }
}
