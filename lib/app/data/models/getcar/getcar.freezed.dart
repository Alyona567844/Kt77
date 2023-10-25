// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'getcar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Getcar _$GetcarFromJson(Map<String, dynamic> json) {
  return _Getcar.fromJson(json);
}

/// @nodoc
mixin _$Getcar {
  List<Car> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetcarCopyWith<Getcar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetcarCopyWith<$Res> {
  factory $GetcarCopyWith(Getcar value, $Res Function(Getcar) then) =
      _$GetcarCopyWithImpl<$Res, Getcar>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$GetcarCopyWithImpl<$Res, $Val extends Getcar>
    implements $GetcarCopyWith<$Res> {
  _$GetcarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetcarImplCopyWith<$Res> implements $GetcarCopyWith<$Res> {
  factory _$$GetcarImplCopyWith(
          _$GetcarImpl value, $Res Function(_$GetcarImpl) then) =
      __$$GetcarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$GetcarImplCopyWithImpl<$Res>
    extends _$GetcarCopyWithImpl<$Res, _$GetcarImpl>
    implements _$$GetcarImplCopyWith<$Res> {
  __$$GetcarImplCopyWithImpl(
      _$GetcarImpl _value, $Res Function(_$GetcarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$GetcarImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetcarImpl implements _Getcar {
  _$GetcarImpl({required final List<Car> cars}) : _cars = cars;

  factory _$GetcarImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetcarImplFromJson(json);

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'Getcar(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcarImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetcarImplCopyWith<_$GetcarImpl> get copyWith =>
      __$$GetcarImplCopyWithImpl<_$GetcarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetcarImplToJson(
      this,
    );
  }
}

abstract class _Getcar implements Getcar {
  factory _Getcar({required final List<Car> cars}) = _$GetcarImpl;

  factory _Getcar.fromJson(Map<String, dynamic> json) = _$GetcarImpl.fromJson;

  @override
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$GetcarImplCopyWith<_$GetcarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
