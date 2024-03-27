// ignore_for_file: use_setters_to_change_properties

import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_state.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'states_dropdown_menu_state.g.dart';

final stateDropdownDescription = State(
  id: -1,
  value: 'Select a state',
);

@Riverpod(dependencies: [SelectedCountry, placeRepository])
Future<List<State>> fetchStates(FetchStatesRef ref) async {
  final country = ref.watch(selectedCountryProvider);
  if (country == null || !country.isValid) {
    return [];
  }
  return ref.watch(placeRepositoryProvider).getStates(country.id);
}

@Riverpod(dependencies: [fetchStates])
class SelectedState extends _$SelectedState {
  @override
  State? build() {
    ref.watch(fetchStatesProvider);
    return null;
  }

  void setState(State? value) {
    if (value == null || value.id == stateDropdownDescription.id) {
      state = null;
      return;
    }
    state = value;
  }
}
