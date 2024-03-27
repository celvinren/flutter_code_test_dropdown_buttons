import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_state.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/country/country.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CountriesDropdownMenuButton extends HookConsumerWidget {
  const CountriesDropdownMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countries = ref.watch(fetchCountriesProvider);
    final selectedCountry = ref.watch(selectedCountryProvider);
    final isDropdownEnable = !countries.isLoading &&
        !countries.hasError &&
        countries.valueOrNull!.isNotEmpty;

    return DropdownMenu<Country>(
      width: 200,
      initialSelection: selectedCountry ?? countriesDropdownDescription,
      dropdownMenuEntries: [
        countriesDropdownDescription,
        ...countries.valueOrNull ?? [],
      ]
          .map(
            (e) => DropdownMenuEntry<Country>(
              value: e,
              label: e.value,
            ),
          )
          .toList(),
      enabled: isDropdownEnable,
      textStyle: TextStyle(
        color: isDropdownEnable ? Colors.black : Colors.grey,
      ),
      trailingIcon: countries.isLoading
          ? const Center(child: CircularProgressIndicator())
          : countries.hasError
              ? const Icon(Icons.error)
              : null,
      onSelected: ref.read(selectedCountryProvider.notifier).setCountry,
    );
  }
}
