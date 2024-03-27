import 'package:dio/dio.dart';
import 'package:flutter_code_test_dropdown_buttons/core/flavor/flavor_state.dart';
import 'package:flutter_code_test_dropdown_buttons/core/networking/auth_interceptor.dart';
import 'package:flutter_code_test_dropdown_buttons/core/networking/dio_error_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  /// This is the `flavorConfigProvider` that we created in the previous step.
  /// This provider is used to get the base API URL based on the flavor.
  final flavorConfig = ref.watch(flavorConfigProvider);

  final dioInstance = Dio(
    BaseOptions(
      baseUrl: flavorConfig.baseApiUrl,
      // connectTimeout: const Duration(seconds: 5),
      // receiveTimeout: const Duration(seconds: 5),
    ),
  )..interceptors.addAll(
      [
        DioErrorInterceptor(),
        AuthInterceptor(ref: ref),
      ],
    );

  return dioInstance;
}
