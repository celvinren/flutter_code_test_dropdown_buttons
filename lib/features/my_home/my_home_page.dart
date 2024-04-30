import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/impl/place_repository_impl.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/mock/place_repository_mock.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/display_selected_result_widget/display_selected_result_widget.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/test_dialog/test_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _mockFlavor = 'devmock';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const flavor = String.fromEnvironment('flavor', defaultValue: _mockFlavor);
    const isMockEnv = flavor == _mockFlavor;
    return ProviderScope(
      overrides: [
        placeRepositoryProvider.overrideWith(
          isMockEnv ? PlaceRepositoryMock.new : PlaceRepositoryImpl.new,
        ),
      ],
      child: _Body(title: title),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CountriesDropdownMenuButton(),
            const SizedBox(height: 16),
            const StatesDropdownMenuButton(),
            const SizedBox(height: 16),
            const DisplaySelectedResultWidget(),
            ElevatedButton(
              onPressed: () {
                showTestDialog(
                  context,
                  // parentContainer: ProviderScope.containerOf(context),
                  initValue: const TestDialogState(
                    isMarried: true,
                    firstName: 'Calvin',
                  ),
                  onResult: (result) async {
                    await Future<void>.delayed(const Duration(seconds: 2));
                    print('Result: $result');
                  },
                );
              },
              child: const Text('Test dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
