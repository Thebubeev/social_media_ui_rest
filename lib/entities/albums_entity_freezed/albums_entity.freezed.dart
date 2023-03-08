// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'albums_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumsEntity _$AlbumsEntityFromJson(Map<String, dynamic> json) {
  return _AlbumsEntity.fromJson(json);
}

/// @nodoc
mixin _$AlbumsEntity {
  int get albumId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumsEntityCopyWith<AlbumsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsEntityCopyWith<$Res> {
  factory $AlbumsEntityCopyWith(
          AlbumsEntity value, $Res Function(AlbumsEntity) then) =
      _$AlbumsEntityCopyWithImpl<$Res, AlbumsEntity>;
  @useResult
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class _$AlbumsEntityCopyWithImpl<$Res, $Val extends AlbumsEntity>
    implements $AlbumsEntityCopyWith<$Res> {
  _$AlbumsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlbumsEntityCopyWith<$Res>
    implements $AlbumsEntityCopyWith<$Res> {
  factory _$$_AlbumsEntityCopyWith(
          _$_AlbumsEntity value, $Res Function(_$_AlbumsEntity) then) =
      __$$_AlbumsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int albumId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class __$$_AlbumsEntityCopyWithImpl<$Res>
    extends _$AlbumsEntityCopyWithImpl<$Res, _$_AlbumsEntity>
    implements _$$_AlbumsEntityCopyWith<$Res> {
  __$$_AlbumsEntityCopyWithImpl(
      _$_AlbumsEntity _value, $Res Function(_$_AlbumsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumId = null,
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$_AlbumsEntity(
      albumId: null == albumId
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumsEntity implements _AlbumsEntity {
  const _$_AlbumsEntity(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory _$_AlbumsEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumsEntityFromJson(json);

  @override
  final int albumId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'AlbumsEntity(albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumsEntity &&
            (identical(other.albumId, albumId) || other.albumId == albumId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, albumId, id, title, url, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumsEntityCopyWith<_$_AlbumsEntity> get copyWith =>
      __$$_AlbumsEntityCopyWithImpl<_$_AlbumsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumsEntityToJson(
      this,
    );
  }
}

abstract class _AlbumsEntity implements AlbumsEntity {
  const factory _AlbumsEntity(
      {required final int albumId,
      required final int id,
      required final String title,
      required final String url,
      required final String thumbnailUrl}) = _$_AlbumsEntity;

  factory _AlbumsEntity.fromJson(Map<String, dynamic> json) =
      _$_AlbumsEntity.fromJson;

  @override
  int get albumId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumsEntityCopyWith<_$_AlbumsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
