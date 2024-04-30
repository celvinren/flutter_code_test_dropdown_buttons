import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_dialog.freezed.dart';
part 'test_dialog.g.dart';

@freezed
class TestDialogState with _$TestDialogState {
  const factory TestDialogState({
    String? firstName,
    String? lastName,
    bool? isMarried,
    @Default(false) bool isLoading,
  }) = _TestDialogState;
}

@Riverpod(dependencies: [])
TestDialogState initDialogState(InitDialogStateRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [initDialogState])
class TestDialogViewModel extends _$TestDialogViewModel {
  @override
  TestDialogState build() {
    final initState = ref.watch(initDialogStateProvider);
    return initState;
  }

  void setFirstName(String value) {
    state = state.copyWith(firstName: value);
  }

  void setLastName(String value) {
    state = state.copyWith(lastName: value);
  }

  void setIsMarried(bool value) {
    state = state.copyWith(isMarried: value);
  }

  Future<void> performAction(
    Future<void> Function(TestDialogState)? onResult,
  ) async {
    state = state.copyWith(isLoading: true);
    await onResult?.call(state);
    state = state.copyWith(isLoading: false);
  }
}

Future<void> showTestDialog(
  BuildContext context, {
  TestDialogState? initValue,
  Future<void> Function(TestDialogState)? onResult,
  ProviderContainer? parentContainer,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) {
      return _Dialog(
        initValue,
        onResult: onResult,
        parentContainer: parentContainer,
      );
    },
  );
}

class _Dialog extends ConsumerWidget {
  const _Dialog(
    this.initValue, {
    this.onResult,
    this.parentContainer,
  });
  final TestDialogState? initValue;
  final Future<void> Function(TestDialogState)? onResult;
  final ProviderContainer? parentContainer;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      parent: parentContainer,
      overrides: [
        initDialogStateProvider.overrideWithValue(
          initValue ?? const TestDialogState(),
        ),
      ],
      child: Dialog(
        child: _Body(onResult: onResult),
      ),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body({this.onResult});
  final Future<void> Function(TestDialogState)? onResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCountry = ref.watch(selectedCountryProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth * 0.8,
          height: constraints.maxHeight * 0.8,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const _FirstNameTextField(),
                    const _LastNameTextField(),
                    const _IsMarriedSelection(),
                    ElevatedButton(
                      onPressed: () async {
                        if (onResult != null) {
                          await ref
                              .read(testDialogViewModelProvider.notifier)
                              .performAction(onResult);
                        }
                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
              if (ref.watch(
                testDialogViewModelProvider.select((value) => value.isLoading),
              ))
                const Center(child: CircularProgressIndicator()),
            ],
          ),
        );
      },
    );
  }
}

class _FirstNameTextField extends ConsumerWidget {
  const _FirstNameTextField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onChanged: (value) {
        ref.read(testDialogViewModelProvider.notifier).setFirstName(value);
      },
      decoration: const InputDecoration(labelText: 'First name'),
      initialValue: ref.watch(
        testDialogViewModelProvider.select((value) => value.firstName),
      ),
    );
  }
}

class _LastNameTextField extends ConsumerWidget {
  const _LastNameTextField();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onChanged: (value) {
        ref.read(testDialogViewModelProvider.notifier).setLastName(value);
      },
      decoration: const InputDecoration(labelText: 'Last name'),
      initialValue: ref.watch(
        testDialogViewModelProvider.select((value) => value.lastName),
      ),
    );
  }
}

class _IsMarriedSelection extends ConsumerWidget {
  const _IsMarriedSelection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Checkbox(
          value: ref.watch(
            testDialogViewModelProvider
                .select((value) => value.isMarried ?? false),
          ),
          onChanged: (value) {
            ref
                .read(testDialogViewModelProvider.notifier)
                .setIsMarried(value ?? false);
          },
        ),
        const Text('Is married'),
      ],
    );
  }
}
