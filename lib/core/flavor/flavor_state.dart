import 'package:flutter_code_test_dropdown_buttons/core/flavor/flavor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flavor_state.g.dart';

@Riverpod(keepAlive: true)
FlavorConfig flavorConfig(FlavorConfigRef ref) {
  return FlavorConfig(
    flavor: Flavor.fromString(
      const String.fromEnvironment('flavor'),
    ),
    baseApiUrl: const String.fromEnvironment('base_api_url'),
    apiKey: const String.fromEnvironment('api_key'),
  );
}
