import 'package:json_annotation/json_annotation.dart';
part 'repo.g.dart';

@JsonSerializable(explicitToJson: true)
class Repo {
  RepoData data;
  int code;
  int message;
  Repo({required this.data, required this.code, required this.message});

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
  Map<String, dynamic> toJson() => _$RepoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoData {
  int id;
  String name;
  String full_name;
  String owner;
  String parent;
  bool private;
  String description;
  bool fork;
  String language;
  int forks_count;
  int stargazers_count;
  int size;
  String default_branch;
  int open_issues_count;
  String pushed_at;
  String created_at;
  String updated_at;
  int subscribers_count;
  LicenseData license;

  RepoData({
    required this.id,
    required this.name,
    required this.full_name,
    required this.owner,
    required this.parent,
    required this.private,
    required this.description,
    required this.fork,
    required this.language,
    required this.forks_count,
    required this.stargazers_count,
    required this.size,
    required this.default_branch,
    required this.open_issues_count,
    required this.pushed_at,
    required this.created_at,
    required this.updated_at,
    required this.subscribers_count,
    required this.license,
  });

  factory RepoData.fromJson(Map<String, dynamic> json) =>
      _$RepoDataFromJson(json);
  Map<String, dynamic> toJson() => _$RepoDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LicenseData {
  String key;
  String name;
  String spdx_id;
  String url;
  String node_id;

  LicenseData({
    required this.key,
    required this.name,
    required this.spdx_id,
    required this.url,
    required this.node_id,
  });

  factory LicenseData.fromJson(Map<String, dynamic> json) =>
      _$LicenseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LicenseDataToJson(this);
}
