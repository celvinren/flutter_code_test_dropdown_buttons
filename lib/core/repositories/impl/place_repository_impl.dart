import 'package:flutter_code_test_dropdown_buttons/core/repositories/local/place_repository_local.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/remote/place_repository_remote.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'place_repository_impl.g.dart';

@riverpod
PlaceRepositoryImpl placeRepository(PlaceRepositoryRef ref) =>
    PlaceRepositoryImpl(ref: ref);

class PlaceRepositoryImpl implements PlaceRepository {
  PlaceRepositoryImpl({required this.ref})
      : _local = PlaceRepositoryLocal(ref),
        _remote = PlaceRepositoryRemote(ref);

  final Ref ref;
  final PlaceRepositoryLocal _local;
  final PlaceRepositoryRemote _remote;

  @override
  Future<List<Country>> getCountries() async {
    try {
      final remoteData = await _remote.getCountries();
      return remoteData;
    } catch (e) {
      final localData = await _local.getCountries();
      return localData;
    }
  }

  @override
  Future<List<State>> getStates(String countryId) async {
    try {
      final remoteData = await _remote.getStates(countryId);
      return remoteData;
    } catch (e) {
      final localData = await _local.getStates(countryId);
      return localData;
    }
  }
}
