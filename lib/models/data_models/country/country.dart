import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  factory Country({
    required int id,
    required String value,
  }) = _Country;
  Country._();

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  bool get isValid => id > 0;
}
