import 'package:json_annotation/json_annotation.dart';

part 'cacheConfig.g.dart';

@JsonSerializable()
class CacheConfig {
  bool enable;
  num maxAge;
  num maxCount;
  CacheConfig({
    required this.enable,
    required this.maxAge,
    required this.maxCount,
  });
  factory CacheConfig.fromJson(Map<String, dynamic> json) =>
      _$CacheConfigFromJson(json);
  Map<String, dynamic> toJson() => _$CacheConfigToJson(this);
}
