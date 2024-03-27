import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'place_repository.g.dart';

@Riverpod(keepAlive: true)
PlaceRepository placeRepository(PlaceRepositoryRef ref) {
  throw UnimplementedError('override PlaceRepository');
}

abstract class PlaceRepository {
  Future<List<Country>> getCountries();

  Future<List<State>> getStates(int countryId);
}
