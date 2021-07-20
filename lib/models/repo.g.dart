// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repo _$RepoFromJson(Map<String, dynamic> json) {
  return Repo(
    data: RepoData.fromJson(json['data'] as Map<String, dynamic>),
    code: json['code'] as int,
    message: json['message'] as int,
  );
}

Map<String, dynamic> _$RepoToJson(Repo instance) => <String, dynamic>{
      'data': instance.data.toJson(),
      'code': instance.code,
      'message': instance.message,
    };

RepoData _$RepoDataFromJson(Map<String, dynamic> json) {
  return RepoData(
    id: json['id'] as int,
    name: json['name'] as String,
    full_name: json['full_name'] as String,
    owner: json['owner'] as String,
    parent: json['parent'] as String,
    private: json['private'] as bool,
    description: json['description'] as String,
    fork: json['fork'] as bool,
    language: json['language'] as String,
    forks_count: json['forks_count'] as int,
    stargazers_count: json['stargazers_count'] as int,
    size: json['size'] as int,
    default_branch: json['default_branch'] as String,
    open_issues_count: json['open_issues_count'] as int,
    pushed_at: json['pushed_at'] as String,
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
    subscribers_count: json['subscribers_count'] as int,
    license: LicenseData.fromJson(json['license'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RepoDataToJson(RepoData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.full_name,
      'owner': instance.owner,
      'parent': instance.parent,
      'private': instance.private,
      'description': instance.description,
      'fork': instance.fork,
      'language': instance.language,
      'forks_count': instance.forks_count,
      'stargazers_count': instance.stargazers_count,
      'size': instance.size,
      'default_branch': instance.default_branch,
      'open_issues_count': instance.open_issues_count,
      'pushed_at': instance.pushed_at,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'subscribers_count': instance.subscribers_count,
      'license': instance.license.toJson(),
    };

LicenseData _$LicenseDataFromJson(Map<String, dynamic> json) {
  return LicenseData(
    key: json['key'] as String,
    name: json['name'] as String,
    spdx_id: json['spdx_id'] as String,
    url: json['url'] as String,
    node_id: json['node_id'] as String,
  );
}

Map<String, dynamic> _$LicenseDataToJson(LicenseData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdx_id,
      'url': instance.url,
      'node_id': instance.node_id,
    };
