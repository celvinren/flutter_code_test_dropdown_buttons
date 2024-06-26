import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor.freezed.dart';
part 'flavor.g.dart';

enum Flavor {
  dev,
  tst,
  qa,
  prod;

  static Flavor fromString(String value) {
    switch (value) {
      case 'dev':
        return Flavor.dev;
      case 'tst':
        return Flavor.tst;
      case 'qa':
        return Flavor.qa;
      case 'prod':
        return Flavor.prod;
      default:
        throw Exception('Unknown flavor: $value');
    }
  }
}

@freezed
class FlavorConfig with _$FlavorConfig {
  factory FlavorConfig({
    required Flavor flavor,
    required String baseApiUrl,
    required String apiKey,
    required String apiUserAgent,
  }) = _FlavorConfig;

  factory FlavorConfig.fromJson(Map<String, dynamic> json) =>
      _$FlavorConfigFromJson(json);
}
