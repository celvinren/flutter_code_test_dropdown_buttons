import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/impl/place_repository_impl.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/mock/place_repository_mock.dart';
import 'package:flutter_code_test_dropdown_buttons/core/repositories/place_repository.dart';
import 'package:flutter_code_test_dropdown_buttons/features/error_reporter/error_reporter.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/my_home_page.dart';
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
        home: const ErrorReporterWrapper(
          child: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}
