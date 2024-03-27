import 'package:dio/dio.dart';
import 'package:flutter_code_test_dropdown_buttons/core/flavor/flavor_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.ref,
  });

  final Ref ref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final flavorConfig = ref.watch(flavorConfigProvider);
    options.headers['x-api-key'] = flavorConfig.apiKey;

    /// This is where you can add the token to the headers.
    ///
    // final token = await getAccessToken();
    // if (token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    return handler.next(options);
  }
}
