// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentEntity _$CommentEntityFromJson(Map<String, dynamic> json) {
  return _CommentEntity.fromJson(json);
}

/// @nodoc
mixin _$CommentEntity {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_CommentEntityCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$_CommentEntityCopyWith(
          _$_CommentEntity value, $Res Function(_$_CommentEntity) then) =
      __$$_CommentEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class __$$_CommentEntityCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$_CommentEntity>
    implements _$$_CommentEntityCopyWith<$Res> {
  __$$_CommentEntityCopyWithImpl(
      _$_CommentEntity _value, $Res Function(_$_CommentEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_CommentEntity(
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
class _$_CommentEntity implements _CommentEntity {
  const _$_CommentEntity({required this.lat, required this.lng});

  factory _$_CommentEntity.fromJson(Map<String, dynamic> json) =>
      _$$_CommentEntityFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'CommentEntity(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentEntity &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentEntityCopyWith<_$_CommentEntity> get copyWith =>
      __$$_CommentEntityCopyWithImpl<_$_CommentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentEntityToJson(
      this,
    );
  }
}

abstract class _CommentEntity implements CommentEntity {
  const factory _CommentEntity(
      {required final String lat,
      required final String lng}) = _$_CommentEntity;

  factory _CommentEntity.fromJson(Map<String, dynamic> json) =
      _$_CommentEntity.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$$_CommentEntityCopyWith<_$_CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}