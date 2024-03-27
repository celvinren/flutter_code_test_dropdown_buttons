import 'package:flutter/material.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/countires_dropdown_menu/countries_dropdown_menu.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/display_selected_result_widget/display_selected_result_widget.dart';
import 'package:flutter_code_test_dropdown_buttons/features/my_home/widgets/state_dropdown_menu/states_dropdown_menu.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CountriesDropdownMenuButton(),
            SizedBox(height: 16),
            StatesDropdownMenuButton(),
            SizedBox(height: 16),
            DisplaySelectedResultWidget(),
          ],
        ),
      ),
    );
  }
}
