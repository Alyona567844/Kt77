// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetcarImpl _$$GetcarImplFromJson(Map<String, dynamic> json) => _$GetcarImpl(
      cars: (json['cars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetcarImplToJson(_$GetcarImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
