import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/features/error_reporter/error_reporter.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/my_home_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ErrorReporterWrapper(
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
