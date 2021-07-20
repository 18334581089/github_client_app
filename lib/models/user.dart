import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  UserData data;
  int code;
  int message;
  User({required this.data, required this.code, required this.message});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserData {
  String login;
  String avatar_url;
  String type;
  String name;
  String company;
  String blog;
  String location;
  String email;
  bool hireable;
  String bio;
  int public_repos;
  int followers;
  int following;
  String created_at;
  String updated_at;
  int total_private_repos;
  int owned_private_repos;

  UserData({
    required this.login,
    required this.avatar_url,
    required this.type,
    required this.name,
    required this.company,
    required this.blog,
    required this.location,
    required this.email,
    required this.hireable,
    required this.bio,
    required this.public_repos,
    required this.followers,
    required this.following,
    required this.created_at,
    required this.updated_at,
    required this.total_private_repos,
    required this.owned_private_repos,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
