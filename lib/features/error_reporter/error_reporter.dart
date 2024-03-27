import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorReporterWrapper extends HookConsumerWidget {
  const ErrorReporterWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        FlutterError.onError = (FlutterErrorDetails details) {
          FlutterError.presentError(details);
          final error = details.exception;
          switch (error) {
            case DioException():
              debugPrint('DioException: ${error.message}');

            /// Can handle error here like pop dialog or show snackbar

            case Object:
              debugPrint('Object: $error');
            case Exception:
              debugPrint('Exception: $error');

            /// Add more other errors handling here
          }
        };
        return null;
      },
      [],
    );
    return child;
  }
}
