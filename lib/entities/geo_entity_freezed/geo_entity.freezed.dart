// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoEntity _$GeoEntityFromJson(Map<String, dynamic> json) {
  return _GeoEntity.fromJson(json);
}

/// @nodoc
mixin _$GeoEntity {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoEntityCopyWith<GeoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoEntityCopyWith<$Res> {
  factory $GeoEntityCopyWith(GeoEntity value, $Res Function(GeoEntity) then) =
      _$GeoEntityCopyWithImpl<$Res, GeoEntity>;
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class _$GeoEntityCopyWithImpl<$Res, $Val extends GeoEntity>
    implements $GeoEntityCopyWith<$Res> {
  _$GeoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeoEntityCopyWith<$Res> implements $GeoEntityCopyWith<$Res> {
  factory _$$_GeoEntityCopyWith(
          _$_GeoEntity value, $Res Function(_$_GeoEntity) then) =
      __$$_GeoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class __$$_GeoEntityCopyWithImpl<$Res>
    extends _$GeoEntityCopyWithImpl<$Res, _$_GeoEntity>
    implements _$$_GeoEntityCopyWith<$Res> {
  __$$_GeoEntityCopyWithImpl(
      _$_GeoEntity _value, $Res Function(_$_GeoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_GeoEntity(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoEntity implements _GeoEntity {
  const _$_GeoEntity({required this.lat, required this.lng});

  factory _$_GeoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GeoEntityFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'GeoEntity(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeoEntity &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeoEntityCopyWith<_$_GeoEntity> get copyWith =>
      __$$_GeoEntityCopyWithImpl<_$_GeoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeoEntityToJson(
      this,
    );
  }
}

abstract class _GeoEntity implements GeoEntity {
  const factory _GeoEntity(
      {required final String lat, required final String lng}) = _$_GeoEntity;

  factory _GeoEntity.fromJson(Map<String, dynamic> json) =
      _$_GeoEntity.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$$_GeoEntityCopyWith<_$_GeoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
