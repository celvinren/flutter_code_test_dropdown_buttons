// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlavorConfigImpl _$$FlavorConfigImplFromJson(Map<String, dynamic> json) =>
    _$FlavorConfigImpl(
      flavor: $enumDecode(_$FlavorEnumMap, json['flavor']),
      baseApiUrl: json['baseApiUrl'] as String,
      apiKey: json['apiKey'] as String,
      apiUserAgent: json['apiUserAgent'] as String,
    );

Map<String, dynamic> _$$FlavorConfigImplToJson(_$FlavorConfigImpl instance) =>
    <String, dynamic>{
      'flavor': _$FlavorEnumMap[instance.flavor]!,
      'baseApiUrl': instance.baseApiUrl,
      'apiKey': instance.apiKey,
      'apiUserAgent': instance.apiUserAgent,
    };

const _$FlavorEnumMap = {
  Flavor.dev: 'dev',
  Flavor.tst: 'tst',
  Flavor.qa: 'qa',
  Flavor.prod: 'prod',
};
