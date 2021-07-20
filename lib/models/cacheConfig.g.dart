// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cacheConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cacheconfig _$CacheconfigFromJson(Map<String, dynamic> json) {
  return Cacheconfig(
    data: CacheconfigData.fromJson(json['data'] as Map<String, dynamic>),
    code: json['code'] as int,
    message: json['message'] as int,
  );
}

Map<String, dynamic> _$CacheconfigToJson(Cacheconfig instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'code': instance.code,
      'message': instance.message,
    };

CacheconfigData _$CacheconfigDataFromJson(Map<String, dynamic> json) {
  return CacheconfigData(
    enable: json['enable'] as bool,
    maxAge: json['maxAge'] as int,
    maxCount: json['maxCount'] as int,
  );
}

Map<String, dynamic> _$CacheconfigDataToJson(CacheconfigData instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'maxAge': instance.maxAge,
      'maxCount': instance.maxCount,
    };
