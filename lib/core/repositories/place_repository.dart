import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';

abstract class PlaceRepository {
  Future<List<Country>> getCountries();

  Future<List<State>> getStates(String countryId);
}
