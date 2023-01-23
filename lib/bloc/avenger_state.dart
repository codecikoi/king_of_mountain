part of 'avenger_bloc.dart';

@immutable
abstract class AvengerState {}

class AvengerInitial extends AvengerState {
  Map<String, int> avengerRating = {
    'Batman': 0,
    'Black Panther': 0,
    'Black Widow': 0,
    'Captain America': 0,
    'Groot': 0,
    'Hulk': 0,
    'Ironman': 0,
    'Spiderman': 0,
    'Thanos': 0,
    'Thor': 0,
  };

  AvengerInitial();

  /// при выборе чтоб обновился рейтинг

//   factory AvengerInitial.update({
//     required name,
//   }) {
//     if (avengerRating[name] != null) {
//       avengerRating[name] = avengerRating[name]! + 1;
//     }
//     return AvengerInitial(avengerRating: this.avengerRating);
//   }

}
