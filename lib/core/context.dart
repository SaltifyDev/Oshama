import 'package:oshama/core/network/handler.dart';
import 'package:oshama/core/network/server.dart';

class Context {
  final MilkyHttpServer server;
  final Map<String, ApiHandler> handlerMap;

  Context({
    required this.server,
    // more context fields
    required List<ApiHandler> handlers,
  }) : handlerMap = ({
         for (var handler in handlers) handler.api.endpoint: handler,
       }) {
    server.context = this;
  }
}
