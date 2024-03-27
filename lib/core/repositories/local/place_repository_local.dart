import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaceRepositoryLocal extends PlaceRepository {
  PlaceRepositoryLocal(this.ref);
  final Ref ref;

  @override
  Future<List<Country>> getCountries() {
    // TODO: implement getCountries
    throw UnimplementedError();
  }

  @override
  Future<List<State>> getStates(String countryId) {
    // TODO: implement getStates
    throw UnimplementedError();
  }
}
