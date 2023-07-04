import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Obst", "Блъскам", "Hustle", ""],
  ["2", "Farben", "Училище за ДИЗ", "School for GAE"],
  ["3", "Moebel", "Аватар", "Avatar"],
  ["4", "Sachen", "Трансилвания", "Transilvania"],
  ["5", "Spielzeug", "Меган", "Megan"],
  ["6", "Tiere", "Ожени се за мен", "Marry Me"],
  ["7", "Wilde Tiere", "Пурпурни сърца", "Purple hearts"],
  ["8", "Zahlen", "Проектът Адам", "The Adam Project"],
  ["9", "Wetter", "Чудесен свят", "Wonderful world"],
  ["10", "Zu Hause", "Лоши момчета", "Bad boys"],
  ["11", "Natur", "Русо", "Blonde"],
  ["12", "Im Meer", "Късмет", "Luck"],
  ["13", "Am Strand", "Вавилон", "Babylon"],
  ["14", "Sport", "Затвор 77", "Prison 77"],
  ["15", "Stadt", "Мей", "May"],
  ["16", "Berufe", "Бащата на булката", "Father of the bride"],
  ["17", "Fahrzeuge", "Поканата", "The invitation"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2]
      });
}).toList();
