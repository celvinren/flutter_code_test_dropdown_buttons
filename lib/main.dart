import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/core/flavor/flavor_state.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/impl/place_repository_impl.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/mock/place_repository_mock.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _mockFlavor = 'devmock';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

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
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(flavorConfigProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Hello, World!'),
              ),
            );
          },
          child: const Text('Show SnackBar'),
        ),
      ),
    );
  }
}
