// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_dialog.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$initDialogStateHash() => r'bc3301fa6187a8400a9c6519f1cee85607546c42';

/// See also [initDialogState].
@ProviderFor(initDialogState)
final initDialogStateProvider = AutoDisposeProvider<TestDialogState>.internal(
  initDialogState,
  name: r'initDialogStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$initDialogStateHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef InitDialogStateRef = AutoDisposeProviderRef<TestDialogState>;
String _$testDialogViewModelHash() =>
    r'0c49a2683ce4162e8639734a9792e28c1b469170';

/// See also [TestDialogViewModel].
@ProviderFor(TestDialogViewModel)
final testDialogViewModelProvider =
    AutoDisposeNotifierProvider<TestDialogViewModel, TestDialogState>.internal(
  TestDialogViewModel.new,
  name: r'testDialogViewModelProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$testDialogViewModelHash,
  dependencies: <ProviderOrFamily>[initDialogStateProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    initDialogStateProvider,
    ...?initDialogStateProvider.allTransitiveDependencies
  },
);

typedef _$TestDialogViewModel = AutoDisposeNotifier<TestDialogState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
