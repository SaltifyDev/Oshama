import 'dart:async';

import 'package:oshama/core/context.dart';
import 'package:oshama/model/milky_types.dart';

class ApiHandler {
  final ApiEndpoint api;
  final FutureOr<dynamic> Function(Context ctx, dynamic request) handle;

  ApiHandler(this.api, this.handle);
}

ApiHandler defineHandler<T, R>({
  required ApiEndpoint<T, R> api,
  required FutureOr<R> Function(Context ctx, T request) handleFunc,
}) {
  return ApiHandler(api, (ctx, request) => handleFunc(ctx, request));
}
