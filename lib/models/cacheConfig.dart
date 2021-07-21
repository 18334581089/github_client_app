import 'package:json_annotation/json_annotation.dart';
part 'cacheConfig.g.dart';

CacheconfigData default1 = new CacheconfigData();

@JsonSerializable(explicitToJson: true)
class Cacheconfig {
  CacheconfigData data = default1;
  int code = 0;
  int message = 0;
  Cacheconfig();

  factory Cacheconfig.fromJson(Map<String, dynamic> json) =>
      _$CacheconfigFromJson(json);
  Map<String, dynamic> toJson() => _$CacheconfigToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CacheconfigData {
  bool enable = false;
  int maxAge = 0;
  int maxCount = 0;

  CacheconfigData();

  factory CacheconfigData.fromJson(Map<String, dynamic> json) =>
      _$CacheconfigDataFromJson(json);
  Map<String, dynamic> toJson() => _$CacheconfigDataToJson(this);
}
