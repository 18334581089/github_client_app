import 'package:json_annotation/json_annotation.dart';
part 'cacheConfig.g.dart';

@JsonSerializable(explicitToJson: true)
class Cacheconfig {
  CacheconfigData data;
  int code;
  int message;
  Cacheconfig({required this.data, required this.code, required this.message});

  factory Cacheconfig.fromJson(Map<String, dynamic> json) =>
      _$CacheconfigFromJson(json);
  Map<String, dynamic> toJson() => _$CacheconfigToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CacheconfigData {
  bool enable;
  int maxAge;
  int maxCount;

  CacheconfigData({
    required this.enable,
    required this.maxAge,
    required this.maxCount,
  });

  factory CacheconfigData.fromJson(Map<String, dynamic> json) =>
      _$CacheconfigDataFromJson(json);
  Map<String, dynamic> toJson() => _$CacheconfigDataToJson(this);
}
