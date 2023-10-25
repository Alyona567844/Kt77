import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

class PriceConverter implements JsonConverter<double,String> {
  const PriceConverter();
  @override
  double fromJson(String str) {
    return double.parse(str.replaceAll('\$', ''));
    
  }
  @override
  String toJson(double object) {
    throw UnimplementedError();
  }
}

@freezed
class Car with _$Car {

  factory Car({
    required int id,
    @JsonKey(name: "car") required String brand,
    @JsonKey(name: "car_model") required String model,
    @PriceConverter() required double price,
    required bool availability,
    @JsonKey(name: "car_color") required String color,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}