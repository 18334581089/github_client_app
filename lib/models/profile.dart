import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';

@JsonSerializable(explicitToJson: true)
class Profile {
  ProfileData data;
  int code;
  int message;
  Profile({required this.data, required this.code, required this.message});

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProfileData {
  String user;
  String token;
  int theme;
  String cache;
  String lastLogin;
  String locale;

  ProfileData({
    required this.user,
    required this.token,
    required this.theme,
    required this.cache,
    required this.lastLogin,
    required this.locale,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}
