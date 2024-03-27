import 'package:flutter_code_test_dropdown_buttons/core/networking/dio.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';
import 'package:flutter_code_test_dropdown_buttons/models/dtos/country_dto/country_dto.dart';
import 'package:flutter_code_test_dropdown_buttons/models/dtos/state_dto/state_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlaceRepositoryRemote extends PlaceRepository {
  PlaceRepositoryRemote(this.ref);
  final Ref ref;

  @override
  Future<List<Country>> getCountries() async {
    final dio = ref.read(dioProvider);
    final result = await dio.get<List<dynamic>>('/countries');
    final data = result.data;
    if (data == null) return [];

    final json = List<Map<String, dynamic>>.from(data);
    return json.map((e) => CountryDto.fromJson(e).toCountry()).toList();
  }

  @override
  Future<List<State>> getStates(int countryId) async {
    final dio = ref.read(dioProvider);
    final result = await dio.get<List<dynamic>>('/countries/$countryId/states');
    final data = result.data;
    if (data == null) return [];

    final json = List<Map<String, dynamic>>.from(data);
    return json.map((e) => StateDto.fromJson(e).toState()).toList();
  }
}
