// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as int,
      brand: json['car'] as String,
      model: json['car_model'] as String,
      price: const PriceConverter().fromJson(json['price'] as String),
      availability: json['availability'] as bool,
      color: json['car_color'] as String,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) => <String, dynamic>{
      'id': instance.id,
      'car': instance.brand,
      'car_model': instance.model,
      'price': const PriceConverter().toJson(instance.price),
      'availability': instance.availability,
      'car_color': instance.color,
    };
