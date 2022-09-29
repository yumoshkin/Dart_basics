// 5.
// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в
// данной строке.
// Однако цифры встречаются в виде английских слов от zero до nine. Например,
// в результате строки ‘one, two, zero, zero’ мы получим следующий результат:
// [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

class StringList {
  static const numberWords = <String>{
    'zero',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
  };

  List<int> numberList(List<String> words) {
    var result = <int>[];

    for (var word in words) {
      if (numberWords.contains(word)) {
        var number = _wordToInt(word);
        if (number != null && !result.contains(number)) {
          result.add(number);
        }
      }
    }

    return result;
  }

  int? _wordToInt(String word) {
    const map = <String, int>{
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9,
    };

    return map[word];
  }
}

class StringListMap {
  List<int> numberList(List<String> words) {
    var result = <int>[];

    for (var word in words) {
      var number = _wordToInt(word);
      if (number != null && !result.contains(number)) {
        result.add(number);
      }
    }

    return result;
  }

  int? _wordToInt(String word) {
    const map = <String, int>{
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9,
    };

    return map[word];
  }
}
