import 'package:freezed_annotation/freezed_annotation.dart';

import '../car/car.dart';

part 'getcar.freezed.dart';
part 'getcar.g.dart';

@freezed
class Getcar with _$Getcar {

  factory Getcar({
    required List<Car> cars,
  }) = _Getcar;

  factory Getcar.fromJson(Map<String, dynamic> json) => _$GetcarFromJson(json);
}