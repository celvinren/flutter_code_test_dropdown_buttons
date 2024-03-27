// ignore_for_file: use_setters_to_change_properties

import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_dropdown_menu_state.g.dart';

final countriesDropdownDescription = Country(
  id: -1,
  value: 'Select a country',
);

@Riverpod(dependencies: [placeRepository])
Future<List<Country>> fetchCountries(FetchCountriesRef ref) async {
  return ref.watch(placeRepositoryProvider).getCountries();
}

@riverpod
class SelectedCountry extends _$SelectedCountry {
  @override
  Country? build() {
    return null;
  }

  void setCountry(Country? country) {
    if (country == null || country.id == countriesDropdownDescription.id) {
      state = null;
      return;
    }
    state = country;
  }
}
