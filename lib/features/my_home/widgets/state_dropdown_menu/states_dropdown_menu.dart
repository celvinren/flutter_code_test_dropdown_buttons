import 'package:flutter/material.dart' hide State;
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu_state.dart';
import 'package:flutter_code_test_dropdown_buttons/models/data_models/state/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StatesDropdownMenuButton extends HookConsumerWidget {
  const StatesDropdownMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final states = ref.watch(fetchStatesProvider);
    final selectedState = ref.watch(selectedStateProvider);
    final isDropdownEnable =
        !states.isLoading && !states.hasError && states.valueOrNull!.isNotEmpty;

    return DropdownMenu<State>(
      width: 200,
      initialSelection: selectedState ?? stateDropdownDescription,
      dropdownMenuEntries: [
        stateDropdownDescription,
        ...states.valueOrNull ?? [],
      ]
          .map(
            (e) => DropdownMenuEntry<State>(
              value: e,
              label: e.value,
            ),
          )
          .toList(),
      enabled: isDropdownEnable,
      textStyle: TextStyle(
        color: isDropdownEnable ? Colors.black : Colors.grey,
      ),
      trailingIcon: states.isLoading
          ? const Center(child: CircularProgressIndicator())
          : states.hasError
              ? const Icon(Icons.error)
              : null,
      onSelected: ref.read(selectedStateProvider.notifier).setState,
    );
  }
}
