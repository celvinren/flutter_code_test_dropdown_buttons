// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'states_dropdown_menu_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchStatesHash() => r'e0f8ac69023a775f3b57f229e1323e0e6399ca2d';

/// See also [fetchStates].
@ProviderFor(fetchStates)
final fetchStatesProvider = AutoDisposeFutureProvider<List<State>>.internal(
  fetchStates,
  name: r'fetchStatesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchStatesHash,
  dependencies: <ProviderOrFamily>[
    selectedCountryProvider,
    placeRepositoryProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    selectedCountryProvider,
    ...?selectedCountryProvider.allTransitiveDependencies,
    placeRepositoryProvider,
    ...?placeRepositoryProvider.allTransitiveDependencies
  },
);

typedef FetchStatesRef = AutoDisposeFutureProviderRef<List<State>>;
String _$selectedStateHash() => r'5eb68fe5625950ce36c2948d4d41941aa95056e2';

/// See also [SelectedState].
@ProviderFor(SelectedState)
final selectedStateProvider =
    AutoDisposeNotifierProvider<SelectedState, State?>.internal(
  SelectedState.new,
  name: r'selectedStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedStateHash,
  dependencies: <ProviderOrFamily>[fetchStatesProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    fetchStatesProvider,
    ...?fetchStatesProvider.allTransitiveDependencies
  },
);

typedef _$SelectedState = AutoDisposeNotifier<State?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
