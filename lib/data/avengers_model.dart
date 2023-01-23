import 'package:flutter/cupertino.dart';

class AvengersModel {
  List<Avengers> avenger;

  AvengersModel({
    required this.avenger,
  });

  void addAvenger(Avengers a) {
    avenger.add(a);
  }
}
//
// void removeAvenger(Avengers a) {
//   avenger.add(a);
// }

class Avengers {
  String imagePath;
  String title;
  Icon icon;

  Avengers({
    required this.imagePath,
    required this.title,
    required this.icon,
  });
}
