// 5.
// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в
// данной строке.
// Однако цифры встречаются в виде английских слов от zero до nine. Например,
// в результате строки ‘one, two, zero, zero’ мы получим следующий результат:
// [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

class StringList {
  static const numberWords = [
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
  ];

  List<int> numberList(List<String> words) {
    var result = <int>[];

    for (var word in words) {
      var index = numberWords.indexOf(word);
      if (index != -1 && !result.contains(index)) {
        result.add(index);
      }
    }

    return result;
  }
}
