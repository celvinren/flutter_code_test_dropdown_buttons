// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_dropdown_menu_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCountriesHash() => r'59f03909f3b422d4dc4901a20772168d5aae647c';

/// See also [fetchCountries].
@ProviderFor(fetchCountries)
final fetchCountriesProvider =
    AutoDisposeFutureProvider<List<Country>>.internal(
  fetchCountries,
  name: r'fetchCountriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchCountriesHash,
  dependencies: <ProviderOrFamily>[placeRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    placeRepositoryProvider,
    ...?placeRepositoryProvider.allTransitiveDependencies
  },
);

typedef FetchCountriesRef = AutoDisposeFutureProviderRef<List<Country>>;
String _$selectedCountryHash() => r'2cf619a2f77f58faa5797bfee0b940520ca29524';

/// See also [SelectedCountry].
@ProviderFor(SelectedCountry)
final selectedCountryProvider =
    AutoDisposeNotifierProvider<SelectedCountry, Country?>.internal(
  SelectedCountry.new,
  name: r'selectedCountryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedCountryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCountry = AutoDisposeNotifier<Country?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
