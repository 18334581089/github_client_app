// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    data: ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    code: json['code'] as int,
    message: json['message'] as int,
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'code': instance.code,
      'message': instance.message,
    };

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return ProfileData(
    user: json['user'] as String,
    token: json['token'] as String,
    theme: json['theme'] as int,
    cache: json['cache'] as String,
    lastLogin: json['lastLogin'] as String,
    locale: json['locale'] as String,
  );
}

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'theme': instance.theme,
      'cache': instance.cache,
      'lastLogin': instance.lastLogin,
      'locale': instance.locale,
    };
