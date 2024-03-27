import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_state.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplaySelectedResultWidget extends HookConsumerWidget {
  const DisplaySelectedResultWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(selectedCountryProvider);
    final selectedState = ref.watch(selectedStateProvider);

    final selectedResult = selectedCountry == null && selectedState == null
        ? 'Please select a country and a state'
        : 'Selected Country: ${selectedCountry?.value ?? 'unselected'}, '
            'Selected State: ${selectedState?.value ?? 'Unselected'}';
    return Text(
      selectedResult,
      style: const TextStyle(
        fontSize: 12,
      ),
    );
  }
}
