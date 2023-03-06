// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressEntity _$$_AddressEntityFromJson(Map<String, dynamic> json) =>
    _$_AddressEntity(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoEntity.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressEntityToJson(_$_AddressEntity instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo.toJson(),
    };
