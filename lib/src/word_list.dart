// 4.
// Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map
// должен соотносить слово и количество его вхождений в данную коллекцию.

class WordList {
  Map<String, int> listToMap(List<String> words) {
    var result = <String, int>{};

    for (var word in words) {
      var item = result[word];
      if (item != null) {
        result[word] = item + 1;
      } else {
        result[word] = 1;
      }
    }

    return result;
  }
}
